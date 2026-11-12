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
{if $res.introtext}
      <p class="page-intro__text">{$res.introtext}</p>
{/if}
    </div>
  </section>

  <div class="text-page">
    <div class="container">
      <div class="prose">
        {$_modx->runSnippet('impProse', ['html' => $res.content])}
      </div>
    </div>
  </div>
{if $res.show_contact}
{include 'contact'}
{/if}
{/block}
