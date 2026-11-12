<?php
/**
 * impHeroClass — extra class for a long service title, so long words do not break mid-word:
 * "service-hero__title--xlong" (a word longer than 15 letters) or "service-hero__title--long"
 * (a word longer than 12 letters or the whole title longer than 24 characters).
 * &text — the title (newlines / <br> allowed).
 *
 * @var array $scriptProperties
 */
$text = (string)($scriptProperties['text'] ?? '');
$text = preg_replace('/<[^>]+>/u', ' ', $text);
$text = str_replace(["\u{00a0}", '&nbsp;'], ' ', $text);
$text = trim(preg_replace('/\s+/u', ' ', $text));
$longest = 0;
foreach (explode(' ', $text) as $word) {
    $longest = max($longest, mb_strlen($word));
}
if ($longest > 15) {
    return 'service-hero__title--xlong';
}
if ($longest > 12 || mb_strlen($text) > 24) {
    return 'service-hero__title--long';
}
return '';