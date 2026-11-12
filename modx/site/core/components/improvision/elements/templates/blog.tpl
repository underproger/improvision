{extends 'template:Base'}

{block 'json_ld'}
{$_modx->runSnippet('impJsonLd')}
{/block}

{block 'main'}
{set $featured = $_modx->getResources(
  ['parent' => $res.id, 'published' => 1, 'deleted' => 0, 'TVfeatured.value' => 1],
  ['sortby' => 'publishedon', 'sortdir' => 'DESC', 'limit' => 0, 'includeTVs' => 'image,card_image,post_category,featured,featured_text', 'tvPrefix' => '']
)}
  <!-- ============================== PAGE INTRO ============================== -->
  <section class="page-intro">
    <div class="container" data-stagger>
{include 'breadcrumbs'}
      <h1 class="page-intro__title">{$res.longtitle ?: $res.pagetitle}</h1>
      <p class="page-intro__text">{$res.introtext}</p>
    </div>
  </section>

{if $featured}
  <!-- ============================== FEATURED ============================== -->
  <section class="featured" aria-label="{'imp.featured_aria' | lexicon}">
    <div class="container">
      <div class="featured__slider" data-slider="dots" data-reveal="fade">
        <div class="slider__track featured__track" data-slider-track>
{foreach $featured as $p index=$i}
{set $href = $_modx->makeUrl($p.id, '', '', 'abs')}
{set $img = $p.card_image ?: $p.image}
          <article class="featured-post">
            <a class="featured-post__media" href="{$href}" tabindex="-1" aria-hidden="true">
              <img src="/{$img}" {$_modx->runSnippet('impImg', ['src' => $img])} alt=""{if $i == 0} fetchpriority="high"{else} loading="lazy"{/if} draggable="false">
              <span class="post-card__tag">{('imp.pcat_' ~ $p.post_category) | lexicon}</span>
            </a>
            <div class="featured-post__body">
              <time class="featured-post__date" datetime="{$p.publishedon | date : 'Y-m-d'}">{$_modx->runSnippet('impDate', ['date' => $p.publishedon])}</time>
              <h2 class="featured-post__title"><a href="{$href}">{$p.pagetitle}</a></h2>
              <p class="featured-post__text">{$p.featured_text ?: $p.introtext}</p>
              <a class="btn btn--outline btn--fit" href="{$href}">{'imp.read_post' | lexicon}{include 'icon_arrow'}<span class="visually-hidden">: {$p.pagetitle}</span></a>
            </div>
          </article>
{/foreach}
        </div>
        <div class="slider__dots featured__dots" data-slider-dots></div>
      </div>
    </div>
  </section>
{/if}

  <!-- ============================== POSTS ============================== -->
  <section class="blog-list" aria-label="{'imp.posts_list_aria' | lexicon}">
    <div class="container">
{include 'post_filters'}
[[!impCatalog? &parent=`{$res.id}` &tpl=`card_post` &limit=`9` &type=`posts`]]
      <div class="posts-grid" data-filter-grid data-stagger>
[[!+imp.items]]
        <p class="projects__empty" hidden data-filter-empty>{'imp.empty_posts' | lexicon}</p>
      </div>
[[!+imp.pagination]]
    </div>
  </section>
{/block}
