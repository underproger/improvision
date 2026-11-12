# improvision — вёрстка

Статическая вёрстка сайта improvision (HTML + SCSS + vanilla JS) по макетам Figma, десктоп 1440.

Готово (все страницы из макетов):

| Файл | Страница |
|---|---|
| `index.html` | Главная |
| `about.html` | Про нас |
| `projects.html` / `project.html` | Проекты / проект (шаблон) |
| `blog.html` / `article.html` | Блог / статья (шаблон) |
| `contact.html` | Контакты |
| `service-*.html` | 7 услуг: construction, facades, entrance, outdoor, interior, design, renovation |

Языки: украинский — в корне, английский — `/en/`, русский — `/ru/` (те же имена файлов).

## Структура

```
*.html                     собранные страницы (не править руками — см. src/html)
assets/
  css/main.css             собранный CSS (не править руками)
  js/main.js               header, меню, дропдауны, слайдеры, фильтр, табы, анимации, маска телефона, форма
  fonts/                   Manrope Variable (woff2, self-hosted)
  icons/                   SVG-иконки, логотип, фавикон
  img/brands/              логотипы брендов (SVG)
  img/photos/              фото
src/
  html/pages/              исходники страниц
  html/partials/           общие блоки: header, footer, contact, brands, why, steps, stats-items, head-assets
  html/icons/              инлайн-SVG для {{icon:name}}
  scss/                    base / components / blocks
tools/build-html.mjs       сборка HTML (include партиалов, без зависимостей)
```

## Сборка

```bash
npm install
npm run build        # CSS + HTML
npm run css          # только SCSS → assets/css/main.css
npm run html         # только src/html → *.html
npm run watch        # пересборка CSS при изменениях
npm run watch:html   # пересборка HTML при изменениях
npm run i18n:check   # проверить, что всё переведено
```

В исходниках страниц:

```html
<!-- @include header {"solid": true, "current": "about.html"} -->   белый хедер + активный пункт меню
<!-- @include contact -->                                          общий блок
{{icon:arrow}}                                                     инлайн-иконка из src/html/icons
```

## Переводы (EN, RU)

Украинский — исходник. `/en/` и `/ru/` собираются из тех же шаблонов `src/html`:
каждая текстовая строка (а также `alt`, `title`, `placeholder`, `aria-label`, meta description/og, строки JSON-LD)
ищется в словаре `src/i18n/en.json` / `src/i18n/ru.json` по точному украинскому тексту.

- Ключ — украинский текст фрагмента вместе с простыми inline-тегами (`<br>`, `<b>`, `<small>`, `<sup>`…),
  поэтому в переводе можно оставить или переставить переносы.
- Если строки нет в словаре, на странице остаётся украинский текст, а сборка пишет список в
  `src/i18n/missing.en.json` / `missing.ru.json` — достаточно перенести оттуда ключи в словарь с переводом.
- `npm run i18n:check` — сборка падает, если есть непереведённые строки.
- Пути (`assets/` → `../assets/`), `canonical`, `og:url`, `hreflang`, `lang`, переключатель языков — проставляются автоматически.
- Тексты из JS (меню, форма, счётчик) — объект `STRINGS` в `assets/js/main.js`.
- Заголовок на странице услуги автоматически уменьшается, если название длинное (на любом языке).

## Анимации

- `data-reveal` — элемент появляется при скролле (`fade`, `left`, `right`, `zoom`; по умолчанию снизу вверх).
- `data-stagger` — дочерние элементы появляются по очереди.
- `data-count="480"` — счётчик чисел.
- Без JS и при `prefers-reduced-motion` всё показывается сразу.

## Заметки

- Брейкпоинты: 1199 / 991 / 767 / 575 (desktop-first, миксины `down()` / `up()` в `_variables.scss`).
- Хедер прозрачный на hero и белеет при скролле; на внутренних страницах — `{"solid": true}`.
- Форма: валидация на фронте; для отправки указать `data-endpoint="..."` у `<form>`.
- «Шлях компанії»: для 2013–2026 стоят заглушки (подписи + фото), нужен контент.
- Страница услуги: текст статьи оформляется классом `.prose` (p, h3, figure, blockquote, списки) — подходит для вывода из CMS.
  Компоненты внутри: `.checklist-box`, `.callout`, `.stages`, `.materials` (табы: у каждого материала своё фото).
- Карточки проектов — отдельные партиалы `src/html/partials/cards/project-*.html`.
- Список проектов: фильтр работает по карточкам на текущей странице (`data-category`), счётчик — `data-filter-count`;
  пагинация — обычные ссылки (`?page=2`), на CMS её отдаёт бэкенд.
- Блог: карточка статьи — партиал `cards/post` с параметрами (`<!-- @include cards/post {"title": "..."} -->`);
  верхний слайдер — тот же `data-slider="dots"`.
- Статья: текст в `.prose`; «Зміст» (`data-toc`) подсвечивает текущий раздел, якоря — `id` у h2.
- Контакты: карта — iframe Google Maps поверх картинки-заглушки (заглушка видна, пока карта грузится).
  Кнопка «Замовити виїзд» выбирает этот пункт в форме.
- Проект: галерея `data-gallery` — у миниатюры `data-src` (большое фото) и `data-alt`; стрелки, клик, свайп, ←/→.
