<?php
/**
 * impJsonLd — <script type="application/ld+json"> with page-specific objects (&extra, JSON array)
 * plus a BreadcrumbList built from the resource parents (Home › parents › page).
 * The "Послуги" weblink parent points to the home page #services block.
 *
 * @var modX $modx
 * @var array $scriptProperties
 */
$resource = $modx->resource;
if (!$resource) {
    return '';
}
$modx->lexicon->load('improvision:default');
$items = [];
$siteStart = (int)$modx->getOption('site_start');
$homeUrl = $modx->makeUrl($siteStart, '', '', 'full');
$items[] = ['name' => $modx->lexicon('imp.home'), 'item' => $homeUrl];
$parents = array_reverse($modx->getParentIds($resource->get('id'), 10, ['context' => $resource->get('context_key')]));
$servicesId = (int)$modx->getOption('improvision.services_id');
foreach ($parents as $pid) {
    if (!$pid || $pid == $siteStart) {
        continue;
    }
    if ($p = $modx->getObject(\MODX\Revolution\modResource::class, $pid)) {
        $items[] = [
            'name' => $p->get('menutitle') ?: $p->get('pagetitle'),
            'item' => $pid == $servicesId ? $homeUrl . '#services' : $modx->makeUrl($pid, '', '', 'full'),
        ];
    }
}
$items[] = ['name' => $resource->get('menutitle') ?: $resource->get('pagetitle'), 'item' => $modx->makeUrl($resource->get('id'), '', '', 'full')];
$list = [];
foreach ($items as $i => $item) {
    $list[] = ['@type' => 'ListItem', 'position' => $i + 1, 'name' => html_entity_decode(str_replace("\u{00a0}", ' ', $item['name']), ENT_QUOTES, 'UTF-8'), 'item' => $item['item']];
}
$data = [];
if (!empty($scriptProperties['extra'])) {
    $extra = json_decode($scriptProperties['extra'], true);
    if (is_array($extra)) {
        $data = array_values($extra);
    }
}
$data[] = ['@context' => 'https://schema.org', '@type' => 'BreadcrumbList', 'itemListElement' => $list];
$json = json_encode(count($data) === 1 ? $data[0] : $data, JSON_UNESCAPED_UNICODE | JSON_UNESCAPED_SLASHES | JSON_PRETTY_PRINT);
return '  <script type="application/ld+json">' . "\n" . $json . "\n  </script>";