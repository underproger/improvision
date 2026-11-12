{* Params: ctitle, ctext, cwide, side ('left'|'right') *}
        <div class="consult-card{if $cwide?} consult-card--wide{/if}" data-reveal="{$side ?: 'left'}">
          <p class="consult-card__title">{$ctitle ?: ('imp.consult_title' | lexicon)}</p>
          <p class="consult-card__text">{$ctext ?: ('imp.consult_text' | lexicon)}</p>
          <a class="btn btn--primary consult-card__btn" href="#contact">{'imp.request' | lexicon}{include 'icon_arrow'}</a>
        </div>
