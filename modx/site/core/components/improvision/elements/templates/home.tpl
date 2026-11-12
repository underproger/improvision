{extends 'template:Base'}

{block 'header'}{include 'header' solid=0}{/block}

{block 'preload'}
  <link rel="preload" as="image" href="/{$res.image}" imagesrcset="/{$res.image_960} 960w, /{$res.image} 1888w" imagesizes="100vw" media="(min-width: 768px)" fetchpriority="high">
  <link rel="preload" as="image" href="/{$res.image_mobile}" media="(max-width: 767.98px)" fetchpriority="high">
{/block}

{block 'json_ld'}
{set $ld = [
  '@context' => 'https://schema.org',
  '@type' => 'GeneralContractor',
  'name' => 'improvision',
  'url' => $url,
  'logo' => ($site ~ 'assets/icons/logo.svg'),
  'image' => ($site ~ $res.image),
  'description' => $res.ld_description ?: $res.description,
  'telephone' => $tel,
  'email' => $g.email,
  'address' => ['@type' => 'PostalAddress', 'streetAddress' => $g.map_street, 'addressLocality' => $g.map_city, 'addressCountry' => 'UA'],
  'areaServed' => 'UA'
]}
  <script type="application/ld+json">{$ld | toJSON : 320}</script>
{/block}

{block 'main'}
{set $features = $res.hero_features | fromJSON}
{set $services = $_modx->getResources(
  ['parent' => $_modx->config['improvision.services_id'], 'published' => 1, 'deleted' => 0],
  ['sortby' => 'home_order', 'sortdir' => 'ASC', 'limit' => 0, 'includeTVs' => 'card_image,card_text,home_order', 'tvPrefix' => '']
)}
{set $projects = $_modx->getResources(
  ['parent' => $_modx->config['improvision.projects_id'], 'published' => 1, 'deleted' => 0],
  ['sortby' => 'menuindex', 'sortdir' => 'ASC', 'limit' => 6, 'includeTVs' => 'brand,city,year,category,card_image,card_image_alt', 'tvPrefix' => '']
)}
  <!-- ============================== HERO ============================== -->
  <section class="hero">
    <!-- desktop: full-screen background; mobile (<768): photo between the text and the buttons -->
    <picture class="hero__picture">
      <source media="(max-width: 767.98px)" srcset="/{$res.image_mobile}" {$_modx->runSnippet('impImg', ['src' => $res.image_mobile])}>
      <img class="hero__bg" src="/{$res.image}" srcset="/{$res.image_960} 960w, /{$res.image} 1888w" sizes="100vw" {$_modx->runSnippet('impImg', ['src' => $res.image])} alt="{$res.image_alt | esc}" fetchpriority="high">
    </picture>
    <div class="container" data-stagger>
      <h1 class="hero__title">{($res.h1 ?: $res.pagetitle) | replace : "\n" : '<br class="br-desk"> '}</h1>
      <p class="hero__text">{$res.introtext}</p>
      <div class="hero__actions">
        <a class="btn btn--primary" href="#contact">{'imp.request' | lexicon}{include 'icon_arrow'}</a>
        <a class="btn btn--outline-light" href="{$_modx->makeUrl($_modx->config['improvision.projects_id'], '', '', 'abs')}">{'imp.view_projects' | lexicon}{include 'icon_arrow'}</a>
      </div>
{if $features}
      <ul class="hero__features">
{foreach $features as $f}
        <li class="hero__feature"><img src="/{$f.icon}" width="36" height="36" alt=""><span>{$f.text | replace : "\n" : '<br>'}</span></li>
{/foreach}
      </ul>
{/if}
    </div>
  </section>

{include 'brands'}
  <!-- ============================== ABOUT ============================== -->
  <section class="about" aria-labelledby="about-title">
    <div class="container about__grid">
      <div class="about__content" data-stagger>
        <h2 class="title" id="about-title">{$res.about_title | replace : "\n" : '<br> '}</h2>
        <p class="about__lead">{$res.about_lead}</p>
        <p>{$res.about_text}</p>
        <a class="btn btn--outline" href="#services">{'imp.our_services' | lexicon}{include 'icon_arrow'}</a>
      </div>
      <ul class="about__cards" data-stagger>
{include 'steps'}
      </ul>
    </div>
  </section>

  <!-- ============================== SERVICES ============================== -->
  <section class="services" id="services" aria-labelledby="services-title">
    <div class="container">
      <div class="section-head" data-stagger>
        <h2 class="title" id="services-title">{$res.services_title | replace : "\n" : '<br class="br-desk"> '}</h2>
        <a class="btn btn--outline" href="#contact">{'imp.get_consult' | lexicon}{include 'icon_arrow'}</a>
      </div>
      <div class="services__slider" data-slider="progress">
        <div class="slider__track services__track" data-slider-track data-stagger="right">
{foreach $services as $s index=$i}
          <article class="service-card">
            <a class="service-card__link" href="{$_modx->makeUrl($s.id, '', '', 'abs')}">
              <img class="service-card__img" src="/{$s.card_image}" {$_modx->runSnippet('impImg', ['src' => $s.card_image])} alt="" loading="lazy" draggable="false">
              <span class="service-card__num">{($i + 1) < 10 ? '0' : ''}{$i + 1}</span>
              <div class="service-card__body">
                <h3 class="service-card__title">{$s.menutitle ?: $s.pagetitle}</h3>
                <p class="service-card__text">{$s.card_text}</p>
              </div>
              <span class="service-card__arrow">{include 'icon_arrow'}</span>
            </a>
          </article>
{/foreach}
        </div>
        <div class="slider__progress" aria-hidden="true"><span data-slider-progress></span></div>
      </div>
    </div>
  </section>

{include 'why'}
  <!-- ============================== PROJECTS ============================== -->
  <section class="projects" aria-labelledby="projects-title">
    <div class="container">
      <div class="section-head" data-stagger>
        <h2 class="title" id="projects-title">{$res.projects_title}</h2>
        <a class="btn btn--outline" href="{$_modx->makeUrl($_modx->config['improvision.projects_id'], '', '', 'abs')}">{'imp.all_projects' | lexicon}{include 'icon_arrow'}</a>
      </div>
{include 'project_filters'}
      <div class="projects__grid" data-filter-grid data-stagger>
{foreach $projects as $p}
{include 'card_project' p=$p}
{/foreach}
        <p class="projects__empty" hidden data-filter-empty>{'imp.empty_projects' | lexicon}</p>
      </div>
    </div>
  </section>

  <!-- ============================== STATS ============================== -->
  <section class="stats" aria-labelledby="stats-title">
    <div class="container">
      <img class="stats__deco" src="/assets/icons/deco-mark.svg" width="427" height="427" alt="" aria-hidden="true">
      <div class="stats__grid">
        <div class="stats__intro" data-stagger>
          <h2 class="title title--light" id="stats-title">{$res.stats_title | replace : "\n" : '<br> '}</h2>
          <p class="stats__text">{$res.stats_text}</p>
        </div>
        <dl class="stats__list" data-stagger>
{include 'stats_items'}
        </dl>
      </div>
    </div>
  </section>

{include 'contact'}
{/block}
