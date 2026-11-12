{if $specs}
        <section class="specs" aria-labelledby="specs-title" data-reveal="{$side}">
          <h2 class="specs__title" id="specs-title">{'imp.specs' | lexicon}</h2>
          <dl class="specs__list">
{foreach $specs as $s}
            <div class="specs__row"><dt>{$s.label}</dt><dd>{$s.value}</dd></div>
{/foreach}
          </dl>
        </section>
{/if}
