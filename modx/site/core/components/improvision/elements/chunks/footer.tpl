{* Footer: socials, legal links, contacts, company menu, services menu, developer credit; then modal + script *}
{set $exclude = [
  $_modx->config.site_start, $_modx->config['improvision.services_id'], $_modx->config['improvision.privacy_id'],
  $_modx->config['improvision.terms_id'], $_modx->config.error_page, $_modx->config['improvision.lead_id']
]}
{set $company = $_modx->getResources(
  ['parent' => 0, 'published' => 1, 'deleted' => 0, 'context_key' => $res.context_key, 'id:NOT IN' => $exclude],
  ['sortby' => 'menuindex', 'sortdir' => 'ASC', 'limit' => 0]
)}
{set $svcFoot = $_modx->getResources(
  ['parent' => $_modx->config['improvision.services_id'], 'published' => 1, 'deleted' => 0],
  ['sortby' => 'menuindex', 'sortdir' => 'ASC', 'limit' => 0]
)}
{set $legal = $_modx->getResources(
  ['id:IN' => [$_modx->config['improvision.privacy_id'], $_modx->config['improvision.terms_id'] ], 'published' => 1, 'deleted' => 0],
  ['sortby' => 'menuindex', 'sortdir' => 'ASC', 'limit' => 0]
)}
{set $socials = $g.socials | fromJSON}
<!-- ============================== FOOTER ============================== -->
<footer class="footer">
  <div class="container footer__grid">
    <div class="footer__brand">
{if $socials}
      <ul class="socials">
{foreach $socials as $s}
        <li><a class="socials__link" href="{$s.url}" target="_blank" rel="noopener">{$s.title}{include 'icon_arrow'}</a></li>
{/foreach}
      </ul>
{/if}
      <a class="footer__logo" href="{$_modx->makeUrl($_modx->config.site_start, '', '', 'abs')}" aria-label="{'imp.logo_aria' | lexicon}">{include 'icon_logo'}</a>
      <p class="footer__copy">{'imp.copyright' | lexicon : ['year' => ('now' | date : 'Y')]}</p>
{if $legal}
      <ul class="footer__legal">
{foreach $legal as $l}
        <li><a href="{$_modx->makeUrl($l.id, '', '', 'abs')}">{$l.menutitle ?: $l.pagetitle}</a></li>
{/foreach}
      </ul>
{/if}
      <a class="footer__dev" href="https://impulse-design.com.ua/" target="_blank" rel="dofollow">by<span class="visually-hidden"> Impulse Design</span>{include 'icon_impulse'}</a>
    </div>

    <div class="footer__contacts">
      <div class="footer__contact">
        <span class="footer__label">{'imp.phone' | lexicon}</span>
        <a class="footer__phone" href="tel:{$tel}">{$phone | replace : ' ' : '&nbsp;'}</a>
      </div>
      <div class="footer__contact">
        <span class="footer__label">{'imp.email' | lexicon}</span>
        <a href="mailto:{$g.email}">{$g.email}</a>
      </div>
      <div class="footer__contact">
        <span class="footer__label">{'imp.address' | lexicon}</span>
        <address>{$g.address}</address>
      </div>
    </div>

    <nav aria-label="{'imp.footer_company' | lexicon}">
      <span class="footer__label">{'imp.footer_company' | lexicon}</span>
      <ul class="footer__menu">
{foreach $company as $item}
        <li><a href="{$_modx->makeUrl($item.id, '', '', 'abs')}">{$item.menutitle ?: $item.pagetitle}</a></li>
{/foreach}
      </ul>
    </nav>

    <nav aria-label="{'imp.footer_services' | lexicon}">
      <span class="footer__label">{'imp.footer_services' | lexicon}</span>
      <ul class="footer__menu">
{foreach $svcFoot as $s}
        <li><a href="{$_modx->makeUrl($s.id, '', '', 'abs')}">{$s.menutitle ?: $s.pagetitle}</a></li>
{/foreach}
      </ul>
    </nav>
  </div>
</footer>

{include 'modal'}

<script src="/assets/js/main.js" defer></script>
