{* Project card. Params: $p (resource array with TVs: brand, city, year, category, card_image, card_image_alt) *}
        <article class="project-card" data-category="{$p.category}">
          <a class="project-card__link" href="{$_modx->makeUrl($p.id, '', '', 'abs')}">
            <div class="project-card__media">
              <img src="/{$p.card_image}" {$_modx->runSnippet('impImg', ['src' => $p.card_image])} alt="{($p.card_image_alt ?: ($p.brand ~ ' — ' ~ $p.pagetitle)) | esc}" loading="lazy">
              <span class="project-card__tag">{('imp.cat_' ~ $p.category) | lexicon}</span>
            </div>
            <div class="project-card__body">
              <span class="project-card__brand">{$p.brand}</span>
              <h3 class="project-card__title">{$p.pagetitle}</h3>
              <span class="project-card__meta">{$p.city}{if $p.city && $p.year}, {/if}{$p.year}</span>
            </div>
          </a>
        </article>
