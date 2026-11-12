{foreach ($g.stats | fromJSON) as $s}
          <div class="stats__item">
            <dt class="stats__label">{$s.label | replace : "\n" : '<br> '}</dt>
            <dd class="stats__value"><span data-count="{$s.value}">{$s.value}</span>{if $s.plus}+{/if}{if $s.unit} <small>{$s.unit | replace : '²' : '<sup>2</sup>'}</small>{/if}</dd>
          </div>
{/foreach}
