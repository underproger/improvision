{* Category chips for projects (client-side filter). Categories = options of the "category" TV, labels from the lexicon *}
      <div class="projects__filters" role="group" aria-label="{'imp.filter_projects_aria' | lexicon}" data-filters data-reveal="fade">
        <button class="chip chip--all is-active" type="button" data-filter="all" aria-pressed="true">{'imp.filter_all' | lexicon}</button>
{foreach ['retail', 'restaurants', 'facades', 'business'] as $cat}
        <button class="chip{if $cat == 'business'} chip--wide{/if}" type="button" data-filter="{$cat}" aria-pressed="false">{('imp.cat_' ~ $cat) | lexicon}</button>
{/foreach}
      </div>
