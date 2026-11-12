{extends 'template:Base'}

{block 'og_type'}article{/block}

{block 'preload'}
  <link rel="preload" as="image" href="/{$res.image}">
{/block}

{block 'json_ld'}
{set $postLd = [ [
  '@context' => 'https://schema.org',
  '@type' => 'BlogPosting',
  'headline' => $res.pagetitle,
  'description' => $res.description,
  'image' => ($site ~ $res.image),
  'datePublished' => ($res.publishedon | date : 'Y-m-d'),
  'author' => ['@type' => 'Organization', 'name' => ($res.author ?: ('imp.author_default' | lexicon))],
  'publisher' => ['@type' => 'Organization', 'name' => 'improvision', 'logo' => ['@type' => 'ImageObject', 'url' => ($site ~ 'assets/icons/logo.svg')] ],
  'mainEntityOfPage' => $url
] ]}
{$_modx->runSnippet('impJsonLd', ['extra' => ($postLd | toJSON)])}
{/block}

{block 'main'}
{set $blogUrl = $_modx->makeUrl($res.parent, '', '', 'abs')}
{set $tags = $res.tags | split : '||'}
{set $body = $_modx->runSnippet('impProse', ['html' => $res.content, 'toc' => 1])}
{set $toc = $_modx->runSnippet('impProse', ['html' => $res.content, 'mode' => 'toc'])}
{set $related = $_modx->getResources(
  ['parent' => $res.parent, 'published' => 1, 'deleted' => 0, 'id:!=' => $res.id],
  ['sortby' => 'publishedon', 'sortdir' => 'DESC', 'limit' => 3, 'includeTVs' => 'image,card_image,post_category,featured_text', 'tvPrefix' => '']
)}

  <!-- ============================== ARTICLE HEAD ============================== -->
  <section class="article-head">
    <div class="container" data-stagger>
{include 'breadcrumbs'}
      <h1 class="article-head__title">{$res.longtitle ?: $res.pagetitle}</h1>
      <p class="article-head__lead">{$res.introtext}</p>
      <ul class="article-meta">
{if $res.post_category}
        <li><a class="article-meta__tag" href="{$blogUrl}">{('imp.pcat_' ~ $res.post_category) | lexicon}</a></li>
{/if}
        <li class="article-meta__item"><img src="/assets/icons/ic-user.svg" width="20" height="23" alt="">{$res.author ?: ('imp.author_default' | lexicon)}</li>
        <li class="article-meta__item article-meta__item--muted"><img src="/assets/icons/ic-calendar.svg" width="22" height="23" alt=""><time datetime="{$res.publishedon | date : 'Y-m-d'}">{$_modx->runSnippet('impDate', ['date' => $res.publishedon])}</time></li>
{if $res.read_time}
        <li class="article-meta__item article-meta__item--muted"><img src="/assets/icons/ic-time.svg" width="22" height="22" alt=""><span><span class="visually-hidden">{'imp.read_time' | lexicon} </span>{$res.read_time} {'imp.min' | lexicon}</span></li>
{/if}
      </ul>
      <div class="article-head__media">
        <img src="/{$res.image}" {$_modx->runSnippet('impImg', ['src' => $res.image])} alt="{$res.image_alt | esc}" fetchpriority="high">
      </div>
    </div>
  </section>

  <!-- ============================== ARTICLE BODY ============================== -->
  <div class="article-layout">
    <div class="container container--article article-layout__grid">
      <article class="prose article-body">
        {$body}
{if $res.tags}
        <ul class="tags tags--article" data-stagger>
{foreach $tags as $t}
          <li><a class="tag" href="{$blogUrl}">{('imp.pcat_' ~ $t) | lexicon}</a></li>
{/foreach}
        </ul>
{/if}
      </article>

      <aside class="article-aside" aria-label="{'imp.toc_aside_aria' | lexicon}">
{if $toc}
        <nav class="toc" aria-labelledby="toc-title" data-toc data-reveal="right">
          <p class="toc__title" id="toc-title">{'imp.toc' | lexicon}</p>
          <ol class="toc__list">
{$toc}
          </ol>
        </nav>
{/if}
{include 'consult_card' side='right'}
      </aside>
    </div>
  </div>

{if $related}
  <!-- ============================== RELATED POSTS ============================== -->
  <section class="related-posts" aria-labelledby="related-title">
    <div class="container">
      <div class="section-head" data-stagger>
        <h2 class="title" id="related-title">{'imp.related_posts' | lexicon}</h2>
        <a class="btn btn--outline btn--fit" href="{$blogUrl}">{'imp.all_posts' | lexicon}{include 'icon_arrow'}</a>
      </div>
      <div class="posts-grid" data-stagger>
{foreach $related as $p}
{include 'card_post' p=$p}
{/foreach}
      </div>
    </div>
  </section>
{/if}

{include 'contact'}
{/block}
