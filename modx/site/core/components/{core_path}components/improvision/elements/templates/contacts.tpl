{extends 'template:Base'}

{block 'json_ld'}
{set $orgLd = [ [
  '@context' => 'https://schema.org',
  '@type' => 'GeneralContractor',
  'name' => 'improvision',
  'url' => $site,
  'telephone' => $tel,
  'email' => $g.email,
  'address' => ['@type' => 'PostalAddress', 'streetAddress' => $res.map_address, 'addressLocality' => $res.map_city, 'addressCountry' => 'UA'],
  'openingHours' => ($res.opening_hours ?: 'Mo-Fr 09:00-18:00')
] ]}
{$_modx->runSnippet('impJsonLd', ['extra' => ($orgLd | toJSON)])}
{/block}

{block 'main'}
{set $cards = $res.contact_cards | fromJSON}
{set $depts = $res.depts | fromJSON}
{set $mapQuery = $res.map_query | escape : 'url'}
  <!-- ============================== PAGE INTRO + CARDS ============================== -->
  <section class="page-intro page-intro--contacts">
    <div class="container">
      <div data-stagger>
{include 'breadcrumbs'}
        <h1 class="page-intro__title">{$res.longtitle ?: $res.pagetitle}</h1>
        <p class="page-intro__text">{$res.introtext}</p>
      </div>
{if $cards}
      <ul class="contact-cards" data-stagger>
{foreach $cards as $c}
        <li class="contact-card">
          <img class="contact-card__icon" src="/{$c.icon}" {$_modx->runSnippet('impImg', ['src' => $c.icon])} alt="">
          <h2 class="contact-card__title">{$c.title}</h2>
{if $c.link}
          <a class="contact-card__value" href="{$c.link}">{$c.value | replace : "\n" : '<br> '}</a>
{elseif $c.address}
          <address class="contact-card__value">{$c.value | replace : "\n" : '<br> '}</address>
{else}
          <p class="contact-card__value">{$c.value | replace : "\n" : '<br> '}</p>
{/if}
{if $c.note}
          <p class="contact-card__note">{$c.note}</p>
{/if}
        </li>
{/foreach}
      </ul>
{/if}
    </div>
  </section>

  <!-- ============================== VISIT + DEPARTMENTS + FORM ============================== -->
  <section class="contact-main" id="contact" aria-label="{'imp.contacts_aria' | lexicon}">
    <div class="container contact-main__grid">
      <div class="contact-main__col">
        <div class="visit-card" data-reveal="left">
          <div class="visit-card__head">
            <h2 class="visit-card__title">{$res.visit_title}</h2>
{if $res.visit_badge}
            <span class="visit-card__badge">{$res.visit_badge}</span>
{/if}
          </div>
          <p class="visit-card__text">{$res.visit_text}</p>
          <a class="btn btn--primary visit-card__btn" href="#lead-form" data-visit>{'imp.order_visit' | lexicon}{include 'icon_arrow'}</a>
        </div>
{if $depts}
        <div class="depts" data-reveal="left">
          <div class="depts__head">
            <h2 class="depts__title">{$res.depts_title}</h2>
            <img src="/assets/icons/ic-mail.svg" width="34" height="32" alt="">
          </div>
          <dl class="depts__list">
{foreach $depts as $d}
            <div class="depts__row"><dt>{$d.label}</dt><dd><a href="mailto:{$d.email}">{$d.email}</a></dd></div>
{/foreach}
          </dl>
        </div>
{/if}
      </div>

      <div class="lead-card" id="lead-form" data-reveal="right">
        <h2 class="lead-card__title">{$res.lead_title ?: ('imp.request' | lexicon)}</h2>
        <p class="lead-card__text">{$res.lead_text}</p>
        {include 'lead_form' variant='boxed' modal=0}
      </div>
    </div>
  </section>

  <!-- ============================== MAP ============================== -->
  <section class="map" aria-label="{'imp.map_aria' | lexicon}">
    <div class="map__frame" data-map>
      <img class="map__placeholder" src="/{$res.map_image ?: 'assets/img/photos/map-placeholder.jpg'}" width="1417" height="629" alt="" loading="lazy">
      <iframe class="map__iframe" title="{'imp.map_title' | lexicon : ['address' => ($res.map_address ~ ', ' ~ $res.map_city)] | esc}" src="https://maps.google.com/maps?q={$mapQuery}&amp;z=16&amp;hl={$lang}&amp;output=embed" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
    </div>
    <div class="map__card">
      <p class="map__name">{$res.map_name ?: 'Improvision'}</p>
      <p class="map__address">{$res.map_address}</p>
      <p class="map__city">{$res.map_city}</p>
      <a class="map__route" href="https://www.google.com/maps/dir/?api=1&amp;destination={$mapQuery}" target="_blank" rel="noopener">{'imp.route' | lexicon}{include 'icon_arrow'}</a>
    </div>
  </section>
{/block}
