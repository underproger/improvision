/**
 * HTML builder: src/html/pages/*.html → ./*.html (UA), ./en/*.html, ./ru/*.html
 *
 * Templates
 *   <!-- @include name -->                  inserts src/html/partials/name.html
 *   <!-- @include name {"key": "value"} -->  same, with params ({{key}} inside the partial)
 *   {{icon:name}}                           inline SVG from src/html/icons/name.svg
 *
 *   Header params: {"solid": true} — white header from the start,
 *                  {"current": "about.html"} — highlights the active menu item.
 *   Service sidebar: <!-- @include service-aside {"current": "service-x.html"} -->
 *
 * Translations
 *   Ukrainian is the source. EN/RU pages are produced from the same markup:
 *   every text fragment (and alt/title/placeholder/aria-label/meta texts, JSON-LD strings)
 *   is looked up in src/i18n/<lang>.json by its exact Ukrainian text.
 *   A "fragment" is a run of text + simple inline tags (<br>, <b>, <small>, <sup>…),
 *   so a translation may keep or change inline markup.
 *   Missing strings fall back to Ukrainian and are listed in src/i18n/missing.<lang>.json.
 *
 * Usage: node tools/build-html.mjs [--strict]
 */
import { readFileSync, writeFileSync, readdirSync, existsSync, mkdirSync, rmSync } from 'node:fs';
import { join, dirname } from 'node:path';
import { fileURLToPath } from 'node:url';
import { parse } from 'node-html-parser';

const ROOT = join(dirname(fileURLToPath(import.meta.url)), '..');
const SRC = join(ROOT, 'src', 'html');
const I18N = join(ROOT, 'src', 'i18n');
const SITE = 'https://improvision.com.ua/';
const STRICT = process.argv.includes('--strict');

const LANGS = {
  uk: { dir: '', label: 'UA', locale: 'uk_UA', mapsHl: 'uk' },
  en: { dir: 'en', label: 'EN', locale: 'en_US', mapsHl: 'en' },
  ru: { dir: 'ru', label: 'RU', locale: 'ru_UA', mapsHl: 'ru' },
};

const read = (file) => readFileSync(file, 'utf8');

// ---------------------------------------------------------------------------
// Templates
// ---------------------------------------------------------------------------
const INCLUDE_RE = /[ \t]*<!--\s*@include\s+([\w/-]+)(\s+\{[\s\S]*?\})?\s*-->/g;

function applyHeader(html, params) {
  let out = html;
  if (params.solid) out = out.replace('data-header>', 'data-header data-header-solid>');
  if (params.current) {
    out = out.replace(
      `class="nav__link" href="${params.current}"`,
      `class="nav__link is-current" href="${params.current}" aria-current="page"`,
    );
    // a page from the "Послуги" dropdown: highlight the dropdown toggle too
    const subLink = `<li><a href="${params.current}">`;
    if (out.includes(subLink)) {
      out = out
        .replace(subLink, `<li><a href="${params.current}" aria-current="page">`)
        .replace('class="nav__link nav__toggle"', 'class="nav__link nav__toggle is-current"');
    }
  }
  return out;
}

function render(template, params = {}, depth = 0) {
  if (depth > 10) throw new Error('Include depth exceeded');
  const withIncludes = template.replace(INCLUDE_RE, (_, name, json) => {
    const file = join(SRC, 'partials', `${name}.html`);
    if (!existsSync(file)) throw new Error(`Partial not found: ${name}`);
    const local = { ...params, ...(json ? JSON.parse(json) : {}) };
    let html = render(read(file), local, depth + 1).replace(/\n$/, '');
    if (name === 'header') html = applyHeader(html, local);
    if (name === 'service-aside' && local.current) {
      html = html.replace(`<li><a href="${local.current}">`, `<li class="is-current"><a href="${local.current}" aria-current="page">`);
    }
    return html;
  });
  return withIncludes.replace(/\{\{(\w+)\}\}/g, (m, key) => (key in params ? String(params[key]) : m));
}

function inlineIcons(html) {
  return html.replace(/\{\{icon:([\w-]+)\}\}/g, (_, name) => {
    const file = join(SRC, 'icons', `${name}.svg`);
    if (!existsSync(file)) throw new Error(`Icon not found: ${name}`);
    return read(file).trim();
  });
}

// ---------------------------------------------------------------------------
// Translation
// ---------------------------------------------------------------------------
const CYR = /[Ѐ-ӿ]/;
const norm = (s) => s.replace(/\s+/g, ' ').trim();
const SKIP_TAGS = new Set(['script', 'style', 'svg', 'template', 'noscript', 'code', 'pre']);
const INLINE_TAGS = new Set(['br', 'b', 'strong', 'i', 'em', 'small', 'sup', 'sub', 'span', 'abbr', 'u', 's', 'mark']);
const TEXT_ATTRS = ['alt', 'title', 'placeholder', 'aria-label', 'data-alt'];
const META_TEXT = new Set(['description', 'og:title', 'og:description', 'twitter:title', 'twitter:description']);

const isText = (n) => n.nodeType === 3;
const isEl = (n) => n.nodeType === 1;
const tagOf = (n) => (n.rawTagName || '').toLowerCase();

function isTransparent(n) {
  if (isText(n)) return true;
  if (!isEl(n)) return false;
  const tag = tagOf(n);
  if (!INLINE_TAGS.has(tag)) return false;
  if (tag !== 'br' && Object.keys(n.attributes).length) return false;
  return n.childNodes.every(isTransparent);
}

function makeTranslator(dict, missing, page) {
  const lookup = (key) => {
    if (Object.prototype.hasOwnProperty.call(dict, key)) return dict[key];
    if (!missing.has(key)) missing.set(key, new Set());
    missing.get(key).add(page);
    return null;
  };

  const translateRun = (parent, run) => {
    const html = run.map((n) => n.toString()).join('');
    if (!CYR.test(html)) return null;
    const key = norm(html);
    const value = lookup(key);
    if (value === null) return null;
    const lead = html.match(/^\s*/)[0];
    const trail = html.match(/\s*$/)[0];
    const nodes = parse(lead + value + trail).childNodes;
    nodes.forEach((n) => { n.parentNode = parent; });
    return nodes;
  };

  const translateAttrs = (el) => {
    for (const attr of TEXT_ATTRS) {
      const v = el.getAttribute && el.getAttribute(attr);
      if (v && CYR.test(v)) {
        const t = lookup(norm(v));
        if (t !== null) el.setAttribute(attr, t);
      }
    }
    if (tagOf(el) === 'meta') {
      const name = el.getAttribute('name') || el.getAttribute('property');
      const v = el.getAttribute('content');
      if (META_TEXT.has(name) && v && CYR.test(v)) {
        const t = lookup(norm(v));
        if (t !== null) el.setAttribute('content', t);
      }
    }
  };

  const walk = (el) => {
    translateAttrs(el);
    if (SKIP_TAGS.has(tagOf(el))) return;
    const out = [];
    let run = [];
    const flush = () => {
      if (!run.length) return;
      const replaced = translateRun(el, run);
      out.push(...(replaced || run));
      run = [];
    };
    for (const child of el.childNodes) {
      if (isTransparent(child)) {
        run.push(child);
      } else {
        flush();
        if (isEl(child)) walk(child);
        out.push(child);
      }
    }
    flush();
    el.childNodes = out;
  };

  const translateJson = (value, localizeUrl) => {
    if (typeof value === 'string') {
      if (value.startsWith(SITE)) return localizeUrl(value);
      if (CYR.test(value)) {
        const t = lookup(norm(value));
        return t === null ? value : t;
      }
      return value;
    }
    if (Array.isArray(value)) return value.map((v) => translateJson(v, localizeUrl));
    if (value && typeof value === 'object') {
      return Object.fromEntries(Object.entries(value).map(([k, v]) => [k, translateJson(v, localizeUrl)]));
    }
    return value;
  };

  return { walk, translateJson };
}

const pageUrl = (lang, page) => SITE + (LANGS[lang].dir ? `${LANGS[lang].dir}/` : '') + (page === 'index.html' ? '' : page);

function localize(html, lang, page, dict, missing) {
  const meta = LANGS[lang];
  const root = parse(html, { comment: true, blockTextElements: { script: true, style: true, pre: true, noscript: true } });
  const { walk, translateJson } = makeTranslator(dict, missing, page);

  // page URLs (not assets) move into the language folder
  const localizeUrl = (url) => {
    const path = url.slice(SITE.length);
    if (path.startsWith('assets/')) return url;
    return SITE + meta.dir + '/' + path;
  };

  root.querySelector('html').setAttribute('lang', lang);

  const head = root.querySelector('head');
  const body = root.querySelector('body');
  walk(head);
  walk(body);

  root.querySelectorAll('[href], [src], [srcset], [imagesrcset], [data-src]').forEach((el) => {
    for (const attr of ['href', 'src', 'data-src']) {
      const v = el.getAttribute(attr);
      if (v && v.startsWith('assets/')) el.setAttribute(attr, `../${v}`);
    }
    for (const attr of ['srcset', 'imagesrcset']) {
      const v = el.getAttribute(attr);
      if (v) el.setAttribute(attr, v.replace(/(^|,\s*)assets\//g, '$1../assets/'));
    }
  });

  const canonical = root.querySelector('link[rel="canonical"]');
  if (canonical) canonical.setAttribute('href', localizeUrl(canonical.getAttribute('href')));
  const ogUrl = root.querySelector('meta[property="og:url"]');
  if (ogUrl) ogUrl.setAttribute('content', localizeUrl(ogUrl.getAttribute('content')));
  const ogLocale = root.querySelector('meta[property="og:locale"]');
  if (ogLocale) ogLocale.setAttribute('content', meta.locale);

  root.querySelectorAll('iframe[src]').forEach((el) => {
    el.setAttribute('src', el.getAttribute('src').replace(/([?&])hl=uk\b/, `$1hl=${meta.mapsHl}`));
  });

  root.querySelectorAll('script[type="application/ld+json"]').forEach((el) => {
    const data = JSON.parse(el.rawText);
    const indent = (el.rawText.match(/\n(\s*)\S/) || [, '  '])[1];
    const json = JSON.stringify(translateJson(data, localizeUrl), null, 2)
      .split('\n')
      .map((l) => indent + l)
      .join('\n');
    el.set_content(`\n${json}\n  `);
  });

  return root.toString();
}

// Service hero titles sit in a narrow column: pick a smaller size for long
// names / long words (per language, after translation).
function fitHeroTitles(html) {
  return html.replace(/<h1 class="service-hero__title[^"]*">([\s\S]*?)<\/h1>/g, (m, inner) => {
    const text = inner.replace(/<[^>]+>/g, ' ').replace(/&nbsp;/g, ' ').replace(/\s+/g, ' ').trim();
    const longestWord = Math.max(...text.split(' ').map((w) => w.length));
    let cls = 'service-hero__title';
    if (longestWord > 15) cls += ' service-hero__title--xlong';
    else if (longestWord > 12 || text.length > 24) cls += ' service-hero__title--long';
    return `<h1 class="${cls}">${inner}</h1>`;
  });
}

// ---------------------------------------------------------------------------
// Build
// ---------------------------------------------------------------------------
function langParams(lang, page) {
  const p = { lang, lang_label: LANGS[lang].label };
  for (const target of Object.keys(LANGS)) {
    const from = LANGS[lang].dir ? '../' : '';
    const to = LANGS[target].dir ? `${LANGS[target].dir}/` : '';
    p[`href_${target}`] = target === lang ? page : from + to + page;
    p[`cur_${target}`] = target === lang ? ' aria-current="true"' : '';
    p[`url_${target}`] = pageUrl(target, page);
  }
  return p;
}

const dicts = {};
for (const lang of Object.keys(LANGS)) {
  if (lang === 'uk') continue;
  const file = join(I18N, `${lang}.json`);
  dicts[lang] = existsSync(file) ? JSON.parse(read(file)) : {};
}

const pages = readdirSync(join(SRC, 'pages')).filter((f) => f.endsWith('.html')).sort();
let totalMissing = 0;

for (const lang of Object.keys(LANGS)) {
  const outDir = LANGS[lang].dir ? join(ROOT, LANGS[lang].dir) : ROOT;
  if (!existsSync(outDir)) mkdirSync(outDir, { recursive: true });
  const missing = new Map();

  for (const page of pages) {
    let html = inlineIcons(render(read(join(SRC, 'pages', page)), langParams(lang, page)));
    const leftover = html.match(/\{\{[^}]+\}\}|@include/);
    if (leftover) throw new Error(`${page}: unresolved "${leftover[0]}"`);
    if (lang !== 'uk') html = localize(html, lang, page, dicts[lang], missing);
    writeFileSync(join(outDir, page), fitHeroTitles(html));
  }

  if (lang !== 'uk') {
    const report = join(I18N, `missing.${lang}.json`);
    if (missing.size) {
      const obj = Object.fromEntries([...missing].map(([k, v]) => [k, [...v].join(', ')]));
      writeFileSync(report, `${JSON.stringify(obj, null, 2)}\n`);
    } else if (existsSync(report)) {
      rmSync(report);
    }
    totalMissing += missing.size;
    console.log(`${lang}: ${pages.length} pages, ${missing.size} missing strings${missing.size ? ` → src/i18n/missing.${lang}.json` : ''}`);
  } else {
    console.log(`uk: ${pages.length} pages`);
  }
}

if (STRICT && totalMissing) {
  console.error(`✖ ${totalMissing} missing translations`);
  process.exit(1);
}
