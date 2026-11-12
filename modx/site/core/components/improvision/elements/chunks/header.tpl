{* Header: logo, main menu (top-level resources with "Показувати в меню"), services dropdown, phone, languages *}
{set $parents = $_modx->getParentIds($res.id)}
{set $svcId = $_modx->config['improvision.services_id']}
{set $menu = $_modx->getResources(
  ['parent' => 0, 'published' => 1, 'deleted' => 0, 'hidemenu' => 0, 'context_key' => $res.context_key],
  ['sortby' => 'menuindex', 'sortdir' => 'ASC', 'limit' => 0]
)}
{set $services = $_modx->getResources(
  ['parent' => $svcId, 'published' => 1, 'deleted' => 0, 'hidemenu' => 0],
  ['sortby' => 'menuindex', 'sortdir' => 'ASC', 'limit' => 0]
)}
{set $phoneHtml = $phone | replace : ' ' : '&nbsp;'}
<!-- ============================== HEADER ============================== -->
<header class="header" data-header{if $solid} data-header-solid{/if}>
  <div class="container header__inner">
    <a class="header__logo" href="{$_modx->makeUrl($_modx->config.site_start, '', '', 'abs')}" aria-label="{'imp.logo_aria' | lexicon}">{include 'icon_logo'}</a>

    <nav class="nav" id="site-nav" aria-label="{'imp.nav_aria' | lexicon}" data-nav>
      <ul class="nav__list">
{foreach $menu as $item}
{if $item.id == $svcId}
{set $isCur = $svcId in $parents}
        <li class="nav__item nav__item--dropdown" data-dropdown>
          <button class="nav__link nav__toggle{if $isCur} is-current{/if}" type="button" aria-expanded="false" aria-controls="nav-services" data-dropdown-toggle>
            {$item.menutitle ?: $item.pagetitle}<span class="nav__arrow">{include 'icon_chevron'}</span>
          </button>
          <ul class="nav__sub" id="nav-services">
{foreach $services as $s}
            <li><a href="{$_modx->makeUrl($s.id, '', '', 'abs')}"{if $s.id == $res.id} aria-current="page"{/if}>{$s.menutitle ?: $s.pagetitle}</a></li>
{/foreach}
          </ul>
        </li>
{else}
{set $isCur = $item.id == $res.id || $item.id in $parents}
        <li class="nav__item"><a class="nav__link{if $isCur} is-current{/if}" href="{$_modx->makeUrl($item.id, '', '', 'abs')}"{if $isCur} aria-current="page"{/if}>{$item.menutitle ?: $item.pagetitle}</a></li>
{/if}
{/foreach}
      </ul>
      <div class="nav__extra">
        <a class="nav__phone" href="tel:{$tel}">{$phoneHtml}</a>
        <a class="btn btn--primary" href="#contact" data-nav-close>{'imp.request' | lexicon}{include 'icon_arrow'}</a>
      </div>
    </nav>

    <div class="header__actions">
      <a class="header__phone" href="tel:{$tel}">{$phoneHtml}</a>
      <a class="header__call" href="tel:{$tel}" aria-label="{'imp.call_aria' | lexicon : ['phone' => $phone]}">{include 'icon_phone'}</a>
      <div class="lang" data-dropdown>
{foreach $langs as $l}{if $l.current}
        <button class="lang__current" type="button" aria-expanded="false" aria-controls="lang-list" aria-label="{'imp.lang_aria' | lexicon}" data-dropdown-toggle>{$l.label}{include 'icon_chevron'}</button>
{/if}{/foreach}
        <ul class="lang__list" id="lang-list">
{foreach $langs as $l}
          <li><a href="{$l.url}" lang="{$l.lang}" hreflang="{$l.lang}"{if $l.current} aria-current="true"{/if}>{$l.label}</a></li>
{/foreach}
        </ul>
      </div>
      <a class="btn btn--white btn--sm header__cta" href="#contact">{'imp.request' | lexicon}{include 'icon_arrow'}</a>
      <button class="burger" type="button" aria-label="{'imp.menu_open' | lexicon}" aria-expanded="false" aria-controls="site-nav" data-burger><span></span></button>
    </div>
  </div>
</header>
