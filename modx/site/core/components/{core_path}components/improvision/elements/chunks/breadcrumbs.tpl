{* Breadcrumbs: Home › parents › current. A weblink parent (Послуги) links to its target. *}
{set $crumbIds = $_modx->getParentIds($res.id) | reverse}
      <nav class="breadcrumbs" aria-label="{'imp.breadcrumbs' | lexicon}">
        <ol>
          <li><a href="{$_modx->makeUrl($_modx->config.site_start, '', '', 'abs')}">{'imp.home' | lexicon}</a></li>
{foreach $crumbIds as $pid}
{if $pid > 0 && $pid != $_modx->config.site_start}
{set $pr = $_modx->getResource($pid)}
{if $pr}
{if $pid == $_modx->config['improvision.services_id']}
{set $crumbUrl = $_modx->makeUrl($_modx->config.site_start, '', '', 'abs') ~ '#services'}
{else}
{set $crumbUrl = $_modx->makeUrl($pid, '', '', 'abs')}
{/if}
          <li><a href="{$crumbUrl}">{$pr.menutitle ?: $pr.pagetitle}</a></li>
{/if}
{/if}
{/foreach}
          <li><span aria-current="page">{$res.menutitle ?: $res.pagetitle}</span></li>
        </ol>
      </nav>
