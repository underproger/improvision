<?php
/**
 * impImg — returns 'width="W" height="H"' for an image path relative to the site root.
 * Usage (Fenom): <img src="/{$src}" {$_modx->runSnippet('impImg', ['src' => $src])} alt="">
 * Sizes are cached (core/cache/improvision/imgsize).
 *
 * @var modX $modx
 * @var array $scriptProperties
 */
$src = ltrim((string)($scriptProperties['src'] ?? ''), '/');
if ($src === '' || preg_match('#^(https?:)?//#', $src)) {
    return '';
}
$src = strtok($src, '?');
$cacheOptions = [xPDO::OPT_CACHE_KEY => 'improvision/imgsize'];
$key = md5($src);
$size = $modx->cacheManager->get($key, $cacheOptions);
if (!is_array($size)) {
    $file = MODX_BASE_PATH . $src;
    $size = [0, 0];
    if (is_file($file)) {
        if (strtolower(pathinfo($file, PATHINFO_EXTENSION)) === 'svg') {
            $svg = @file_get_contents($file, false, null, 0, 2048);
            if ($svg && preg_match('/<svg[^>]*\swidth="([\d.]+)(?:px)?"[^>]*\sheight="([\d.]+)(?:px)?"/i', $svg, $m)) {
                $size = [(int)round($m[1]), (int)round($m[2])];
            } elseif ($svg && preg_match('/viewBox="[\d.\-]+\s+[\d.\-]+\s+([\d.]+)\s+([\d.]+)"/i', $svg, $m)) {
                $size = [(int)round($m[1]), (int)round($m[2])];
            }
        } elseif ($info = @getimagesize($file)) {
            $size = [$info[0], $info[1]];
        }
    }
    $modx->cacheManager->set($key, $size, 0, $cacheOptions);
}
return $size[0] ? 'width="' . $size[0] . '" height="' . $size[1] . '"' : '';
