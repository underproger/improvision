{extends 'template:Base'}

{block 'json_ld'}
{$_modx->runSnippet('impJsonLd')}
{/block}

{block 'main'}
  <!-- ============================== PAGE INTRO ============================== -->
  <section class="page-intro">
    <div class="container" data-stagger>
{include 'breadcrumbs'}
      <h1 class="page-intro__title">{$res.longtitle ?: $res.pagetitle}</h1>
      <p class="page-intro__text">{$res.introtext}</p>
    </div>
  </section>

  <!-- ============================== CATALOG ============================== -->
  <section class="projects projects--catalog" aria-label="{'imp.projects_list_aria' | lexicon}">
    <div class="container">
[[!impCatalog? &parent=`{$res.id}` &tpl=`card_project` &limit=`9` &type=`projects`]]
      <div class="projects__bar">
{include 'project_filters'}
        <p class="projects__count" aria-live="polite" data-filter-count>[[!+imp.count]]</p>
      </div>
      <div class="projects__grid" data-filter-grid data-stagger>
[[!+imp.items]]
        <p class="projects__empty" hidden data-filter-empty>{'imp.empty_projects' | lexicon}</p>
      </div>
[[!+imp.pagination]]
    </div>
  </section>

{include 'contact'}
{/block}
