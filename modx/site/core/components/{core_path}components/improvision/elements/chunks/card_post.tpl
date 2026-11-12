{* Blog post card. Params: $p (resource array with TVs image, category) *}
{set $href = $_modx->makeUrl($p.id, '', '', 'abs')}
        <article class="post-card" data-category="{$p.post_category}">
          <a class="post-card__media" href="{$href}" tabindex="-1" aria-hidden="true">
            <img src="/{$p.card_image ?: $p.image}" {$_modx->runSnippet('impImg', ['src' => ($p.card_image ?: $p.image)])} alt="" loading="lazy">
            <span class="post-card__tag">{("imp.pcat_" ~ $p.post_category) | lexicon}</span>
          </a>
          <div class="post-card__body">
            <time class="post-card__date" datetime="{$p.publishedon | date : 'Y-m-d'}">{$_modx->runSnippet('impDate', ['date' => $p.publishedon])}</time>
            <h3 class="post-card__title"><a href="{$href}">{$p.pagetitle}</a></h3>
            <p class="post-card__text">{$p.featured_text ?: $p.introtext}</p>
            <a class="btn btn--outline btn--card" href="{$href}">{'imp.read_post' | lexicon}{include 'icon_arrow'}<span class="visually-hidden">: {$p.pagetitle}</span></a>
          </div>
        </article>
