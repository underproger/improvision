<?php
// CLI bootstrap for MODX API scripts (dev only)
define('MODX_API_MODE', true);
require __DIR__ . '/../site/config.core.php';
require MODX_CORE_PATH . 'vendor/autoload.php';
use MODX\Revolution\modX;
$modx = new modX();
$modx->initialize('mgr');
$modx->setLogLevel(modX::LOG_LEVEL_ERROR);
$modx->setLogTarget('ECHO');
$modx->user = $modx->getObject(\MODX\Revolution\modUser::class, ['username' => 'admin']);
$modx->getService('lexicon', \MODX\Revolution\modLexicon::class);
