/**
 * Tiny HTML builder: src/html/pages/*.html → ./*.html
 *
 *   <!-- @include name -->                 inserts src/html/partials/name.html
 *   <!-- @include name {"key": "value"} --> same, with params ({{key}} inside the partial)
 *   {{icon:name}}                          inline SVG from src/html/icons/name.svg
 *
 * Header params: {"solid": true} — white header from the start,
 *                {"current": "about.html"} — highlights the active menu item.
 *
 * Usage: node tools/build-html.mjs
 */
import { readFileSync, writeFileSync, readdirSync, existsSync } from 'node:fs';
import { join, dirname } from 'node:path';
import { fileURLToPath } from 'node:url';

const ROOT = join(dirname(fileURLToPath(import.meta.url)), '..');
const SRC = join(ROOT, 'src', 'html');
const read = (file) => readFileSync(file, 'utf8');

const INCLUDE_RE = /[ \t]*<!--\s*@include\s+([\w-]+)(\s+\{[\s\S]*?\})?\s*-->/g;

function applyHeader(html, params) {
  let out = html;
  if (params.solid) out = out.replace('data-header>', 'data-header data-header-solid>');
  if (params.current) {
    out = out.replace(
      `class="nav__link" href="${params.current}"`,
      `class="nav__link is-current" href="${params.current}" aria-current="page"`,
    );
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

const pages = readdirSync(join(SRC, 'pages')).filter((f) => f.endsWith('.html'));
for (const page of pages) {
  const html = inlineIcons(render(read(join(SRC, 'pages', page))));
  const leftover = html.match(/\{\{[^}]+\}\}|@include/);
  if (leftover) throw new Error(`${page}: unresolved "${leftover[0]}"`);
  writeFileSync(join(ROOT, page), html);
  console.log(`built ${page}`);
}
