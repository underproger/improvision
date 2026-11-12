  <!-- ============================== WHY US ============================== -->
  <section class="why" aria-labelledby="why-title">
    <img class="why__bg" src="/{$g.why_bg}" {$_modx->runSnippet('impImg', ['src' => $g.why_bg])} alt="" loading="lazy">
    <div class="container why__grid">
      <h2 class="title title--light" id="why-title" data-reveal>{$g.why_title | replace : "\n" : '<br class="br-desk"> '}</h2>
      <ul class="why__list" data-stagger>
{foreach ($g.why | fromJSON) as $w index=$i}
        <li class="why-card">
          <span class="why-card__num" aria-hidden="true">{($i + 1) < 10 ? '0' : ''}{$i + 1}</span>
          <h3 class="why-card__title">{$w.title}</h3>
          <p class="why-card__text">{$w.text}</p>
        </li>
{/foreach}
      </ul>
    </div>
  </section>
