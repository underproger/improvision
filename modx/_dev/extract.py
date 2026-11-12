"""
Extract content of the built static site (UA root, /en/, /ru/) into data.json for the MODX importer.
Every resource: key, parent, template, alias, menuindex, flags + per-language fields and TVs.
"""
import os
HERE = os.path.dirname(os.path.abspath(__file__))
REPO = os.path.abspath(os.path.join(HERE, '..', '..')) + '/'
SITE = os.path.join(HERE, '..', 'site') + '/'
import json, re, copy
from urllib.parse import unquote, urlparse, parse_qs
from bs4 import BeautifulSoup, NavigableString, Tag

ROOT = REPO
LANGS = {'uk': '', 'en': 'en/', 'ru': 'ru/'}
NBSP = ' '


def soup(lang, page):
    return BeautifulSoup(open(ROOT + LANGS[lang] + page, encoding='utf-8').read(), 'lxml')


def html_of(el):
    """inner HTML, entities decoded (&nbsp; becomes a real NBSP)."""
    return ''.join(str(c) for c in el.contents).strip()


def ml(el):
    """multi-line text: <br …> + following space become newlines; other inline tags kept."""
    s = html_of(el)
    s = re.sub(r'<br[^>]*/?>\s*', '\n', s)
    return re.sub(r'[ \t]+', ' ', s).strip()


def text(el):
    return re.sub(r'\s+', ' ', el.get_text()).strip() if el else ''


def img_src(src):
    s = src.lstrip('/')
    s = re.sub(r'^(\.\./)+', '', s)
    return s


def clean_rich(nodes):
    """rich-text HTML for content fields: drop data-reveal/data-stagger and class="title" on h2 (added back by impProse)."""
    out = []
    for n in nodes:
        if isinstance(n, NavigableString):
            if n.strip():
                out.append(str(n).strip())
            continue
        n = copy.copy(n)
        for el in [n] + n.find_all(True):
            for a in ('data-reveal', 'data-stagger'):
                if a in el.attrs:
                    del el.attrs[a]
            if el.name == 'h2' and el.get('class') == ['title']:
                del el.attrs['class']
            if el.name == 'img' and el.get('src'):
                el['src'] = '/' + img_src(el['src'])
        out.append(str(n))
    return '\n'.join(out)


def meta(s):
    def m(sel, attr='content'):
        el = s.select_one(sel)
        return el.get(attr, '').strip() if el else ''
    return {
        'seo_title': text(s.title),
        'description': m('meta[name=description]'),
        'og_title': m('meta[property="og:title"]'),
        'og_description': m('meta[property="og:description"]'),
    }


def ld(s):
    for sc in s.select('script[type="application/ld+json"]'):
        data = json.loads(sc.string)
        for obj in (data if isinstance(data, list) else [data]):
            yield obj


def crumb_current(s):
    return text(s.select_one('.breadcrumbs [aria-current="page"]'))


def nav_title(s, href):
    a = s.select_one(f'.nav__sub a[href="{href}"]') or s.select_one(f'.nav__link[href="{href}"]')
    return html_of(a) if a else ''


resources = []
by_key = {}


def res(key, **kw):
    r = {'key': key, 'parent': None, 'template': 'Текстова сторінка', 'alias': key, 'menuindex': 0,
         'published': 1, 'hidemenu': 0, 'isfolder': 1, 'class_key': 'doc', 'contexts': ['uk', 'en', 'ru'],
         'publishedon': None, 'lang': {l: {'fields': {}, 'tvs': {}} for l in LANGS}}
    r.update(kw)
    resources.append(r)
    by_key[key] = r
    return r


def put(r, lang, fields=None, tvs=None):
    r['lang'][lang]['fields'].update(fields or {})
    r['lang'][lang]['tvs'].update(tvs or {})


# ============================================================ resources
home = res('home', template='Головна', alias='index', menuindex=0, hidemenu=1)
about = res('about', template='Про нас', alias='about', menuindex=1)
news = res('news', template='Текстова сторінка', alias='news', menuindex=2, published=0)
services = res('services', template='Текстова сторінка', alias='services', menuindex=3, class_key='weblink')
projects = res('projects', template='Проєкти', alias='projects', menuindex=4)
blog = res('blog', template='Блог', alias='blog', menuindex=5)
vacancies = res('vacancies', template='Текстова сторінка', alias='vacancies', menuindex=6, published=0, hidemenu=1)
contacts = res('contacts', template='Контакти', alias='contacts', menuindex=7)
privacy = res('privacy', template='Текстова сторінка', alias='privacy', menuindex=8, hidemenu=1)
terms = res('terms', template='Текстова сторінка', alias='terms', menuindex=9, hidemenu=1)
notfound = res('404', template='Текстова сторінка', alias='404', menuindex=10, hidemenu=1)
globals_ = res('globals', template='Загальні блоки', alias='globals', menuindex=11, published=0, hidemenu=1)
lead = res('lead', template='Заявка (обробник форм)', alias='lead', menuindex=12, hidemenu=1, isfolder=0,
           contexts=['uk'], content_type='JSON')

SVC = [  # menu order
    ('construction', 'service-construction.html'), ('facades', 'service-facades.html'),
    ('entrance', 'service-entrance.html'), ('outdoor', 'service-outdoor.html'),
    ('interior', 'service-interior.html'), ('design', 'service-design.html'),
    ('renovation', 'service-renovation.html'),
]
for i, (k, f) in enumerate(SVC):
    res('svc-' + k, parent='services', template='Послуга', alias=k, menuindex=i)

PRJ = [  # (key, alias, card image file)
    ('kfc', 'kfc-artmall', 'project-kfc.jpg'), ('lego', 'lego-lavina-mall', 'project-lego.jpg'),
    ('carnegie', 'carnegie-center', 'project-carnegie.jpg'), ('intimissimi', 'intimissimi-ocean-plaza', 'project-intimissimi.jpg'),
    ('calzedonia', 'calzedonia-domosfera', 'project-calzedonia.jpg'), ('globus', 'globus-bank', 'project-globus.jpg'),
]
for i, (k, alias, _) in enumerate(PRJ):
    res('prj-' + k, parent='projects', template='Проєкт', alias=alias, menuindex=i)

POSTS = [  # key, alias, title (UA, to find cards), category, card image, head image, featured
    ('turnkey', 'turnkey-store', 'Що входить у будівництво магазину', 'construction', 'project-intimissimi.jpg', 'kfc-artmall-3.jpg', 1, '2026-06-18 10:00'),
    ('facade', 'ventilated-facade-for-mall', 'Як обрати систему вентильованого фасаду для ТРЦ', 'facades', 'project-kfc.jpg', 'blog-facade.jpg', 1, '2026-06-12 10:00'),
    ('entrance', 'entrance-group-timing', 'Строки монтажу вхідної групи: від чого залежать', 'construction', 'project-lego.jpg', 'project-globus.jpg', 0, '2026-06-05 10:00'),
    ('signage', 'letters-or-lightbox', 'Обʼємні букви чи лайтбокс: що обрати для вивіски', 'ads', 'project-carnegie.jpg', 'blog-drawings.jpg', 1, '2026-05-28 10:00'),
]
for i, (k, alias, *_rest) in enumerate(POSTS):
    res('post-' + k, parent='blog', template='Стаття', alias=alias, menuindex=i, publishedon=POSTS[i][7])

PAGE_OF = {'home': 'index.html', 'about': 'about.html', 'projects': 'projects.html', 'blog': 'blog.html',
           'contacts': 'contact.html', 'prj-kfc': 'project.html', 'post-turnkey': 'article.html'}
for k, f in SVC:
    PAGE_OF['svc-' + k] = f

for lang in LANGS:
    S = {name: soup(lang, name) for name in set(PAGE_OF.values())}
    sh = S['index.html']

    # ---------------------------------------------------------------- titles from the menu / breadcrumbs
    put(home, lang, {'pagetitle': text(S['about.html'].select_one('.breadcrumbs li a'))}, meta(sh))
    put(about, lang, {'pagetitle': nav_title(sh, 'about.html')}, meta(S['about.html']))
    put(news, lang, {'pagetitle': nav_title(sh, 'news.html')})
    put(services, lang, {'pagetitle': text(sh.select_one('.nav__toggle'))})
    put(projects, lang, {'pagetitle': nav_title(sh, 'projects.html')}, meta(S['projects.html']))
    put(blog, lang, {'pagetitle': nav_title(sh, 'blog.html')}, meta(S['blog.html']))
    put(contacts, lang, {'pagetitle': nav_title(sh, 'contact.html')}, meta(S['contact.html']))
    put(vacancies, lang, {'pagetitle': text(sh.select_one('.footer__menu a[href="vacancies.html"]'))})
    put(privacy, lang, {'pagetitle': text(sh.select_one('.footer__legal a[href="privacy.html"]'))})
    put(terms, lang, {'pagetitle': text(sh.select_one('.footer__legal a[href="terms.html"]'))})
    put(globals_, lang, {'pagetitle': {'uk': 'Загальні блоки', 'en': 'Shared blocks', 'ru': 'Общие блоки'}[lang]})
    put(lead, lang, {'pagetitle': 'Заявка'})

    # ---------------------------------------------------------------- HOME
    hero = sh.select_one('.hero')
    put(home, lang, {'introtext': html_of(hero.select_one('.hero__text'))}, {
        'h1': ml(hero.select_one('.hero__title')),
        'image': 'assets/img/photos/hero.jpg', 'image_960': 'assets/img/photos/hero-960.jpg',
        'image_mobile': 'assets/img/photos/hero-mobile.jpg', 'image_alt': hero.select_one('.hero__bg')['alt'],
        'hero_features': [{'icon': img_src(li.img['src']), 'text': ml(li.span)} for li in hero.select('.hero__feature')],
        'ld_description': next(o for o in ld(sh) if o.get('@type') == 'GeneralContractor')['description'],
        'about_title': ml(sh.select_one('#about-title')),
        'about_lead': html_of(sh.select_one('.about__lead')),
        'about_text': html_of(sh.select('.about__content > p')[1]),
        'services_title': ml(sh.select_one('#services-title')),
        'projects_title': html_of(sh.select_one('#projects-title')),
        'stats_title': ml(sh.select_one('#stats-title')),
        'stats_text': html_of(sh.select_one('.stats__text')),
    })
    home['lang'][lang]['fields']['longtitle'] = ''

    # ---------------------------------------------------------------- GLOBALS (header/footer/shared blocks)
    org = next(o for o in ld(sh) if o.get('@type') == 'GeneralContractor')
    stats = []
    for it in sh.select('.stats__grid .stats__item'):
        dd = it.select_one('.stats__value')
        unit = dd.select_one('small')
        stats.append({'label': ml(it.select_one('.stats__label')), 'value': dd.select_one('[data-count]')['data-count'],
                      'plus': '1' if '+' in dd.get_text() else '', 'unit': unit.get_text().replace('2', '²') if unit else ''})
    put(globals_, lang, {}, {
        'phone': text(sh.select_one('.header__phone')).replace(NBSP, ' '),
        'email': text(sh.select_one('.footer__contact a[href^="mailto:"]')),
        'address': html_of(sh.select_one('.footer__contact address')),
        'map_street': org['address']['streetAddress'],
        'map_city': org['address']['addressLocality'],
        'socials': [{'title': text(a), 'url': a['href']} for a in sh.select('.socials__link')],
        'brands_title': html_of(sh.select_one('#brands-title')),
        'brands': [{'image': img_src(i['src']), 'alt': i['alt']} for i in sh.select('.brands__item img')],
        'steps': [{'icon': img_src(li.img['src']), 'title': html_of(li.h3), 'text': html_of(li.p)} for li in sh.select('.about__cards .step-card')],
        'why_title': ml(sh.select_one('#why-title')),
        'why_bg': img_src(sh.select_one('.why__bg')['src']),
        'why': [{'title': html_of(li.h3), 'text': html_of(li.p)} for li in sh.select('.why-card')],
        'stats': stats,
        'contact_title': html_of(sh.select_one('#contact-title')),
        'contact_text': html_of(sh.select_one('.contact__text')),
        'contact_image': img_src(sh.select_one('.contact__media img')['src']),
        'contact_image_alt': sh.select_one('.contact__media img')['alt'],
    })

    # ---------------------------------------------------------------- ABOUT
    sa = S['about.html']
    intro_ps = sa.select('.about-intro__content > p')
    hist = []
    for p in sa.select('.history__panel'):
        imgs = p.select('.history__media img')
        hist.append({'year': text(p.select_one('.history__year')), 'caption': html_of(p.select_one('.history__caption')),
                     'image1': img_src(imgs[0]['src']) if imgs else '', 'alt1': imgs[0].get('alt', '') if imgs else '',
                     'image2': img_src(imgs[1]['src']) if len(imgs) > 1 else '', 'alt2': imgs[1].get('alt', '') if len(imgs) > 1 else ''})
    put(about, lang, {'introtext': html_of(intro_ps[0]), 'content': '\n'.join(str(p) for p in intro_ps[1:])}, {
        'h1': ml(sa.select_one('.page-head__title')),
        'image': img_src(sa.select_one('.page-head__media img')['src']),
        'image_alt': sa.select_one('.page-head__media img')['alt'],
        'intro_title': ml(sa.select_one('#intro-title')),
        'mark_image': img_src(sa.select_one('.about-intro__mark image')['href']),
        'mark_image_alt': sa.select_one('.about-intro__mark svg')['aria-label'],
        'process_title': html_of(sa.select_one('#process-title')),
        'history_title': html_of(sa.select_one('#history-title')),
        'history': hist,
        'history_soon': text(sa.select_one('.history__tab--soon')),
        'team_title': ml(sa.select_one('#team-title')),
        'team_text': html_of(sa.select_one('.team__text')),
        'team': [{'label': ml(i.dt), 'value': i.select_one('[data-count]')['data-count']} for i in sa.select('.team__item')],
    })

    # ---------------------------------------------------------------- SERVICES
    cards = {c.select_one('a')['href']: (i, c) for i, c in enumerate(sh.select('.service-card'))}
    for k, f in SVC:
        r = by_key['svc-' + k]
        s = S[f]
        art = s.select_one('.service-article')
        parts, cur = {'a': [], 'b': [], 'c': []}, 'a'
        check = stages = stages_title = mats = mats_title = mats_lead = None
        callout = ''
        kids = [c for c in art.children if isinstance(c, Tag)]
        for idx, c in enumerate(kids):
            cls = c.get('class') or []
            if 'checklist-box' in cls:
                check, cur = c, 'b'
                continue
            if 'callout' in cls:
                callout, cur = ml(c.p), 'c'
                continue
            nxt = kids[idx + 1] if idx + 1 < len(kids) else None
            if c.name == 'h3' and nxt is not None and 'stages' in (nxt.get('class') or []):
                stages_title, cur = html_of(c), 'stages'
                continue
            if c.name == 'ol' and 'stages' in cls:
                stages, cur = c, 'mats'
                continue
            if cur == 'mats':
                if c.name == 'h3':
                    mats_title = html_of(c)
                elif 'prose__lead' in cls:
                    mats_lead = html_of(c)
                elif 'materials' in cls:
                    mats = c
                continue
            parts[cur].append(c)
        pi, card = cards[f]
        ld_svc = next(o for o in ld(s) if o.get('@type') == 'Service')
        mat_list = []
        aria = mats.select_one('[role=tablist]')['aria-label']
        for b in mats.select('.materials__item'):
            panel = mats.select_one('#' + b['aria-controls'])
            mat_list.append({'name': html_of(b.select_one('.materials__name')), 'text': html_of(b.select_one('.materials__text')),
                             'image': img_src(panel['src']), 'alt': panel['alt'], 'active': '1' if 'is-active' in b['class'] else ''})
        put(r, lang, {
            'pagetitle': crumb_current(s), 'menutitle': nav_title(sh, f), 'introtext': html_of(s.select_one('.service-hero__text')),
            'content': clean_rich(parts['a']),
        }, {**meta(s),
            'h1': ml(s.select_one('.service-hero__title')),
            'image': img_src(s.select_one('.service-hero__media img')['src']),
            'image_alt': s.select_one('.service-hero__media img')['alt'],
            'card_image': img_src(card.select_one('img')['src']), 'card_text': html_of(card.select_one('.service-card__text')),
            'home_order': str(pi + 1),
            'service_type': ld_svc.get('serviceType', ''),
            'checklist_title': html_of(check.select_one('.checklist-box__title')),
            'checklist': '\n'.join(html_of(li) for li in check.select('li')),
            'content2': clean_rich(parts['b']), 'callout': callout, 'content3': clean_rich(parts['c']),
            'stages_title': stages_title,
            'stages': [{'icon': img_src(li.select_one('img')['src']), 'title': html_of(li.h4), 'text': ml(li.p)} for li in stages.select('.stage')],
            'materials_title': mats_title, 'materials_lead': mats_lead or '',
            'materials_aria': aria if aria != mats_title else '',
            'materials': mat_list,
            '@related': [c.select_one('.project-card__brand').get_text().strip() for c in s.select('.projects--related .project-card')],
        })

    # ---------------------------------------------------------------- PROJECTS
    sp = S['projects.html']
    put(projects, lang, {'introtext': html_of(sp.select_one('.page-intro__text')),
                         'longtitle': html_of(sp.select_one('.page-intro__title'))})
    seen = {}
    for c in sp.select('.project-card'):
        brand = text(c.select_one('.project-card__brand'))
        if brand not in seen:
            seen[brand] = c
    kfc = S['project.html']
    specs_kfc = [(text(r.dt), text(r.dd)) for r in kfc.select('.specs__row')]
    labels = {'client': specs_kfc[0][0], 'location': specs_kfc[2][0], 'year': specs_kfc[5][0]}
    brand_order = list(seen)
    for (k, alias, cimg), brand in zip(PRJ, brand_order):
        c = seen[brand]
        r = by_key['prj-' + k]
        city, year = [x.strip() for x in text(c.select_one('.project-card__meta')).rsplit(',', 1)]
        title = html_of(c.select_one('.project-card__title'))
        tvs = {'brand': brand, 'city': city, 'year': year, 'category': c['data-category'],
               'card_image': img_src(c.img['src']), 'card_image_alt': c.img['alt']}
        fields = {'pagetitle': title}
        if k == 'kfc':
            body = kfc.select_one('.project-body__content')
            content_nodes = []
            for ch in body.children:
                if isinstance(ch, Tag) and 'checklist-box' in (ch.get('class') or []):
                    break
                content_nodes.append(ch)
            directions = []
            for t in body.select('.tags .tag'):
                href = t.get('href', '')
                svc_key = next((sk for sk, sf in SVC if sf == href), '')
                directions.append({'title': html_of(t), 'link': ('@svc-' + svc_key) if svc_key else ''})
            fields.update({'introtext': html_of(kfc.select_one('.project-hero__text')), 'content': clean_rich(content_nodes)})
            tvs.update(meta(kfc))
            tvs.update({
                'gallery': [{'image': img_src(b['data-src']), 'alt': b['data-alt']} for b in kfc.select('.gallery__thumb')],
                'checklist': '\n'.join(html_of(li) for li in body.select('.checklist li')),
                'directions': directions,
                'specs': [{'label': a, 'value': b} for a, b in specs_kfc],
            })
        else:
            suffix = {'uk': 'проєкт improvision', 'en': 'an improvision project', 'ru': 'проект improvision'}[lang]
            tvs.update({
                'specs': [{'label': labels['client'], 'value': brand}, {'label': labels['location'], 'value': city}, {'label': labels['year'], 'value': year}],
            })
            fields['description'] = f'{brand}: {title.replace(NBSP, " ")}, {city}, {year} — {suffix}.'
        put(r, lang, fields, tvs)

    # ---------------------------------------------------------------- BLOG
    sb = S['blog.html']
    put(blog, lang, {'introtext': html_of(sb.select_one('.page-intro__text')),
                     'longtitle': html_of(sb.select_one('.page-intro__title'))})
    # titles of the posts in this language, matched by position of the UA titles in the cards
    sa_uk = soup('uk', 'blog.html')
    uk_titles = [text(a) for a in sa_uk.select('.post-card__title a')]
    cards_lang = sb.select('.post-card')
    feats = sb.select('.featured-post')
    feats_uk = sa_uk.select('.featured-post')
    art = S['article.html']
    for i, (k, alias, uk_title, cat, cimg, himg, featured, date) in enumerate(POSTS):
        r = by_key['post-' + k]
        tv = {'post_category': cat, 'card_image': 'assets/img/photos/' + cimg, 'image': 'assets/img/photos/' + himg,
              'featured': '1' if featured else '', 'read_time': '', 'author': ''}
        if k == 'turnkey':
            head = art.select_one('.article-head')
            body = art.select_one('.article-body')
            nodes = [c for c in body.children if not (isinstance(c, Tag) and 'tags' in (c.get('class') or []))]
            tag_labels = [text(t) for t in body.select('.tags .tag')]
            fi = next(j for j, f in enumerate(feats_uk) if uk_title in text(f.select_one('.featured-post__title')))
            fields = {'pagetitle': html_of(head.select_one('.article-head__title')),
                      'introtext': html_of(head.select_one('.article-head__lead')), 'content': clean_rich(nodes)}
            tv.update(meta(art))
            tv.update({'image_alt': head.select_one('.article-head__media img')['alt'],
                       'author': text(head.select_one('.article-meta__item')),
                       'read_time': re.sub(r'\D', '', text(head.select_one('.article-meta__item:last-child'))),
                       '@tag_labels': tag_labels,
                       'featured_text': html_of(feats[fi].select_one('.featured-post__text'))})
        else:
            ci = next(j for j, t in enumerate(uk_titles) if uk_title in t)
            card = cards_lang[ci]
            fields = {'pagetitle': html_of(card.select_one('.post-card__title a')),
                      'introtext': html_of(card.select_one('.post-card__text'))}
            fields['description'] = text(card.select_one('.post-card__text'))
            tv['image_alt'] = ''
        put(r, lang, fields, tv)

    # ---------------------------------------------------------------- CONTACTS
    sc = S['contact.html']
    iframe = sc.select_one('.map__iframe')
    q = parse_qs(urlparse(iframe['src']).query)['q'][0]
    ccards = []
    for li in sc.select('.contact-card'):
        v = li.select_one('.contact-card__value')
        ccards.append({'icon': img_src(li.img['src']), 'title': html_of(li.h2), 'value': ml(v),
                       'link': v.get('href', '') if v.name == 'a' else '', 'address': '1' if v.name == 'address' else '',
                       'note': html_of(li.select_one('.contact-card__note'))})
    put(contacts, lang, {'introtext': html_of(sc.select_one('.page-intro__text')), 'longtitle': html_of(sc.select_one('.page-intro__title'))}, {
        'contact_cards': ccards,
        'visit_title': html_of(sc.select_one('.visit-card__title')), 'visit_badge': html_of(sc.select_one('.visit-card__badge')),
        'visit_text': html_of(sc.select_one('.visit-card__text')),
        'depts_title': html_of(sc.select_one('.depts__title')),
        'depts': [{'label': html_of(r.dt), 'email': text(r.dd)} for r in sc.select('.depts__row')],
        'lead_title': html_of(sc.select_one('.lead-card__title')), 'lead_text': html_of(sc.select_one('.lead-card__text')),
        'map_query': q, 'map_name': text(sc.select_one('.map__name')), 'map_address': text(sc.select_one('.map__address')),
        'map_city': text(sc.select_one('.map__city')), 'map_image': img_src(sc.select_one('.map__placeholder')['src']),
        'opening_hours': 'Mo-Fr 09:00-18:00',
    })

# ---------------------------------------------------------------- content written for MODX (not in the mockup)
import extra_content as X
for key, langs in X.PAGES.items():
    for lang, f in langs.items():
        put(by_key[key], lang, f)
TAGKEY = {'Будівництво': 'construction', 'Реклама': 'ads', 'Фасади': 'facades', 'Поради': 'tips'}
uk_tags = by_key['post-turnkey']['lang']['uk']['tvs']['@tag_labels']
for lang in LANGS:
    by_key['post-turnkey']['lang'][lang]['tvs']['tags'] = '||'.join(TAGKEY[t] for t in uk_tags)
    by_key['post-turnkey']['lang'][lang]['tvs'].pop('@tag_labels', None)
for key, langs in X.POSTS.items():
    for lang, body in langs.items():
        put(by_key['post-' + key], lang, {'content': body},
            {'read_time': X.POST_META[key]['read_time'], 'tags': '||'.join(X.POST_META[key]['tags'])})


def fixvoid(o):
    if isinstance(o, str):
        return re.sub(r'<(br|img|hr|source|input)(\b[^>]*?)\s*/>', r'<\1\2>', o)
    if isinstance(o, list):
        return [fixvoid(x) for x in o]
    if isinstance(o, dict):
        return {k: fixvoid(v) for k, v in o.items()}
    return o


resources = fixvoid(resources)
json.dump(resources, open(os.path.join(HERE, 'data.json'), 'w'), ensure_ascii=False, indent=1)
print(len(resources), 'resources')
for r in resources:
    print(r['key'], '|', ' / '.join(r['lang'][l]['fields'].get('pagetitle', '') for l in LANGS))
