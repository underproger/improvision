{extends 'template:Base'}

{block 'preload'}
  <link rel="preload" as="image" href="/{$res.image}">
{/block}

{block 'json_ld'}
{set $svcLd = [ [
  '@context' => 'https://schema.org',
  '@type' => 'Service',
  'name' => ($res.menutitle ?: $res.pagetitle),
  'serviceType' => ($res.service_type ?: $res.pagetitle),
  'areaServed' => 'UA',
  'provider' => ['@type' => 'GeneralContractor', 'name' => 'improvision', 'url' => $site]
] ]}
{$_modx->runSnippet('impJsonLd', ['extra' => ($svcLd | toJSON)])}
{/block}

{block 'main'}
{set $checklist = $res.checklist | preg_split : '/\r?\n/'}
{set $stages = $res.stages | fromJSON}
{set $materials = $res.materials | fromJSON}
{set $relatedIds = $res.related_projects | split : '||'}

  <!-- ============================== BREADCRUMBS ============================== -->
  <div class="page-crumbs">
    <div class="container">
{include 'breadcrumbs'}
    </div>
  </div>

  <!-- ============================== SERVICE HERO ============================== -->
  <section class="service-hero">
    <div class="container service-hero__grid">
      <div class="service-hero__content" data-stagger>
{set $h1 = $res.h1 ?: $res.pagetitle}
{set $h1Class = $_modx->runSnippet('impHeroClass', ['text' => $h1])}
        <h1 class="service-hero__title{if $h1Class} {$h1Class}{/if}">{$h1 | replace : "\n" : '<br> '}</h1>
        <p class="service-hero__text">{$res.introtext}</p>
        <div class="service-hero__actions">
          <a class="btn btn--primary" href="#contact">{'imp.order_consult' | lexicon}{include 'icon_arrow'}</a>
          <a class="btn btn--outline-dark" href="#projects">{'imp.examples' | lexicon}{include 'icon_arrow'}</a>
        </div>
      </div>
      <div class="service-hero__media" data-reveal="right">
        <img src="/{$res.image}" {$_modx->runSnippet('impImg', ['src' => $res.image])} alt="{$res.image_alt | esc}" fetchpriority="high">
      </div>
    </div>
  </section>

  <!-- ============================== CONTENT ============================== -->
  <div class="service-layout">
    <div class="container service-layout__grid">

{include 'service_aside'}

      <article class="prose service-article">
        {$_modx->runSnippet('impProse', ['html' => $res.content])}

{if $res.checklist}
        <section class="checklist-box" aria-labelledby="included-title" data-reveal>
          <h3 class="checklist-box__title" id="included-title">{$res.checklist_title}</h3>
          <ul class="checklist">
{foreach $checklist as $item}{if $item}
            <li>{$item}</li>
{/if}{/foreach}
          </ul>
        </section>
{/if}

        {$_modx->runSnippet('impProse', ['html' => $res.content2])}

{if $res.callout}
        <div class="callout" data-reveal>
          <img class="callout__icon" src="/assets/icons/ic-contract-pen.svg" width="52" height="40" alt="">
          <p>{$res.callout | replace : "\n" : '<br class="br-desk"> '}</p>
        </div>
{/if}

        {$_modx->runSnippet('impProse', ['html' => $res.content3])}

{if $stages}
        <h3 data-reveal>{$res.stages_title}</h3>
        <ol class="stages" data-stagger>
{foreach $stages as $s index=$i}
          <li class="stage">
            <img class="stage__icon" src="/{$s.icon}" width="50" height="50" alt="" loading="lazy">
            <span class="stage__num" aria-hidden="true">{($i + 1) < 10 ? '0' : ''}{$i + 1}</span>
            <h4 class="stage__title">{$s.title}</h4>
            <p class="stage__text">{$s.text | replace : "\n" : '<br class="br-desk"> '}</p>
          </li>
{/foreach}
        </ol>
{/if}

{if $materials}
{set $active = 0}
{foreach $materials as $m index=$i}{if $m.active}{set $active = $i}{/if}{/foreach}
        <h3 data-reveal>{$res.materials_title}</h3>
{if $res.materials_lead}
        <p class="prose__lead" data-reveal>{$res.materials_lead}</p>
{/if}
        <div class="materials" data-tabs data-reveal>
          <div class="materials__list" role="tablist" aria-label="{($res.materials_aria ?: $res.materials_title) | esc}">
{foreach $materials as $m index=$i}
            <button class="materials__item{if $i == $active} is-active{/if}" type="button" role="tab" id="mat-tab-{$i}" aria-controls="mat-{$i}" aria-selected="{$i == $active ? 'true' : 'false'}" tabindex="{$i == $active ? '0' : '-1'}" data-tab="m{$i}">
              <span class="materials__name">{$m.name}</span>
              <span class="materials__text">{$m.text}</span>
            </button>
{/foreach}
          </div>
          <div class="materials__media">
{foreach $materials as $m index=$i}
            <img id="mat-{$i}" role="tabpanel" aria-labelledby="mat-tab-{$i}" data-tab-panel="m{$i}" src="/{$m.image}" {$_modx->runSnippet('impImg', ['src' => $m.image])} alt="{$m.alt | esc}" loading="lazy"{if $i != $active} hidden{/if}>
{/foreach}
          </div>
        </div>
{/if}
      </article>

    </div>
  </div>

{if $res.related_projects}
{set $related = $_modx->getResources(
  ['id:IN' => $relatedIds, 'published' => 1, 'deleted' => 0],
  ['sortby' => 'FIELD(modResource.id, ' ~ ($relatedIds | join : ',') ~ ')', 'sortdir' => '', 'limit' => 0, 'includeTVs' => 'brand,city,year,category,card_image,card_image_alt', 'tvPrefix' => '']
)}
  <!-- ============================== RELATED PROJECTS ============================== -->
  <section class="projects projects--related" id="projects" aria-labelledby="projects-title">
    <div class="container">
      <div class="section-head" data-stagger>
        <h2 class="title" id="projects-title">{'imp.related_service_projects' | lexicon}</h2>
        <a class="btn btn--outline" href="{$_modx->makeUrl($_modx->config['improvision.projects_id'], '', '', 'abs')}">{'imp.all_projects' | lexicon}{include 'icon_arrow'}</a>
      </div>
      <div class="projects__grid" data-stagger>
{foreach $related as $p}
{include 'card_project' p=$p}
{/foreach}
      </div>
    </div>
  </section>
{/if}

{include 'contact'}
{/block}
