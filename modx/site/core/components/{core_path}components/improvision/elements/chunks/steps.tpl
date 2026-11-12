{foreach ($g.steps | fromJSON) as $s}
        <li class="step-card">
          <img class="step-card__icon" src="/{$s.icon}" {$_modx->runSnippet('impImg', ['src' => $s.icon])} alt="" loading="lazy">
          <h3 class="step-card__title">{$s.title}</h3>
          <p class="step-card__text">{$s.text}</p>
        </li>
{/foreach}
