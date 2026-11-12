<?php
/**
 * impTvOptions — option list for listbox TVs (used as @EVAL binding):
 *   @EVAL return $modx->runSnippet('impTvOptions', ['type' => 'projects']);
 * Returns "Title==id||Title==id" for the projects (or services) of the language
 * of the resource being edited, so editors only see items in the same language.
 *
 * @var modX $modx
 * @var array $scriptProperties
 */
use MODX\Revolution\modResource;
use MODX\Revolution\modContextSetting;

$type = $scriptProperties['type'] ?? 'projects';
$settingKey = $type === 'services' ? 'improvision.services_id' : 'improvision.projects_id';
$ctx = 'web';
if (!empty($modx->resource) && $modx->resource instanceof modResource) {
    $ctx = $modx->resource->get('context_key') ?: 'web';
} elseif (!empty($_REQUEST['id']) && ($r = $modx->getObject(modResource::class, (int)$_REQUEST['id']))) {
    $ctx = $r->get('context_key');
} elseif (!empty($_REQUEST['resource_id']) && ($r = $modx->getObject(modResource::class, (int)$_REQUEST['resource_id']))) {
    $ctx = $r->get('context_key');
} elseif (!empty($_REQUEST['context_key'])) {
    $ctx = preg_replace('/[^a-z0-9_-]/i', '', $_REQUEST['context_key']);
}
$setting = $modx->getObject(modContextSetting::class, ['context_key' => $ctx, 'key' => $settingKey]);
$parent = $setting ? (int)$setting->get('value') : (int)$modx->getOption($settingKey);
$c = $modx->newQuery(modResource::class, ['parent' => $parent, 'deleted' => 0]);
$c->sortby('menuindex', 'ASC');
$options = !empty($scriptProperties['empty']) ? ['—=='] : [];
foreach ($modx->getIterator(modResource::class, $c) as $res) {
    $title = $res->get('pagetitle');
    if ($type === 'projects' && ($brand = $res->getTVValue('brand'))) {
        $title = $brand . ' — ' . $title;
    }
    $options[] = str_replace(['==', '||'], ' ', $title) . '==' . $res->get('id');
}
return implode('||', $options);
