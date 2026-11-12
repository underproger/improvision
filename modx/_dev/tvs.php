<?php
/**
 * TV definitions for setup.php.
 * type: text | textarea | richtext | image | number | checkbox | listbox | listbox-multiple | migx
 * tpl: templates the TV is attached to; cat: tab in the resource editor.
 */
$F = function ($field, $caption, $type = 'text', $extra = []) {
    return array_merge(['field' => $field, 'caption' => $caption, 'inputTVtype' => $type], $extra);
};
$col = function ($dataIndex, $header, $width = 200, $renderer = '') {
    $c = ['header' => $header, 'dataIndex' => $dataIndex, 'width' => $width];
    if ($renderer) {
        $c['renderer'] = $renderer;
    }
    return $c;
};
$img = function ($field = 'image', $caption = 'Зображення') use ($col) {
    return $col($field, $caption, 80, 'this.renderImage');
};
$nl = 'Новий рядок = перенос рядка.';
$svcTpl = ['Послуга'];

$tvs = [
    // ---------------------------------------------------------------- SEO
    'seo_title' => ['caption' => 'SEO title', 'description' => 'Заголовок вкладки браузера й пошуку (title). Порожньо — «Заголовок — improvision».', 'cat' => 'seo', 'tpl' => $pageTpls],
    'og_title' => ['caption' => 'OG title', 'description' => 'Заголовок для соцмереж. Порожньо — як SEO title.', 'cat' => 'seo', 'tpl' => $pageTpls],
    'og_description' => ['caption' => 'OG description', 'type' => 'textarea', 'description' => 'Опис для соцмереж. Порожньо — як «Опис» ресурсу.', 'cat' => 'seo', 'tpl' => $pageTpls],
    'og_image' => ['caption' => 'OG image', 'type' => 'image', 'description' => 'Картинка для соцмереж. Порожньо — головне зображення сторінки.', 'cat' => 'seo', 'tpl' => $pageTpls],
    'ld_description' => ['caption' => 'Опис компанії (schema.org)', 'type' => 'textarea', 'cat' => 'seo', 'tpl' => ['Головна']],

    // ---------------------------------------------------------------- images
    'image' => ['caption' => 'Головне зображення', 'type' => 'image', 'description' => 'Фото першого екрана / шапки статті.', 'cat' => 'images', 'tpl' => ['Головна', 'Про нас', 'Послуга', 'Стаття']],
    'image_alt' => ['caption' => 'Alt головного зображення', 'cat' => 'images', 'tpl' => ['Головна', 'Про нас', 'Послуга', 'Стаття']],
    'image_960' => ['caption' => 'Головне зображення 960px', 'type' => 'image', 'description' => 'Зменшена копія для планшетів.', 'cat' => 'images', 'tpl' => ['Головна']],
    'image_mobile' => ['caption' => 'Головне зображення для мобільних', 'type' => 'image', 'description' => 'Показується на екранах до 768px.', 'cat' => 'images', 'tpl' => ['Головна']],
    'card_image' => ['caption' => 'Фото картки', 'type' => 'image', 'description' => 'Фото в картці на списках і в слайдері.', 'cat' => 'card', 'tpl' => ['Послуга', 'Проєкт', 'Стаття']],
    'card_image_alt' => ['caption' => 'Alt фото картки', 'cat' => 'card', 'tpl' => ['Проєкт']],
    'mark_image' => ['caption' => 'Фото в логотипі-знаку', 'type' => 'image', 'cat' => 'images', 'tpl' => ['Про нас']],
    'mark_image_alt' => ['caption' => 'Alt фото в знаку', 'cat' => 'images', 'tpl' => ['Про нас']],

    // ---------------------------------------------------------------- headings / texts
    'h1' => ['caption' => 'Заголовок H1', 'type' => 'textarea', 'description' => 'Порожньо — «Заголовок» ресурсу. ' . $nl, 'cat' => 'texts', 'tpl' => ['Головна', 'Про нас', 'Послуга']],
    'hero_features' => ['caption' => 'Переваги на першому екрані', 'type' => 'migx', 'cat' => 'lists', 'tpl' => ['Головна'],
        'fields' => [$F('icon', 'Іконка', 'image'), $F('text', 'Текст (' . $nl . ')', 'textarea')],
        'columns' => [$img('icon', 'Іконка'), $col('text', 'Текст', 300)]],
    'about_title' => ['caption' => 'Блок «Про компанію»: заголовок', 'type' => 'textarea', 'description' => $nl, 'cat' => 'texts', 'tpl' => ['Головна']],
    'about_lead' => ['caption' => 'Блок «Про компанію»: лід', 'type' => 'textarea', 'cat' => 'texts', 'tpl' => ['Головна']],
    'about_text' => ['caption' => 'Блок «Про компанію»: текст', 'type' => 'textarea', 'cat' => 'texts', 'tpl' => ['Головна']],
    'services_title' => ['caption' => 'Блок «Послуги»: заголовок', 'type' => 'textarea', 'description' => $nl, 'cat' => 'texts', 'tpl' => ['Головна']],
    'projects_title' => ['caption' => 'Блок «Проєкти»: заголовок', 'cat' => 'texts', 'tpl' => ['Головна']],
    'stats_title' => ['caption' => 'Блок «Цифри»: заголовок', 'type' => 'textarea', 'description' => $nl, 'cat' => 'texts', 'tpl' => ['Головна']],
    'stats_text' => ['caption' => 'Блок «Цифри»: текст', 'type' => 'textarea', 'cat' => 'texts', 'tpl' => ['Головна']],

    // ---------------------------------------------------------------- about
    'intro_title' => ['caption' => 'Вступ: заголовок', 'type' => 'textarea', 'description' => 'Лід — поле «Анотація», абзаци — «Вміст». ' . $nl, 'cat' => 'texts', 'tpl' => ['Про нас']],
    'process_title' => ['caption' => 'Блок «Етапи»: заголовок', 'cat' => 'texts', 'tpl' => ['Про нас']],
    'history_title' => ['caption' => 'Шлях компанії: заголовок', 'cat' => 'texts', 'tpl' => ['Про нас']],
    'history' => ['caption' => 'Шлях компанії', 'type' => 'migx', 'cat' => 'lists', 'tpl' => ['Про нас'],
        'fields' => [$F('year', 'Рік'), $F('caption', 'Підпис'), $F('image1', 'Фото 1', 'image'), $F('alt1', 'Alt фото 1'), $F('image2', 'Фото 2', 'image'), $F('alt2', 'Alt фото 2')],
        'columns' => [$col('year', 'Рік', 60), $col('caption', 'Підпис', 300), $img('image1', 'Фото 1')]],
    'history_soon' => ['caption' => 'Шлях компанії: остання вкладка', 'description' => 'Напр. «Далі буде». Порожньо — не показувати.', 'cat' => 'texts', 'tpl' => ['Про нас']],
    'team_title' => ['caption' => 'Команда: заголовок', 'type' => 'textarea', 'description' => $nl, 'cat' => 'texts', 'tpl' => ['Про нас']],
    'team_text' => ['caption' => 'Команда: текст', 'type' => 'textarea', 'cat' => 'texts', 'tpl' => ['Про нас']],
    'team' => ['caption' => 'Команда: цифри', 'type' => 'migx', 'cat' => 'lists', 'tpl' => ['Про нас'],
        'fields' => [$F('label', 'Підпис (' . $nl . ')', 'textarea'), $F('value', 'Число', 'number')],
        'columns' => [$col('label', 'Підпис', 250), $col('value', 'Число', 80)]],

    // ---------------------------------------------------------------- service
    'card_text' => ['caption' => 'Текст картки', 'type' => 'textarea', 'description' => 'Короткий опис у слайдері послуг на головній.', 'cat' => 'card', 'tpl' => $svcTpl],
    'home_order' => ['caption' => 'Порядок на головній', 'type' => 'number', 'description' => 'Порядок картки в слайдері послуг на головній (1, 2, 3…).', 'cat' => 'card', 'tpl' => $svcTpl],
    'service_type' => ['caption' => 'Тип послуги (schema.org)', 'cat' => 'seo', 'tpl' => $svcTpl],
    'checklist_title' => ['caption' => 'Чек-лист: заголовок', 'description' => 'Напр. «Що входить у послугу».', 'cat' => 'texts', 'tpl' => $svcTpl],
    'checklist' => ['caption' => 'Чек-лист', 'type' => 'textarea', 'description' => 'Один пункт — один рядок.', 'cat' => 'texts', 'tpl' => ['Послуга', 'Проєкт']],
    'content2' => ['caption' => 'Текст після чек-листа', 'type' => 'richtext', 'description' => 'Абзаци між чек-листом і виноскою.', 'cat' => 'texts', 'tpl' => $svcTpl],
    'callout' => ['caption' => 'Виноска з іконкою', 'type' => 'textarea', 'description' => $nl, 'cat' => 'texts', 'tpl' => $svcTpl],
    'content3' => ['caption' => 'Текст після виноски', 'type' => 'richtext', 'description' => 'Абзаци, фото з підписом (figure), цитата (blockquote).', 'cat' => 'texts', 'tpl' => $svcTpl],
    'stages_title' => ['caption' => 'Етапи: заголовок', 'cat' => 'texts', 'tpl' => $svcTpl],
    'stages' => ['caption' => 'Етапи робіт', 'type' => 'migx', 'cat' => 'lists', 'tpl' => $svcTpl,
        'fields' => [$F('icon', 'Іконка', 'image'), $F('title', 'Назва'), $F('text', 'Текст (' . $nl . ')', 'textarea')],
        'columns' => [$img('icon', 'Іконка'), $col('title', 'Назва', 150), $col('text', 'Текст', 250)]],
    'materials_title' => ['caption' => 'Вкладки: заголовок', 'description' => 'Напр. «Матеріали, з якими працюємо».', 'cat' => 'texts', 'tpl' => $svcTpl],
    'materials_lead' => ['caption' => 'Вкладки: підзаголовок', 'type' => 'textarea', 'cat' => 'texts', 'tpl' => $svcTpl],
    'materials_aria' => ['caption' => 'Вкладки: підпис для скрінрідерів', 'description' => 'Порожньо — як заголовок.', 'cat' => 'texts', 'tpl' => $svcTpl],
    'materials' => ['caption' => 'Вкладки (матеріали / види робіт)', 'type' => 'migx', 'cat' => 'lists', 'tpl' => $svcTpl,
        'fields' => [$F('name', 'Назва'), $F('text', 'Опис', 'textarea'), $F('image', 'Фото', 'image'), $F('alt', 'Alt фото'), $F('active', 'Відкрита за замовчуванням', 'checkbox', ['inputOptionValues' => 'Так==1'])],
        'columns' => [$img('image', 'Фото'), $col('name', 'Назва', 180), $col('text', 'Опис', 250)]],
    'related_projects' => ['caption' => 'Проєкти за цим напрямком', 'type' => 'listbox-multiple',
        'elements' => "@EVAL return \$modx->runSnippet('impTvOptions', ['type' => 'projects']);",
        'input' => ['listWidth' => '', 'typeAhead' => 'false', 'forceSelection' => 'false'],
        'display' => 'delim', 'output' => ['delimiter' => '||'],
        'description' => 'Проєкти тієї ж мовної версії, у вибраному порядку.', 'cat' => 'lists', 'tpl' => $svcTpl],

    // ---------------------------------------------------------------- project
    'brand' => ['caption' => 'Бренд / замовник', 'cat' => 'card', 'tpl' => ['Проєкт']],
    'city' => ['caption' => 'Місто', 'cat' => 'card', 'tpl' => ['Проєкт']],
    'year' => ['caption' => 'Рік', 'cat' => 'card', 'tpl' => ['Проєкт']],
    'category' => ['caption' => 'Категорія (фільтр)', 'type' => 'listbox', 'elements' => 'Ритейл==retail||Ресторани==restaurants||Фасади==facades||Бізнес-центри==business',
        'description' => 'Назви категорій для кожної мови — у словнику improvision (imp.cat_*).', 'cat' => 'card', 'tpl' => ['Проєкт']],
    'gallery' => ['caption' => 'Галерея', 'type' => 'migx', 'cat' => 'lists', 'tpl' => ['Проєкт'],
        'fields' => [$F('image', 'Фото', 'image'), $F('alt', 'Alt (опис фото)')],
        'columns' => [$img('image', 'Фото'), $col('alt', 'Alt', 350)]],
    'directions' => ['caption' => 'Напрямки в проєкті (теги)', 'type' => 'migx', 'cat' => 'lists', 'tpl' => ['Проєкт'],
        'fields' => [$F('title', 'Назва'), $F('link', 'Посилання на послугу', 'listbox', ['inputOptionValues' => "@EVAL return \$modx->runSnippet('impTvOptions', ['type' => 'services', 'empty' => 1]);"])],
        'columns' => [$col('title', 'Назва', 250), $col('link', 'ID послуги', 80)]],
    'specs' => ['caption' => 'Характеристики', 'type' => 'migx', 'cat' => 'lists', 'tpl' => ['Проєкт'],
        'fields' => [$F('label', 'Назва'), $F('value', 'Значення')],
        'columns' => [$col('label', 'Назва', 180), $col('value', 'Значення', 220)]],

    // ---------------------------------------------------------------- article
    'post_category' => ['caption' => 'Рубрика', 'type' => 'listbox', 'elements' => 'Будівництво==construction||Реклама==ads||Фасади==facades||Поради==tips',
        'description' => 'Назви рубрик для кожної мови — у словнику improvision (imp.pcat_*).', 'cat' => 'card', 'tpl' => ['Стаття']],
    'tags' => ['caption' => 'Теги', 'type' => 'listbox-multiple', 'elements' => 'Будівництво==construction||Реклама==ads||Фасади==facades||Поради==tips',
        'display' => 'delim', 'output' => ['delimiter' => '||'], 'cat' => 'card', 'tpl' => ['Стаття']],
    'author' => ['caption' => 'Автор', 'description' => 'Порожньо — «Команда improvision».', 'cat' => 'card', 'tpl' => ['Стаття']],
    'read_time' => ['caption' => 'Час читання, хв', 'type' => 'number', 'cat' => 'card', 'tpl' => ['Стаття']],
    'featured' => ['caption' => 'У слайдері рекомендованих', 'type' => 'checkbox', 'elements' => 'Так==1', 'cat' => 'card', 'tpl' => ['Стаття']],
    'featured_text' => ['caption' => 'Короткий опис (картка, слайдер)', 'type' => 'textarea', 'description' => 'Текст у картці статті та в слайдері. Порожньо — «Анотація».', 'cat' => 'card', 'tpl' => ['Стаття']],

    // ---------------------------------------------------------------- contacts page
    'contact_cards' => ['caption' => 'Картки контактів', 'type' => 'migx', 'cat' => 'contacts', 'tpl' => ['Контакти'],
        'fields' => [$F('icon', 'Іконка', 'image'), $F('title', 'Заголовок'), $F('value', 'Значення (' . $nl . ')', 'textarea'), $F('link', 'Посилання (tel:…, mailto:…)'), $F('address', 'Це адреса', 'checkbox', ['inputOptionValues' => 'Так==1']), $F('note', 'Примітка')],
        'columns' => [$img('icon', 'Іконка'), $col('title', 'Заголовок', 120), $col('value', 'Значення', 200), $col('note', 'Примітка', 150)]],
    'visit_title' => ['caption' => 'Виїзд: заголовок', 'cat' => 'contacts', 'tpl' => ['Контакти']],
    'visit_badge' => ['caption' => 'Виїзд: позначка', 'cat' => 'contacts', 'tpl' => ['Контакти']],
    'visit_text' => ['caption' => 'Виїзд: текст', 'type' => 'textarea', 'cat' => 'contacts', 'tpl' => ['Контакти']],
    'depts_title' => ['caption' => 'Відділи: заголовок', 'cat' => 'contacts', 'tpl' => ['Контакти']],
    'depts' => ['caption' => 'Відділи', 'type' => 'migx', 'cat' => 'contacts', 'tpl' => ['Контакти'],
        'fields' => [$F('label', 'Відділ'), $F('email', 'Email')],
        'columns' => [$col('label', 'Відділ', 200), $col('email', 'Email', 220)]],
    'lead_title' => ['caption' => 'Форма: заголовок', 'cat' => 'contacts', 'tpl' => ['Контакти']],
    'lead_text' => ['caption' => 'Форма: текст', 'type' => 'textarea', 'cat' => 'contacts', 'tpl' => ['Контакти']],
    'map_query' => ['caption' => 'Мапа: адреса для пошуку Google', 'cat' => 'contacts', 'tpl' => ['Контакти']],
    'map_name' => ['caption' => 'Мапа: назва', 'cat' => 'contacts', 'tpl' => ['Контакти']],
    'map_address' => ['caption' => 'Мапа: адреса', 'cat' => 'contacts', 'tpl' => ['Контакти']],
    'map_city' => ['caption' => 'Місто', 'cat' => 'contacts', 'tpl' => ['Контакти', 'Загальні блоки']],
    'map_image' => ['caption' => 'Мапа: картинка-заглушка', 'type' => 'image', 'cat' => 'contacts', 'tpl' => ['Контакти']],
    'opening_hours' => ['caption' => 'Графік (schema.org)', 'description' => 'Формат: Mo-Fr 09:00-18:00', 'cat' => 'seo', 'tpl' => ['Контакти']],

    // ---------------------------------------------------------------- text page
    'show_contact' => ['caption' => 'Показати блок із формою', 'type' => 'checkbox', 'elements' => 'Так==1', 'cat' => 'texts', 'tpl' => ['Текстова сторінка']],

    // ---------------------------------------------------------------- shared blocks (resource «Загальні блоки»)
    'phone' => ['caption' => 'Телефон', 'description' => 'Як показувати: +38 044 228 88 69', 'cat' => 'contacts', 'tpl' => ['Загальні блоки']],
    'email' => ['caption' => 'Email', 'cat' => 'contacts', 'tpl' => ['Загальні блоки']],
    'address' => ['caption' => 'Адреса в підвалі', 'type' => 'textarea', 'cat' => 'contacts', 'tpl' => ['Загальні блоки']],
    'map_street' => ['caption' => 'Вулиця (schema.org на головній)', 'cat' => 'contacts', 'tpl' => ['Загальні блоки']],
    'socials' => ['caption' => 'Соцмережі', 'type' => 'migx', 'cat' => 'contacts', 'tpl' => ['Загальні блоки'],
        'fields' => [$F('title', 'Назва'), $F('url', 'Посилання')],
        'columns' => [$col('title', 'Назва', 150), $col('url', 'Посилання', 300)]],
    'brands_title' => ['caption' => 'Бренди: заголовок', 'cat' => 'texts', 'tpl' => ['Загальні блоки']],
    'brands' => ['caption' => 'Бренди (логотипи)', 'type' => 'migx', 'cat' => 'lists', 'tpl' => ['Загальні блоки'],
        'fields' => [$F('image', 'Логотип', 'image'), $F('alt', 'Назва бренду')],
        'columns' => [$img('image', 'Логотип'), $col('alt', 'Бренд', 250)]],
    'steps' => ['caption' => 'Етапи «від ідеї до відкриття»', 'type' => 'migx', 'cat' => 'lists', 'tpl' => ['Загальні блоки'],
        'fields' => [$F('icon', 'Іконка', 'image'), $F('title', 'Назва'), $F('text', 'Текст', 'textarea')],
        'columns' => [$img('icon', 'Іконка'), $col('title', 'Назва', 150), $col('text', 'Текст', 250)]],
    'why_title' => ['caption' => 'Чому ми: заголовок', 'type' => 'textarea', 'description' => $nl, 'cat' => 'texts', 'tpl' => ['Загальні блоки']],
    'why_bg' => ['caption' => 'Чому ми: фон', 'type' => 'image', 'cat' => 'images', 'tpl' => ['Загальні блоки']],
    'why' => ['caption' => 'Чому ми: причини', 'type' => 'migx', 'cat' => 'lists', 'tpl' => ['Загальні блоки'],
        'fields' => [$F('title', 'Назва'), $F('text', 'Текст', 'textarea')],
        'columns' => [$col('title', 'Назва', 180), $col('text', 'Текст', 300)]],
    'stats' => ['caption' => 'Цифри', 'type' => 'migx', 'cat' => 'lists', 'tpl' => ['Загальні блоки'],
        'fields' => [$F('label', 'Підпис (' . $nl . ')', 'textarea'), $F('value', 'Число', 'number'), $F('plus', 'Знак «+»', 'checkbox', ['inputOptionValues' => 'Так==1']), $F('unit', 'Одиниця (напр. тис.м²)')],
        'columns' => [$col('label', 'Підпис', 200), $col('value', 'Число', 70), $col('unit', 'Одиниця', 90)]],
    'contact_title' => ['caption' => 'Блок заявки: заголовок', 'cat' => 'texts', 'tpl' => ['Загальні блоки']],
    'contact_text' => ['caption' => 'Блок заявки: текст', 'type' => 'textarea', 'cat' => 'texts', 'tpl' => ['Загальні блоки']],
    'contact_image' => ['caption' => 'Блок заявки: фото', 'type' => 'image', 'cat' => 'images', 'tpl' => ['Загальні блоки']],
    'contact_image_alt' => ['caption' => 'Блок заявки: alt фото', 'cat' => 'images', 'tpl' => ['Загальні блоки']],
];
