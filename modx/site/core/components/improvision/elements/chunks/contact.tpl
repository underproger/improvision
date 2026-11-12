  <!-- ============================== CONTACT FORM ============================== -->
  <section class="contact" id="contact" aria-labelledby="contact-title">
    <div class="container contact__container">
      <div class="contact__grid">
        <div class="contact__media" data-reveal="left">
          <img src="/{$g.contact_image}" {$_modx->runSnippet('impImg', ['src' => $g.contact_image])} alt="{$g.contact_image_alt | esc}" loading="lazy">
        </div>
        <div class="contact__body" data-stagger>
          <h2 class="title" id="contact-title">{$g.contact_title}</h2>
          <p class="contact__text">{$g.contact_text}</p>
          {include 'lead_form' variant='inline' modal=0}
        </div>
      </div>
    </div>
  </section>
