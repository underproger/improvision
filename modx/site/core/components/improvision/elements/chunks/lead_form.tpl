{* Lead form. Params: variant = inline (contact block) | boxed (contacts page, modal); modal = 1 adds data-modal-service *}
{set $svcList = $_modx->getResources(
  ['parent' => $_modx->config['improvision.services_id'], 'published' => 1, 'deleted' => 0],
  ['sortby' => 'menuindex', 'sortdir' => 'ASC', 'limit' => 0]
)}
{set $phonePh = 'imp.form_phone_ph' | lexicon}
<form class="form{if $variant == 'boxed'} form--boxed{/if}" action="{$leadUrl}" method="post" novalidate data-form data-endpoint="{$leadUrl}">
{if $variant == 'boxed'}
            <label class="field">
              <span class="visually-hidden">{'imp.form_name' | lexicon}</span>
              <input class="field__control" type="text" name="name" placeholder="{'imp.form_name' | lexicon}" autocomplete="name" required>
            </label>
            <div class="form__row">
              <label class="field">
                <span class="visually-hidden">{'imp.form_phone' | lexicon}</span>
                <input class="field__control" type="tel" name="phone" placeholder="{$phonePh}" autocomplete="tel" inputmode="tel" required data-phone-mask>
              </label>
              <label class="field">
                <span class="visually-hidden">{'imp.form_email' | lexicon}</span>
                <input class="field__control" type="email" name="email" placeholder="{'imp.form_email' | lexicon}" autocomplete="email">
              </label>
            </div>
{else}
            <div class="form__row">
              <label class="field">
                <span class="visually-hidden">{'imp.form_name' | lexicon}</span>
                <input class="field__control" type="text" name="name" placeholder="{'imp.form_name' | lexicon}" autocomplete="name" required>
              </label>
              <label class="field">
                <span class="visually-hidden">{'imp.form_phone' | lexicon}</span>
                <input class="field__control" type="tel" name="phone" placeholder="{$phonePh}" autocomplete="tel" inputmode="tel" required data-phone-mask>
              </label>
            </div>
            <label class="field">
              <span class="visually-hidden">{'imp.form_email' | lexicon}</span>
              <input class="field__control" type="email" name="email" placeholder="{'imp.form_email' | lexicon}" autocomplete="email">
            </label>
{/if}
            <label class="field field--select">
              <span class="visually-hidden">{'imp.form_service' | lexicon}</span>
              <select class="field__control is-placeholder" name="service" data-select{if $modal} data-modal-service{/if}>
                <option value="" selected>{'imp.form_service' | lexicon}</option>
{if $variant == 'boxed'}
                <option data-visit-option>{'imp.form_visit' | lexicon}</option>
{/if}
{foreach $svcList as $s}
                <option>{$s.menutitle ?: $s.pagetitle}</option>
{/foreach}
                <option>{'imp.form_other' | lexicon}</option>
              </select>
            </label>
            <label class="field">
              <span class="visually-hidden">{'imp.form_message' | lexicon}</span>
              <textarea class="field__control" name="message" rows="{$variant == 'boxed' ? 3 : 2}" placeholder="{'imp.form_message' | lexicon}"></textarea>
            </label>
            <div class="form__hp" aria-hidden="true"><input type="text" name="website" tabindex="-1" autocomplete="off"></div>
            <input type="hidden" name="lang" value="{$lang}">
            <input type="hidden" name="page" value="{$url}">
{if $variant == 'boxed'}
            <button class="btn btn--primary form__submit" type="submit">{'imp.send' | lexicon}{include 'icon_arrow'}</button>
            <p class="form__consent form__consent--center">{'imp.form_consent' | lexicon : ['url' => $privacyUrl]}</p>
{else}
            <div class="form__footer">
              <button class="btn btn--primary" type="submit">{'imp.send' | lexicon}{include 'icon_arrow'}</button>
              <p class="form__consent">{'imp.form_consent' | lexicon : ['url' => $privacyUrl]}</p>
            </div>
{/if}
            <p class="form__status" role="status" aria-live="polite" hidden data-form-status></p>
          </form>
