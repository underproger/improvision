<?php
/**
 * improvision — content import from data.json (built by extract.py). DEV TOOL.
 * Wipes all resources and recreates them in the contexts web (uk), en, ru, linked with Babel.
 */
require __DIR__ . '/bootstrap.php';

use MODX\Revolution\{modResource, modDocument, modWebLink, modTemplateVar, modTemplateVarResource, modTemplateVarTemplate,
    modContextSetting, modSystemSetting, modContentType, modTemplate};

$data = json_decode(file_get_contents(__DIR__ . '/data.json'), true);
$ids = json_decode(file_get_contents(__DIR__ . '/ids.json'), true);
$CTX = ['uk' => 'web', 'en' => 'en', 'ru' => 'ru'];

// -------------------------------------------------- wipe
$modx->exec('TRUNCATE ' . $modx->getTableName(modTemplateVarResource::class));
$modx->exec('TRUNCATE ' . $modx->getTableName(modResource::class));
$modx->exec('DELETE FROM ' . $modx->getTableName(modContextSetting::class) . " WHERE `key` IN ('site_start','error_page') OR `key` LIKE 'improvision.%'");

// babel TV on every template
$babelTv = $modx->getObject(modTemplateVar::class, ['name' => 'babelLanguageLinks']);
foreach ($modx->getCollection(modTemplate::class) as $t) {
    if (!$modx->getObject(modTemplateVarTemplate::class, ['tmplvarid' => $babelTv->get('id'), 'templateid' => $t->get('id')])) {
        $l = $modx->newObject(modTemplateVarTemplate::class);
        $l->fromArray(['tmplvarid' => $babelTv->get('id'), 'templateid' => $t->get('id'), 'rank' => 99], '', true, true);
        $l->save();
    }
}
$jsonType = $modx->getObject(modContentType::class, ['name' => 'JSON']);

function ctxSet($ctx, $key, $value) {
    global $modx;
    $s = $modx->getObject(modContextSetting::class, ['context_key' => $ctx, 'key' => $key]) ?: $modx->newObject(modContextSetting::class);
    $s->fromArray(['context_key' => $ctx, 'key' => $key, 'value' => (string)$value, 'xtype' => 'textfield',
        'namespace' => strpos($key, 'improvision.') === 0 ? 'improvision' : 'core', 'area' => ''], '', true, true);
    $s->save();
}
function sysSet($key, $value) {
    global $modx;
    $s = $modx->getObject(modSystemSetting::class, $key);
    $s->set('value', (string)$value);
    $s->save();
}

// -------------------------------------------------- pass 1: resources
$rid = []; // key => [lang => id]
$byKey = [];
foreach ($data as $r) {
    $byKey[$r['key']] = $r;
}
$fieldNames = ['pagetitle', 'longtitle', 'menutitle', 'description', 'introtext', 'content'];
foreach ($data as $r) {
    foreach ($r['contexts'] as $lang) {
        $L = $r['lang'][$lang];
        $class = $r['class_key'] === 'weblink' ? modWebLink::class : modDocument::class;
        /** @var modResource $res */
        $res = $modx->newObject($class);
        $res->fromArray([
            'context_key' => $CTX[$lang],
            'parent' => $r['parent'] ? $rid[$r['parent']][$lang] : 0,
            'template' => $ids['templates'][$r['template']],
            'alias' => $r['alias'],
            'menuindex' => $r['menuindex'],
            'published' => $r['published'],
            'hidemenu' => $r['hidemenu'],
            'isfolder' => $r['isfolder'],
            'searchable' => $r['key'] === 'globals' || $r['key'] === 'lead' ? 0 : 1,
            'cacheable' => $r['key'] === 'lead' ? 0 : 1,
            'richtext' => 0,
            'createdby' => 1,
            'createdon' => time(),
            'publishedon' => $r['publishedon'] ? strtotime($r['publishedon']) : ($r['published'] ? time() : 0),
            'show_in_tree' => 1,
        ]);
        foreach ($fieldNames as $f) {
            if (isset($L['fields'][$f])) {
                $res->set($f, str_replace("\u{00a0}", "\u{00a0}", $L['fields'][$f]));
            }
        }
        if ($r['key'] === 'lead') {
            $res->set('content_type', $jsonType->get('id'));
            $res->set('content', '');
        }
        if (!$res->get('pagetitle')) {
            $res->set('pagetitle', $byKey[$r['key']]['lang']['uk']['fields']['pagetitle'] ?? $r['key']);
        }
        if (!$res->save()) {
            die("cannot save {$r['key']} $lang\n");
        }
        $rid[$r['key']][$lang] = $res->get('id');
    }
}

// weblink "Послуги" → home #services
foreach ($rid['services'] as $lang => $id) {
    $w = $modx->getObject(modResource::class, $id);
    $w->set('content', '[[~' . $rid['home'][$lang] . ']]#services');
    $w->save();
}

// -------------------------------------------------- context settings
foreach ($CTX as $lang => $ctx) {
    ctxSet($ctx, 'site_start', $rid['home'][$lang]);
    ctxSet($ctx, 'error_page', $rid['404'][$lang]);
    foreach (['globals', 'services', 'projects', 'blog', 'contacts', 'privacy', 'terms'] as $k) {
        ctxSet($ctx, 'improvision.' . $k . '_id', $rid[$k][$lang]);
    }
}
sysSet('site_start', $rid['home']['uk']);
sysSet('error_page', $rid['404']['uk']);
sysSet('improvision.lead_id', $rid['lead']['uk']);

// -------------------------------------------------- pass 2: TVs
$brandKey = [];
foreach ($data as $r) {
    if (strpos($r['key'], 'prj-') === 0) {
        $brandKey[$r['lang']['uk']['tvs']['brand']] = $r['key'];
    }
}
$tvObj = [];
foreach ($data as $r) {
    foreach ($r['contexts'] as $lang) {
        $res = $modx->getObject(modResource::class, $rid[$r['key']][$lang]);
        $tvs = $r['lang'][$lang]['tvs'];
        if (isset($tvs['@related'])) {
            $tvs['related_projects'] = implode('||', array_map(function ($b) use ($rid, $brandKey, $lang) {
                return $rid[$brandKey[$b]][$lang];
            }, $tvs['@related']));
            unset($tvs['@related']);
        }
        foreach ($tvs as $name => $value) {
            if (in_array($name, $fieldNames, true)) {
                $res->set($name, $value);
                $res->save();
                continue;
            }
            if (!isset($ids['tvs'][$name])) {
                echo "unknown TV $name\n";
                continue;
            }
            if (is_array($value)) {
                foreach ($value as $i => &$item) {
                    if (isset($item['link']) && strpos($item['link'], '@') === 0) {
                        $item['link'] = (string)$rid[substr($item['link'], 1)][$lang];
                    }
                    $item = ['MIGX_id' => (string)($i + 1)] + $item;
                }
                unset($item);
                $value = json_encode($value, JSON_UNESCAPED_UNICODE | JSON_UNESCAPED_SLASHES);
            }
            if ($value === '' || $value === null) {
                continue;
            }
            $res->setTVValue($name, $value);
        }
        // Babel links
        $links = [];
        foreach ($r['contexts'] as $l2) {
            $links[] = $CTX[$l2] . ':' . $rid[$r['key']][$l2];
        }
        $res->setTVValue('babelLanguageLinks', implode(';', $links));
    }
}

// -------------------------------------------------- sitemap.xml (all languages)
$xmlType = $modx->getObject(modContentType::class, ['name' => 'XML']);
$skip = [];
foreach (['services', '404', 'globals', 'lead'] as $k) {
    foreach ($rid[$k] as $id) {
        $skip[] = '-' . $id;
    }
}
$sm = $modx->newObject(modDocument::class);
$sm->fromArray([
    'context_key' => 'web', 'parent' => 0, 'template' => 0, 'alias' => 'sitemap', 'pagetitle' => 'sitemap.xml',
    'content_type' => $xmlType->get('id'), 'published' => 1, 'hidemenu' => 1, 'searchable' => 0, 'isfolder' => 0,
    'richtext' => 0, 'menuindex' => 13, 'cacheable' => 1, 'createdby' => 1, 'createdon' => time(), 'publishedon' => time(),
    'content' => '[[pdoSitemap? &context=`web,en,ru` &showHidden=`1` &resources=`' . implode(',', $skip) . '`]]',
]);
$sm->save();
$rid['sitemap'] = ['uk' => $sm->get('id')];

$modx->getCacheManager()->refresh();
file_put_contents(__DIR__ . '/rid.json', json_encode($rid, JSON_PRETTY_PRINT));
echo "imported " . count($data) . " resources × languages\n";
