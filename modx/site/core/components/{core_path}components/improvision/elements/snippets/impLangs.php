<?php
/**
 * impLangs — JSON list of language versions of the current resource (Babel links).
 * [{"lang":"uk","ctx":"web","label":"UA","url":"https://…/","current":true}, …]
 * A missing translation falls back to the start page of that language.
 *
 * @var modX $modx
 */
$languages = [
    'web' => ['lang' => 'uk', 'label' => 'UA'],
    'en'  => ['lang' => 'en', 'label' => 'EN'],
    'ru'  => ['lang' => 'ru', 'label' => 'RU'],
];
$resource = $modx->resource;
$links = [];
if ($resource) {
    $tvName = $modx->getOption('babel.babelTvName', null, 'babelLanguageLinks');
    $raw = (string)$resource->getTVValue($tvName);
    foreach (explode(';', $raw) as $pair) {
        $pair = explode(':', $pair);
        if (count($pair) === 2 && (int)$pair[1] > 0) {
            $links[trim($pair[0])] = (int)$pair[1];
        }
    }
    $links[$resource->get('context_key')] = $resource->get('id');
}
$current = $modx->context->get('key');
$out = [];
foreach ($languages as $ctx => $info) {
    $id = $links[$ctx] ?? 0;
    if ($id) {
        /** @var modResource $target */
        $target = $modx->getObject(\MODX\Revolution\modResource::class, ['id' => $id, 'published' => 1, 'deleted' => 0]);
        if (!$target) {
            $id = 0;
        }
    }
    if (!$id) {
        $c = $modx->getContext($ctx);
        $id = $c ? (int)$c->getOption('site_start', 0) : 0;
    }
    $out[] = $info + [
        'ctx' => $ctx,
        'url' => $id ? $modx->makeUrl($id, $ctx, '', 'full') : '',
        'current' => $ctx === $current,
    ];
}
return json_encode($out, JSON_UNESCAPED_UNICODE | JSON_UNESCAPED_SLASHES);