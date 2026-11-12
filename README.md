# improvision — вёрстка

Статическая вёрстка сайта improvision (HTML + SCSS + vanilla JS) по макетам Figma, десктоп 1440.

## Структура

```
index.html                 главная
assets/
  css/main.css             собранный CSS (не править руками)
  js/main.js               header, меню, дропдауны, слайдеры, фильтр проектов, маска телефона, форма
  fonts/                   Manrope Variable (woff2, self-hosted)
  icons/                   SVG-иконки и логотип (вытащены из макета)
  img/brands/              логотипы брендов (SVG)
  img/photos/              фото
src/scss/
  main.scss                точка входа
  base/                    переменные, шрифты, reset, базовые стили (.container, .title)
  components/              кнопки/чипы, слайдер, поля формы
  blocks/                  блоки страницы: header, hero, brands, about, services, why, projects, stats, contact, footer
```

## Сборка

```bash
npm install
npm run build     # src/scss → assets/css/main.css (minified)
npm run watch     # пересборка при изменениях
```

## Заметки

- Брейкпоинты: 1199 / 991 / 767 / 575 (desktop-first, миксины `down()` / `up()` в `_variables.scss`).
- Хедер прозрачный на hero и белеет при скролле. Для внутренних страниц добавить `data-header-solid` на `<header>`.
- Слайдеры работают на нативном scroll-snap (тач/трекпад), мышью тянутся drag'ом. Точки у брендов появляются, когда логотипы не влезают в одну ширину.
- Форма: валидация на фронте; для отправки указать `data-endpoint="..."` у `<form>`.
- Ссылки на внутренние страницы (about.html, projects.html, service-*.html и т.д.) ведут на будущие файлы.
