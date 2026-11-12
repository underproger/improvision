      <div class="projects__filters" role="group" aria-label="{'imp.filter_posts_aria' | lexicon}" data-filters data-reveal="fade">
        <button class="chip chip--all is-active" type="button" data-filter="all" aria-pressed="true">{'imp.filter_all' | lexicon}</button>
{foreach ['construction', 'ads', 'facades', 'tips'] as $cat}
        <button class="chip" type="button" data-filter="{$cat}" aria-pressed="false">{('imp.pcat_' ~ $cat) | lexicon}</button>
{/foreach}
      </div>
