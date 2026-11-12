{set $asideSvc = $_modx->getResources(
  ['parent' => $_modx->config['improvision.services_id'], 'published' => 1, 'deleted' => 0],
  ['sortby' => 'menuindex', 'sortdir' => 'ASC', 'limit' => 0]
)}
      <aside class="service-aside">
        <h2 class="service-aside__title">{'imp.other_services' | lexicon}</h2>
        <nav class="service-menu" aria-label="{'imp.services_list_aria' | lexicon}" data-reveal="left">
          <ul>
{foreach $asideSvc as $s}
{if $s.id == $res.id}
            <li class="is-current"><a href="{$_modx->makeUrl($s.id, '', '', 'abs')}" aria-current="page">{$s.menutitle ?: $s.pagetitle}</a></li>
{else}
            <li><a href="{$_modx->makeUrl($s.id, '', '', 'abs')}">{$s.menutitle ?: $s.pagetitle}</a></li>
{/if}
{/foreach}
          </ul>
        </nav>
{include 'consult_card' side='left'}
      </aside>
