{extends 'template:Base'}

{block 'preload'}
{set $gal0 = $res.gallery | fromJSON}
  <link rel="preload" as="image" href="/{$gal0[0].image ?: $res.card_image}">
{/block}

{block 'json_ld'}
{$_modx->runSnippet('impJsonLd')}
{/block}

{block 'main'}
{set $gallery = $res.gallery | fromJSON}
{if !$gallery}
{set $gallery = [ ['image' => $res.card_image, 'alt' => ($res.card_image_alt ?: ($res.brand ~ ' — ' ~ $res.pagetitle))] ]}
{/if}
{set $total = $gallery | length}
{set $checklist = $res.checklist | preg_split : '/\r?\n/'}
{set $tags = $res.directions | fromJSON}
{set $specs = $res.specs | fromJSON}
{set $others = $_modx->getResources(
  ['parent' => $res.parent, 'published' => 1, 'deleted' => 0, 'id:!=' => $res.id],
  ['sortby' => 'menuindex', 'sortdir' => 'ASC', 'limit' => 3, 'includeTVs' => 'brand,city,year,category,card_image,card_image_alt', 'tvPrefix' => '']
)}

  <!-- ============================== BREADCRUMBS ============================== -->
  <div class="page-crumbs">
    <div class="container">
{include 'breadcrumbs'}
    </div>
  </div>

  <!-- ============================== PROJECT HERO + GALLERY ============================== -->
  <section class="project-hero">
    <div class="container">
      <div data-stagger>
        <h1 class="project-hero__title">{$res.longtitle ?: $res.pagetitle}</h1>
{if $res.introtext}
        <p class="project-hero__text">{$res.introtext}</p>
{/if}
      </div>
      <div class="gallery" data-gallery data-reveal="fade">
        <div class="gallery__main">
          <img class="gallery__image" src="/{$gallery[0].image}" {$_modx->runSnippet('impImg', ['src' => $gallery[0].image])} alt="{$gallery[0].alt | esc}" fetchpriority="high" data-gallery-image>
{if $total > 1}
          <button class="gallery__nav gallery__nav--prev" type="button" aria-label="{'imp.photo_prev' | lexicon}" data-gallery-prev>{include 'icon_arrow-left'}</button>
          <button class="gallery__nav gallery__nav--next" type="button" aria-label="{'imp.photo_next' | lexicon}" data-gallery-next>{include 'icon_arrow-right'}</button>
{/if}
          <button class="gallery__zoom" type="button" aria-label="{'imp.photo_zoom' | lexicon}" data-gallery-zoom>{include 'icon_zoom'}</button>
        </div>
{if $total > 1}
        <div class="gallery__thumbs">
{foreach $gallery as $ph index=$i}
          <button class="gallery__thumb{if $i == 0} is-active{/if}" type="button" aria-label="{'imp.photo_n' | lexicon : ['n' => ($i + 1), 'total' => $total]}"{if $i == 0} aria-current="true"{/if} data-gallery-thumb data-src="/{$ph.image}" data-alt="{$ph.alt | esc}">
            <img src="/{$ph.image}" {$_modx->runSnippet('impImg', ['src' => $ph.image])} alt="" loading="lazy">
          </button>
{/foreach}
        </div>
{else}
        <div class="gallery__thumbs" hidden>
          <button class="gallery__thumb is-active" type="button" aria-current="true" data-gallery-thumb data-src="/{$gallery[0].image}" data-alt="{$gallery[0].alt | esc}" tabindex="-1"></button>
        </div>
{/if}
      </div>
    </div>
  </section>

  <!-- ============================== LIGHTBOX ============================== -->
  <dialog class="lightbox" aria-label="{'imp.lightbox_aria' | lexicon}" data-lightbox>
    <div class="lightbox__stage" data-lightbox-stage>
      <img class="lightbox__img" src="/{$gallery[0].image}" {$_modx->runSnippet('impImg', ['src' => $gallery[0].image])} alt="" data-lightbox-img>
    </div>
    <p class="lightbox__counter" aria-live="polite" data-lightbox-counter>1 / {$total}</p>
    <p class="lightbox__hint">{'imp.lightbox_hint' | lexicon}</p>
    <button class="lightbox__btn lightbox__close" type="button" aria-label="{'imp.close' | lexicon}" data-lightbox-close>{include 'icon_close'}</button>
    <button class="lightbox__btn lightbox__nav lightbox__nav--prev" type="button" aria-label="{'imp.photo_prev' | lexicon}" data-lightbox-prev{if $total < 2} hidden{/if}>{include 'icon_arrow-left'}</button>
    <button class="lightbox__btn lightbox__nav lightbox__nav--next" type="button" aria-label="{'imp.photo_next' | lexicon}" data-lightbox-next{if $total < 2} hidden{/if}>{include 'icon_arrow-right'}</button>
  </dialog>

  <!-- ============================== PROJECT BODY ============================== -->
{set $hasBody = $res.content || $res.checklist || $tags}
  <section class="project-body">
    <div class="container project-body__grid">
      <div class="{if $hasBody}prose {/if}project-body__content">
{if $hasBody}
        {$_modx->runSnippet('impProse', ['html' => $res.content])}
{if $res.checklist}
        <div class="checklist-box checklist-box--compact" data-reveal>
          <ul class="checklist checklist--single">
{foreach $checklist as $item}{if $item}
            <li>{$item}</li>
{/if}{/foreach}
          </ul>
        </div>
{/if}
{if $tags}
        <h3 class="project-body__subtitle" data-reveal>{'imp.project_directions' | lexicon}</h3>
        <ul class="tags" data-stagger>
{foreach $tags as $t}
{if $t.link}
          <li><a class="tag" href="{$_modx->makeUrl($t.link, '', '', 'abs')}">{$t.title}</a></li>
{else}
          <li><span class="tag">{$t.title}</span></li>
{/if}
{/foreach}
        </ul>
{/if}
{else}
{include 'project_specs' specs=$specs side='left'}
{/if}
      </div>

      <aside class="project-aside">
{if $hasBody}
{include 'project_specs' specs=$specs side='right'}
{/if}
{include 'consult_card' ctitle=('imp.similar_title' | lexicon) ctext=('imp.similar_text' | lexicon) cwide=1 side='right'}
      </aside>
    </div>
  </section>

{if $others}
  <!-- ============================== OTHER PROJECTS ============================== -->
  <section class="projects projects--related" aria-labelledby="projects-title">
    <div class="container">
      <div class="section-head" data-stagger>
        <h2 class="title" id="projects-title">{'imp.other_projects' | lexicon}</h2>
        <a class="btn btn--outline" href="{$_modx->makeUrl($res.parent, '', '', 'abs')}">{'imp.all_projects' | lexicon}{include 'icon_arrow'}</a>
      </div>
      <div class="projects__grid" data-stagger>
{foreach $others as $p}
{include 'card_project' p=$p}
{/foreach}
      </div>
    </div>
  </section>
{/if}

{include 'contact'}
{/block}
