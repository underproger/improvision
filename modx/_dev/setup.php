<?php
/**
 * improvision — MODX setup (idempotent): settings, contexts, ACL, namespace, elements, TVs.
 * Run: php setup.php   (dev tool; not needed on the production server)
 */
require __DIR__ . '/bootstrap.php';

use MODX\Revolution\{modSystemSetting, modContext, modContextSetting, modNamespace, modCategory, modTemplate,
    modChunk, modSnippet, modPlugin, modPluginEvent, modTemplateVar, modTemplateVarTemplate, modAccessContext,
    modContentType, modResource};

$C = MODX_CORE_PATH . 'components/improvision/';
$E = $C . 'elements/';

function setting($key, $value, $xtype = 'textfield', $ns = 'core', $area = '') {
    global $modx;
    $s = $modx->getObject(modSystemSetting::class, $key);
    if (!$s) {
        $s = $modx->newObject(modSystemSetting::class);
        $s->set('key', $key);
        $s->set('xtype', $xtype);
        $s->set('namespace', $ns);
        $s->set('area', $area);
    }
    $s->set('value', $value);
    $s->save();
}
function ctxSetting($ctx, $key, $value, $ns = 'core', $area = '') {
    global $modx;
    $s = $modx->getObject(modContextSetting::class, ['context_key' => $ctx, 'key' => $key]);
    if (!$s) {
        $s = $modx->newObject(modContextSetting::class);
        $s->set('context_key', $ctx);
        $s->set('key', $key);
        $s->set('xtype', 'textfield');
        $s->set('namespace', $ns);
        $s->set('area', $area);
    }
    $s->set('value', (string)$value);
    $s->save();
}
function category($name, $parent = 0) {
    global $modx;
    $c = $modx->getObject(modCategory::class, ['category' => $name]);
    if (!$c) {
        $c = $modx->newObject(modCategory::class);
        $c->set('category', $name);
    }
    $c->set('parent', $parent);
    $c->save();
    return $c->get('id');
}

// ------------------------------------------------------------------ namespace
$ns = $modx->getObject(modNamespace::class, 'improvision') ?: $modx->newObject(modNamespace::class);
$ns->set('name', 'improvision');
$ns->set('path', '{core_path}components/improvision/');
$ns->set('assets_path', '{assets_path}');
$ns->save();

// ------------------------------------------------------------------ system settings
$settings = [
    'site_name' => 'improvision',
    'manager_language' => 'uk',
    'friendly_urls' => 1,
    'use_alias_path' => 1,
    'automatic_alias' => 1,
    'container_suffix' => '/',
    'link_tag_scheme' => 'abs',
    'cultureKey' => 'uk',
    'publish_default' => 1,
    'friendly_alias_restrict_chars' => 'alphanumeric',
    'friendly_alias_lowercase_only' => 1,
    'friendly_alias_translit' => 'none',
    'global_duplicate_uri_check' => 0,
    'emailsender' => 'office@improvision.com.ua',
    'pdotools_fenom_default' => 1,
    'pdotools_fenom_parser' => 1,
    'pdotools_fenom_cache' => 0,
    'pdotools_fenom_options' => '',
    'pdotools_elements_path' => '{core_path}components/improvision/elements/',
    'babel.contextKeys' => 'web,en,ru',
    'babel.restrictToGroup' => 0,
];
foreach ($settings as $k => $v) {
    setting($k, $v);
}
setting('improvision.lead_email', 'office@improvision.com.ua', 'textfield', 'improvision', 'improvision');
if (!$modx->getObject(modSystemSetting::class, 'improvision.lead_id')) {
    setting('improvision.lead_id', 0, 'numberfield', 'improvision', 'improvision');
}

// URLs without ".html": /about/, /services/facades/
if ($ct = $modx->getObject(modContentType::class, ['name' => 'HTML'])) {
    $ct->set('file_extensions', '');
    $ct->save();
}

// ------------------------------------------------------------------ contexts + ACL
foreach (['en' => 'English', 'ru' => 'Русский'] as $key => $name) {
    $ctx = $modx->getObject(modContext::class, $key) ?: $modx->newObject(modContext::class);
    $ctx->set('key', $key);
    $ctx->set('name', $name);
    $ctx->set('description', 'improvision — ' . $name);
    $ctx->save();
}
if ($web = $modx->getObject(modContext::class, 'web')) {
    $web->set('name', 'Українська');
    $web->save();
}
foreach (['web' => 0, 'en' => 1, 'ru' => 2, 'mgr' => 9] as $key => $rank) {
    if ($c = $modx->getObject(modContext::class, $key)) {
        $c->set('rank', $rank);
        $c->save();
    }
}
foreach (['en', 'ru'] as $key) {
    foreach ([[0, 9999, 3], [1, 0, 2]] as [$principal, $authority, $policy]) {
        $where = ['target' => $key, 'principal_class' => \MODX\Revolution\modUserGroup::class, 'principal' => $principal];
        $acl = $modx->getObject(modAccessContext::class, $where) ?: $modx->newObject(modAccessContext::class);
        $acl->fromArray($where + ['authority' => $authority, 'policy' => $policy], '', true);
        $acl->save();
    }
}
$langs = ['web' => ['uk', '', 'uk_UA.utf8'], 'en' => ['en', 'en/', 'en_US.utf8'], 'ru' => ['ru', 'ru/', 'ru_RU.utf8']];
foreach ($langs as $ctx => [$culture, $path, $locale]) {
    ctxSetting($ctx, 'cultureKey', $culture);
    if ($ctx !== 'web') {
        ctxSetting($ctx, 'base_url', '/' . $path);
        ctxSetting($ctx, 'site_url', rtrim($modx->getOption('site_url'), '/') . '/' . $path);
    }
}

// ------------------------------------------------------------------ categories
$catMain = category('improvision');
$catTpl = category('Шаблони', $catMain);
$catChunk = category('Чанки', $catMain);
$catIcon = category('Іконки', $catMain);
$catCode = category('Сніпети і плагіни', $catMain);
$tvCats = [
    'seo' => category('SEO', 0),
    'images' => category('Зображення', 0),
    'texts' => category('Тексти та блоки', 0),
    'lists' => category('Списки MIGX', 0),
    'card' => category('Картка та фільтр', 0),
    'contacts' => category('Контакти', 0),
];

// ------------------------------------------------------------------ cleanup of prototypes
foreach ([[modTemplate::class, ['templatename:IN' => ['PBase', 'PChild']]], [modChunk::class, ['name' => 'pchunk']], [modTemplateVar::class, ['name' => 'pimg']]] as [$cls, $w]) {
    foreach ($modx->getCollection($cls, $w) as $o) {
        $o->remove();
    }
}

// ------------------------------------------------------------------ elements (static files)
function staticElement($class, $nameField, $name, $file, $category, $extra = []) {
    global $modx;
    $o = $modx->getObject($class, [$nameField => $name]) ?: $modx->newObject($class);
    $content = file_get_contents($file);
    $rel = str_replace(MODX_CORE_PATH, '{core_path}', $file);
    $o->fromArray(array_merge([
        $nameField => $name,
        'category' => $category,
        'static' => 1,
        'source' => 0,
        'static_file' => $rel,
    ], $extra));
    $o->setContent($content);
    $o->save();
    return $o;
}

$templates = [
    // name => [file, description, icon]
    'Base' => ['base.tpl', 'Базовий макет (не призначати сторінкам): head, шапка, підвал'],
    'Головна' => ['home.tpl', 'Головна сторінка'],
    'Про нас' => ['about.tpl', 'Сторінка «Про нас»'],
    'Послуга' => ['service.tpl', 'Сторінка послуги'],
    'Проєкти' => ['projects.tpl', 'Список проєктів (дочірні ресурси — проєкти)'],
    'Проєкт' => ['project.tpl', 'Сторінка проєкту'],
    'Блог' => ['blog.tpl', 'Список статей (дочірні ресурси — статті)'],
    'Стаття' => ['article.tpl', 'Стаття блогу'],
    'Контакти' => ['contacts.tpl', 'Сторінка контактів'],
    'Текстова сторінка' => ['text.tpl', 'Текстова сторінка: політика, умови, 404 тощо'],
    'Загальні блоки' => ['globals.tpl', 'Дані для спільних блоків (не сторінка)'],
    'Заявка (обробник форм)' => ['lead.tpl', 'Приймає заявки з форм; не змінювати'],
];
$tplIds = [];
foreach ($templates as $name => [$file, $desc]) {
    $t = staticElement(modTemplate::class, 'templatename', $name, $E . 'templates/' . $file, $catTpl, ['description' => $desc]);
    $tplIds[$name] = $t->get('id');
}
setting('default_template', $tplIds['Текстова сторінка']);

foreach (glob($E . 'chunks/*.tpl') as $file) {
    staticElement(modChunk::class, 'name', basename($file, '.tpl'), $file, $catChunk);
}
foreach (glob($E . 'icons/*.svg') as $file) {
    staticElement(modChunk::class, 'name', 'icon_' . basename($file, '.svg'), $file, $catIcon, ['description' => 'SVG-іконка']);
}
foreach (glob($E . 'snippets/*.php') as $file) {
    $o = staticElement(modSnippet::class, 'name', basename($file, '.php'), $file, $catCode);
}
$plugin = staticElement(modPlugin::class, 'name', 'impRouter', $E . 'plugins/impRouter.php', $catCode, ['description' => 'Мовні версії: /en/, /ru/ → контексти en, ru']);
$pe = $modx->getObject(modPluginEvent::class, ['pluginid' => $plugin->get('id'), 'event' => 'OnHandleRequest']) ?: $modx->newObject(modPluginEvent::class);
$pe->fromArray(['pluginid' => $plugin->get('id'), 'event' => 'OnHandleRequest', 'priority' => 0, 'propertyset' => 0], '', true, true);
$pe->save();

// ------------------------------------------------------------------ TVs
$pageTpls = ['Головна', 'Про нас', 'Послуга', 'Проєкти', 'Проєкт', 'Блог', 'Стаття', 'Контакти', 'Текстова сторінка'];
require __DIR__ . '/tvs.php'; // defines $tvs
$rank = 0;
$tvIds = [];
foreach ($tvs as $name => $d) {
    $tv = $modx->getObject(modTemplateVar::class, ['name' => $name]) ?: $modx->newObject(modTemplateVar::class);
    $inputProps = $d['input'] ?? [];
    if (($d['type'] ?? 'text') === 'migx') {
        $inputProps = [
            'formtabs' => json_encode([['caption' => $d['caption'], 'fields' => $d['fields']]], JSON_UNESCAPED_UNICODE),
            'columns' => json_encode($d['columns'], JSON_UNESCAPED_UNICODE),
            'btntext' => 'Додати',
            'configs' => '',
            'previewurl' => '',
            'jsonvarkey' => '',
            'autoResourceFolders' => 'false',
        ];
    }
    if (!isset($tvCats[$d['cat'] ?? 'texts'])) { echo "bad cat for $name\n"; }
    $tv->fromArray([
        'name' => $name,
        'caption' => $d['caption'],
        'description' => $d['description'] ?? '',
        'type' => $d['type'] ?? 'text',
        'category' => $tvCats[$d['cat'] ?? 'texts'],
        'elements' => $d['elements'] ?? '',
        'default_text' => $d['default'] ?? '',
        'rank' => $rank++,
        'display' => $d['display'] ?? 'default',
        'source' => 1,
    ]);
    if (in_array($d['type'] ?? 'text', ['listbox', 'listbox-multiple'], true)) {
        $inputProps += ['listWidth' => '', 'title' => '', 'typeAhead' => 'false', 'typeAheadDelay' => '250',
            'forceSelection' => 'false', 'listEmptyText' => '', 'stackItems' => 'false', 'preserveSelectionOrder' => 'true'];
    }
    $tv->set('input_properties', $inputProps + ['allowBlank' => 'true']);
    $tv->set('output_properties', $d['output'] ?? []);
    $tv->save();
    $tvIds[$name] = $tv->get('id');
    // template links
    $wanted = [];
    foreach ($d['tpl'] as $tn) {
        $wanted[] = $tplIds[$tn];
    }
    foreach ($modx->getCollection(modTemplateVarTemplate::class, ['tmplvarid' => $tv->get('id')]) as $link) {
        if (!in_array($link->get('templateid'), $wanted)) {
            $link->remove();
        }
    }
    foreach ($wanted as $i => $tid) {
        if (!$modx->getObject(modTemplateVarTemplate::class, ['tmplvarid' => $tv->get('id'), 'templateid' => $tid])) {
            $l = $modx->newObject(modTemplateVarTemplate::class);
            $l->fromArray(['tmplvarid' => $tv->get('id'), 'templateid' => $tid, 'rank' => $rank], '', true, true);
            $l->save();
        }
    }
}
// media source (Filesystem, id 1) for every TV in every language context — as the manager does on TV save
foreach ($modx->getCollection(modTemplateVar::class) as $tvAll) {
    foreach (['web', 'en', 'ru'] as $ctxKey) {
        $w = ['source' => 1, 'object_class' => modTemplateVar::class, 'object' => $tvAll->get('id'), 'context_key' => $ctxKey];
        if (!$modx->getObject(\MODX\Revolution\Sources\modMediaSourceElement::class, $w)) {
            $mse = $modx->newObject(\MODX\Revolution\Sources\modMediaSourceElement::class);
            $mse->fromArray($w, '', true, true);
            $mse->save();
        }
    }
}

// Babel: copy language-independent values (pictures, numbers, flags) to translations on save
$sync = [];
foreach (['image', 'image_960', 'image_mobile', 'card_image', 'mark_image', 'og_image', 'why_bg', 'contact_image', 'map_image', 'home_order', 'year', 'category', 'post_category', 'tags', 'featured', 'read_time', 'phone', 'email'] as $n) {
    if (isset($tvIds[$n])) {
        $sync[] = $tvIds[$n];
    }
}
setting('babel.syncTvs', implode(',', $sync));

file_put_contents(__DIR__ . '/ids.json', json_encode(['templates' => $tplIds, 'tvs' => $tvIds], JSON_UNESCAPED_UNICODE | JSON_PRETTY_PRINT));
$modx->getCacheManager()->refresh();
echo "setup ok: " . count($tplIds) . " templates, " . count($tvIds) . " TVs\n";
