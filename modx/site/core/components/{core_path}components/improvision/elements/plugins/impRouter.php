<?php
/**
 * impRouter — language versions by URL prefix (Babel contexts):
 *   /…      → context "web" (Ukrainian)
 *   /en/…   → context "en"
 *   /ru/…   → context "ru"
 * Also keeps site_url/base_url of the language contexts in line with the current domain,
 * so the site works on any host without editing context settings.
 * Event: OnHandleRequest.
 *
 * @var modX $modx
 */
if ($modx->event->name !== 'OnHandleRequest') {
    return;
}
$prefixes = ['en' => 'en', 'ru' => 'ru']; // URL prefix => context key

// 1. site_url / base_url of every language context follow the current host
$paths = ['web' => ''] + array_combine(array_values($prefixes), array_map(function ($p) { return $p . '/'; }, array_keys($prefixes)));
foreach ($paths as $ctxKey => $path) {
    if ($ctx = $modx->getContext($ctxKey)) {
        $ctx->config['site_url'] = MODX_SITE_URL . $path;
        $ctx->config['base_url'] = MODX_BASE_URL . $path;
    }
}
if ($modx->context->get('key') === 'mgr') {
    return;
}

// 2. route /en/… and /ru/… to their contexts
$param = $modx->getOption('request_param_alias', null, 'q');
$q = isset($_REQUEST[$param]) ? ltrim((string)$_REQUEST[$param], '/') : '';
$first = explode('/', $q, 2)[0];
if ($first === '' || !isset($prefixes[$first])) {
    return;
}
if ($q === $first) {
    // "/en" → "/en/"
    $qs = $_GET;
    unset($qs[$param]);
    $modx->sendRedirect(MODX_BASE_URL . $first . '/' . ($qs ? '?' . http_build_query($qs) : ''), ['responseCode' => 'HTTP/1.1 301 Moved Permanently']);
}
$modx->switchContext($prefixes[$first]);
$rest = (string)substr($q, strlen($first) + 1);
$_REQUEST[$param] = $_GET[$param] = $rest;