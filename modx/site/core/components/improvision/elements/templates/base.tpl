{* =====================================================================
   Base layout (not assigned to resources). Page templates extend it:
   {extends 'template:Base'} and override blocks: head, json_ld, main.
   ===================================================================== *}
{$_modx->lexicon->load('improvision:default')}
{set $res = $_modx->resource}
{set $ctx = $res.context_key}
{set $lang = $_modx->config.cultureKey}
{set $site = $_modx->makeUrl($_modx->config.site_start, '', '', 'full')}
{set $g = $_modx->getResource($_modx->config['improvision.globals_id'], [
  'includeTVs' => 'phone,email,address,socials,brands_title,brands,steps,why_title,why_bg,why,stats,contact_title,contact_text,contact_image,contact_image_alt,map_street,map_city',
  'tvPrefix' => '',
  'decodeJSON' => false
])}
{set $phone = $g.phone}
{set $tel = $phone | preg_replace : '/[^0-9+]/' : ''}
{set $leadUrl = $_modx->makeUrl($_modx->config['improvision.lead_id'], 'web', '', 'abs')}
{set $privacyUrl = $_modx->makeUrl($_modx->config['improvision.privacy_id'], '', '', 'abs')}
{set $langs = $_modx->runSnippet('impLangs') | fromJSON}
{set $url = $_modx->makeUrl($res.id, '', '', 'full')}
{set $pageName = $res.longtitle ?: $res.pagetitle}
{set $seoTitle = $res.seo_title ?: (($pageName | length) > 56 ? $pageName : ($pageName ~ ' — improvision'))}
{set $ogImage = $res.og_image ?: ($res.image ?: 'assets/img/photos/hero.jpg')}
{set $locales = ['uk' => 'uk_UA', 'en' => 'en_US', 'ru' => 'ru_UA']}
<!DOCTYPE html>
<html lang="{$lang}">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>{$seoTitle}</title>
{if $res.description}
  <meta name="description" content="{$res.description | esc}">
{/if}
  <link rel="canonical" href="{$url}">
  <meta name="theme-color" content="#052342">

  <meta property="og:type" content="{block 'og_type'}website{/block}">
  <meta property="og:locale" content="{$locales[$lang]}">
  <meta property="og:site_name" content="improvision">
  <meta property="og:title" content="{($res.og_title ?: $seoTitle) | esc}">
{if $res.og_description ?: $res.description}
  <meta property="og:description" content="{($res.og_description ?: $res.description) | esc}">
{/if}
  <meta property="og:url" content="{$url}">
  <meta property="og:image" content="{$_modx->config.site_url | preg_replace : '#/(en|ru)/$#' : '/'}{$ogImage}">

{block 'preload'}{/block}
  <link rel="preload" href="/assets/fonts/manrope-cyrillic-wght-normal.woff2" as="font" type="font/woff2" crossorigin>
  <link rel="stylesheet" href="/assets/css/main.css">
  <link rel="icon" href="/assets/icons/favicon.svg" type="image/svg+xml">
  <script>document.documentElement.classList.add('js');</script>
{foreach $langs as $l}
  <link rel="alternate" hreflang="{$l.lang}" href="{$l.url}">
{/foreach}
{foreach $langs as $l}{if $l.lang == 'uk'}
  <link rel="alternate" hreflang="x-default" href="{$l.url}">
{/if}{/foreach}
{block 'json_ld'}{/block}
</head>
<body>

{block 'header'}{include 'header' solid=1}{/block}

<main>
{block 'main'}{/block}
</main>

{include 'footer'}
</body>
</html>
