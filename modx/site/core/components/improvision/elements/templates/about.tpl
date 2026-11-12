{extends 'template:Base'}

{block 'preload'}
  <link rel="preload" as="image" href="/{$res.image}">
{/block}

{block 'json_ld'}
{set $ld = [
  '@context' => 'https://schema.org',
  '@type' => 'BreadcrumbList',
  'itemListElement' => [
    ['@type' => 'ListItem', 'position' => 1, 'name' => ('imp.home' | lexicon), 'item' => $site],
    ['@type' => 'ListItem', 'position' => 2, 'name' => $res.pagetitle, 'item' => $url]
  ]
]}
  <script type="application/ld+json">{$ld | toJSON : 320}</script>
{/block}

{block 'main'}
{set $history = $res.history | fromJSON}
{set $team = $res.team | fromJSON}

  <!-- ============================== PAGE HEAD ============================== -->
  <section class="page-head">
    <div class="container" data-stagger>
{include 'breadcrumbs'}
      <h1 class="page-head__title">{($res.h1 ?: $res.pagetitle) | replace : "\n" : '<br class="br-desk"> '}</h1>
      <div class="page-head__media">
        <img src="/{$res.image}" {$_modx->runSnippet('impImg', ['src' => $res.image])} alt="{$res.image_alt | esc}" fetchpriority="high">
      </div>
    </div>
  </section>

  <!-- ============================== INTRO ============================== -->
  <section class="about-intro" aria-labelledby="intro-title">
    <div class="container">
      <div class="about-intro__grid">
        <div class="about-intro__content" data-stagger>
          <h2 class="title" id="intro-title">{$res.intro_title | replace : "\n" : '<br class="br-desk"> '}</h2>
          <p class="about-intro__lead">{$res.introtext}</p>
          {$res.content}
        </div>
        <div class="about-intro__mark" data-reveal="zoom">
          <svg viewBox="0 0 427 427" role="img" aria-label="{$res.mark_image_alt | esc}">
            <defs>
              <clipPath id="mark-clip">
                <path clip-rule="evenodd" d="M213.5 0C331.41 0 427 95.59 427 213.5C427 331.41 331.41 427 213.5 427C176.36 427 141.42 417.52 111.02 400.79L111.02 333.7C138.62 357.26 174.41 371.49 213.5 371.49C300.76 371.49 371.49 300.76 371.49 213.5C371.49 126.24 300.76 55.51 213.5 55.51L213.5 0M0 213.5C0 114.81 66.99 31.75 157.99 7.34L157.99 65.54C98.09 88.01 55.51 145.76 55.51 213.5L55.51 417.32L0 417.32L0 213.5"/>
                <path d="M287 213.5C287 254.09 254.09 287 213.5 287C172.91 287 140 254.09 140 213.5C140 172.91 172.91 140 213.5 140C254.09 140 287 172.91 287 213.5"/>
              </clipPath>
            </defs>
            <image href="/{$res.mark_image}" x="-297" y="0" width="759" height="427" clip-path="url(#mark-clip)" preserveAspectRatio="xMidYMid slice"/>
          </svg>
        </div>
      </div>
    </div>
  </section>

  <!-- ============================== STATS BAND ============================== -->
  <section class="stats stats--band" aria-label="{'imp.stats_aria' | lexicon}">
    <div class="container">
      <dl class="stats__list" data-stagger>
{include 'stats_items'}
      </dl>
    </div>
  </section>

  <!-- ============================== PROCESS ============================== -->
  <section class="process" aria-labelledby="process-title">
    <div class="container">
      <h2 class="title" id="process-title" data-reveal>{$res.process_title}</h2>
      <ul class="process__cards" data-stagger>
{include 'steps'}
      </ul>
    </div>
  </section>

{include 'why'}

{if $history}
  <!-- ============================== HISTORY ============================== -->
  <section class="history" aria-labelledby="history-title">
    <div class="container">
      <h2 class="title title--center" id="history-title" data-reveal>{$res.history_title}</h2>
      <div class="history__body" data-tabs data-reveal="fade">
{foreach $history as $h index=$i}
        <div class="history__panel" id="history-{$h.year}" role="tabpanel" aria-labelledby="history-tab-{$h.year}" data-tab-panel="{$h.year}"{if $i > 0} hidden{/if}>
          <div class="history__year" aria-hidden="true">{$h.year}</div>
          <div class="history__media">
{if $h.image1}
              <img src="/{$h.image1}" {$_modx->runSnippet('impImg', ['src' => $h.image1])} alt="{$h.alt1 | esc}" loading="lazy">
{/if}
{if $h.image2}
              <img src="/{$h.image2}" {$_modx->runSnippet('impImg', ['src' => $h.image2])} alt="{$h.alt2 | esc}" loading="lazy" class="is-right">
{/if}
          </div>
          <p class="history__caption">{$h.caption}</p>
        </div>
{/foreach}
        <div class="history__tabs" role="tablist" aria-label="{'imp.history_aria' | lexicon}">
{foreach $history as $h index=$i}
          <button class="history__tab{if $i == 0} is-active{/if}" type="button" role="tab" id="history-tab-{$h.year}" aria-controls="history-{$h.year}" aria-selected="{$i == 0 ? 'true' : 'false'}" tabindex="{$i == 0 ? '0' : '-1'}" data-tab="{$h.year}">{$h.year}</button>
{/foreach}
{if $res.history_soon}
          <span class="history__tab history__tab--soon">{$res.history_soon}</span>
{/if}
        </div>
      </div>
    </div>
  </section>
{/if}

{if $team}
  <!-- ============================== TEAM ============================== -->
  <section class="team" aria-labelledby="team-title">
    <div class="container team__grid">
      <div class="team__intro" data-stagger>
        <h2 class="title" id="team-title">{$res.team_title | replace : "\n" : '<br> '}</h2>
        <p class="team__text">{$res.team_text}</p>
      </div>
      <dl class="team__list" data-stagger>
{foreach $team as $t}
        <div class="team__item">
          <dt class="team__label">{$t.label | replace : "\n" : '<br> '}</dt>
          <dd class="team__value"><span data-count="{$t.value}">{$t.value}</span></dd>
        </div>
{/foreach}
      </dl>
    </div>
  </section>
{/if}

{include 'brands'}

{include 'contact'}
{/block}
