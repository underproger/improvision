<!-- ============================== LEAD FORM MODAL ============================== -->
<dialog class="modal" aria-labelledby="modal-title" data-modal>
  <div class="modal__box">
    <button class="modal__close" type="button" aria-label="{'imp.close' | lexicon}" data-modal-close>{include 'icon_close'}</button>
    <h2 class="modal__title" id="modal-title">{'imp.request' | lexicon}</h2>
    <p class="modal__text">{'imp.modal_text' | lexicon}</p>
    {include 'lead_form' variant='boxed' modal=1}
  </div>
</dialog>

<button class="to-top" type="button" aria-label="{'imp.to_top' | lexicon}" data-to-top>{include 'icon_arrow-up'}</button>
