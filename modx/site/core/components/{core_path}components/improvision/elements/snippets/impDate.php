<?php
/**
 * impDate — localized date "18 червня 2026" in the current context language.
 * &date — unix timestamp or date string; &lang — optional (defaults to cultureKey).
 *
 * @var modX $modx
 * @var array $scriptProperties
 */
$date = $scriptProperties['date'] ?? '';
$ts = is_numeric($date) ? (int)$date : strtotime((string)$date);
if (!$ts) {
    return '';
}
$lang = $scriptProperties['lang'] ?? $modx->getOption('cultureKey', null, 'uk');
$months = [
    'uk' => ['січня', 'лютого', 'березня', 'квітня', 'травня', 'червня', 'липня', 'серпня', 'вересня', 'жовтня', 'листопада', 'грудня'],
    'ru' => ['января', 'февраля', 'марта', 'апреля', 'мая', 'июня', 'июля', 'августа', 'сентября', 'октября', 'ноября', 'декабря'],
    'en' => ['January', 'February', 'March', 'April', 'May', 'June', 'July', 'August', 'September', 'October', 'November', 'December'],
];
$list = $months[$lang] ?? $months['uk'];
$m = $list[(int)date('n', $ts) - 1];
return $lang === 'en'
    ? $m . ' ' . date('j', $ts) . ', ' . date('Y', $ts)
    : date('j', $ts) . ' ' . $m . ' ' . date('Y', $ts);