{set $brands = $g.brands | fromJSON}
  <!-- ============================== BRANDS ============================== -->
  <section class="brands" aria-labelledby="brands-title">
    <div class="container">
      <h2 class="brands__title" id="brands-title" data-reveal="fade">{$g.brands_title}</h2>
      <div class="brands__slider" data-slider="dots">
        <ul class="slider__track brands__track" data-slider-track data-stagger="fade">
{foreach $brands as $b}
          <li class="brands__item"><img src="/{$b.image}" {$_modx->runSnippet('impImg', ['src' => $b.image])} alt="{$b.alt | esc}" loading="lazy"></li>
{/foreach}
        </ul>
        <div class="slider__dots" data-slider-dots></div>
      </div>
    </div>
  </section>
