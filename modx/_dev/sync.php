<?php
// Re-sync static elements from files into the DB (content field) and clear cache. DEV TOOL.
require __DIR__ . '/bootstrap.php';
use MODX\Revolution\{modTemplate, modChunk, modSnippet, modPlugin};
foreach ([modTemplate::class, modChunk::class, modSnippet::class, modPlugin::class] as $cls) {
    foreach ($modx->getCollection($cls, ['static' => 1]) as $el) {
        $file = str_replace('{core_path}', MODX_CORE_PATH, $el->get('static_file'));
        if (is_file($file)) { $el->setContent(file_get_contents($file)); $el->save(); }
    }
}
$modx->getCacheManager()->refresh();
echo "synced\n";
