/* improvision — main.js (vanilla, no dependencies) */
(() => {
  'use strict';

  const $ = (sel, ctx = document) => ctx.querySelector(sel);
  const $$ = (sel, ctx = document) => Array.from(ctx.querySelectorAll(sel));
  const mqDesktop = window.matchMedia('(min-width: 1200px)');

  /* ------------------------------------------------------------------
   * Header: white state after scroll (homepage hero is transparent)
   * Inner pages: add data-header-solid to <header> to keep it white.
   * ---------------------------------------------------------------- */
  const header = $('[data-header]');
  if (header) {
    const alwaysSolid = header.hasAttribute('data-header-solid');
    const update = () => {
      header.classList.toggle('is-solid', alwaysSolid || window.scrollY > 10);
    };
    update();
    window.addEventListener('scroll', update, { passive: true });
  }

  /* ------------------------------------------------------------------
   * Dropdowns (services menu, language switcher)
   * ---------------------------------------------------------------- */
  const dropdowns = $$('[data-dropdown]');

  const closeDropdown = (dd) => {
    dd.classList.remove('is-open');
    const t = $('[data-dropdown-toggle]', dd);
    if (t) t.setAttribute('aria-expanded', 'false');
  };

  dropdowns.forEach((dd) => {
    const toggle = $('[data-dropdown-toggle]', dd);
    if (!toggle) return;
    toggle.addEventListener('click', (e) => {
      e.preventDefault();
      const open = !dd.classList.contains('is-open');
      dropdowns.forEach((other) => other !== dd && closeDropdown(other));
      dd.classList.toggle('is-open', open);
      toggle.setAttribute('aria-expanded', String(open));
    });
  });

  document.addEventListener('click', (e) => {
    dropdowns.forEach((dd) => {
      if (!dd.contains(e.target)) closeDropdown(dd);
    });
  });

  /* ------------------------------------------------------------------
   * Mobile menu
   * ---------------------------------------------------------------- */
  const burger = $('[data-burger]');
  const nav = $('[data-nav]');

  const setMenu = (open) => {
    if (!burger || !nav) return;
    nav.classList.toggle('is-open', open);
    header && header.classList.toggle('is-menu-open', open);
    document.body.classList.toggle('is-locked', open);
    burger.setAttribute('aria-expanded', String(open));
    burger.setAttribute('aria-label', open ? 'Закрити меню' : 'Відкрити меню');
  };

  if (burger && nav) {
    burger.addEventListener('click', () => setMenu(!nav.classList.contains('is-open')));
    nav.addEventListener('click', (e) => {
      const link = e.target.closest('a');
      if (link) setMenu(false);
    });
    mqDesktop.addEventListener('change', (e) => e.matches && setMenu(false));
  }

  document.addEventListener('keydown', (e) => {
    if (e.key !== 'Escape') return;
    dropdowns.forEach(closeDropdown);
    setMenu(false);
  });

  /* ------------------------------------------------------------------
   * Sliders (native scroll-snap + dots / progress + mouse drag)
   *   data-slider="dots"     — paged, dots
   *   data-slider="progress" — free, progress bar
   * ---------------------------------------------------------------- */
  const initSlider = (root) => {
    const track = $('[data-slider-track]', root);
    if (!track) return;
    const items = Array.from(track.children);
    const type = root.dataset.slider;
    const dotsWrap = $('[data-slider-dots]', root);
    const progress = $('[data-slider-progress]', root);
    let pages = 1;

    // pages = how many "screens" the track holds (works with items of any width)
    const buildDots = () => {
      if (!dotsWrap) return;
      const count = Math.ceil((track.scrollWidth - 2) / track.clientWidth);
      if (count === pages && dotsWrap.children.length) return;
      pages = count;
      dotsWrap.innerHTML = '';
      if (pages < 2) return;
      for (let i = 0; i < pages; i += 1) {
        const dot = document.createElement('button');
        dot.type = 'button';
        dot.className = 'slider__dot';
        dot.setAttribute('aria-label', `Сторінка ${i + 1} з ${pages}`);
        dot.addEventListener('click', () => {
          const max = track.scrollWidth - track.clientWidth;
          track.scrollTo({ left: Math.min(max, i * track.clientWidth), behavior: 'smooth' });
        });
        dotsWrap.appendChild(dot);
      }
    };

    const update = () => {
      const max = track.scrollWidth - track.clientWidth;
      const ratio = max > 0 ? track.scrollLeft / max : 0;

      if (dotsWrap && pages > 1) {
        const active = Math.round(ratio * (pages - 1));
        $$('.slider__dot', dotsWrap).forEach((d, i) => d.classList.toggle('is-active', i === active));
      }

      if (progress) {
        const count = items.length || 1;
        const width = max > 0 ? 100 / count : 100;
        progress.style.width = `${width}%`;
        progress.style.left = `${ratio * (100 - width)}%`;
      }
    };

    // Mouse drag
    let startX = 0;
    let startScroll = 0;
    let dragging = false;
    let moved = false;

    track.addEventListener('pointerdown', (e) => {
      if (e.pointerType !== 'mouse' || e.button !== 0) return;
      startX = e.clientX;
      startScroll = track.scrollLeft;
      dragging = true;
      moved = false;
    });

    window.addEventListener('pointermove', (e) => {
      if (!dragging) return;
      const dx = e.clientX - startX;
      if (!moved && Math.abs(dx) > 5) {
        moved = true;
        track.classList.add('is-dragging');
      }
      if (moved) track.scrollLeft = startScroll - dx;
    });

    window.addEventListener('pointerup', () => {
      if (!dragging) return;
      dragging = false;
      if (!moved) return;
      // snap to the nearest item, then give snapping back to CSS
      const base = track.getBoundingClientRect().left;
      let delta = Infinity;
      items.forEach((item) => {
        const d = item.getBoundingClientRect().left - base;
        if (Math.abs(d) < Math.abs(delta)) delta = d;
      });
      const max = track.scrollWidth - track.clientWidth;
      const left = Math.max(0, Math.min(max, track.scrollLeft + (Number.isFinite(delta) ? delta : 0)));
      track.scrollTo({ left, behavior: 'smooth' });
      window.setTimeout(() => track.classList.remove('is-dragging'), 400);
    });

    // prevent click after drag
    track.addEventListener(
      'click',
      (e) => {
        if (moved) {
          e.preventDefault();
          e.stopPropagation();
          moved = false;
        }
      },
      true,
    );

    track.addEventListener('scroll', update, { passive: true });
    window.addEventListener('resize', () => {
      if (type === 'dots') buildDots();
      update();
    });

    if (type === 'dots') buildDots();
    update();
  };

  $$('[data-slider]').forEach(initSlider);

  /* ------------------------------------------------------------------
   * Projects filter
   * ---------------------------------------------------------------- */
  const filters = $('[data-filters]');
  const grid = $('[data-filter-grid]');
  if (filters && grid) {
    const cards = $$('[data-category]', grid);
    const empty = $('[data-filter-empty]', grid);

    filters.addEventListener('click', (e) => {
      const btn = e.target.closest('[data-filter]');
      if (!btn) return;
      const value = btn.dataset.filter;

      $$('[data-filter]', filters).forEach((b) => {
        const active = b === btn;
        b.classList.toggle('is-active', active);
        b.setAttribute('aria-pressed', String(active));
      });

      let visible = 0;
      cards.forEach((card) => {
        const show = value === 'all' || card.dataset.category === value;
        card.classList.toggle('is-hidden', !show);
        if (show) visible += 1;
      });
      if (empty) empty.hidden = visible > 0;
    });
  }

  /* ------------------------------------------------------------------
   * Phone mask: +38 (0XX) XXX-XX-XX
   * ---------------------------------------------------------------- */
  const PREFIX = '+38 (0';

  const phoneDigits = (value) => {
    let d = value.replace(/\D/g, '');
    if (d.startsWith('380')) d = d.slice(3);
    else if (d.startsWith('38')) d = d.slice(2);
    // the leading 0 is part of the prefix; operator codes never start with 0
    d = d.replace(/^0+/, '');
    return d.slice(0, 9);
  };

  const formatPhone = (d) => {
    let out = PREFIX + d.slice(0, 2);
    if (d.length >= 2) out += ') ';
    out += d.slice(2, 5);
    if (d.length > 5) out += `-${d.slice(5, 7)}`;
    if (d.length > 7) out += `-${d.slice(7, 9)}`;
    return out;
  };

  $$('[data-phone-mask]').forEach((input) => {
    let prev = '';
    input.addEventListener('focus', () => {
      if (!input.value) input.value = PREFIX;
    });
    input.addEventListener('blur', () => {
      if (!phoneDigits(input.value)) input.value = '';
    });
    input.addEventListener('input', (e) => {
      let d = phoneDigits(input.value);
      if (e.inputType && e.inputType.startsWith('delete') && d === prev) d = d.slice(0, -1);
      prev = d;
      input.value = formatPhone(d);
    });
  });

  /* ------------------------------------------------------------------
   * Select placeholder colour
   * ---------------------------------------------------------------- */
  $$('[data-select]').forEach((select) => {
    const sync = () => select.classList.toggle('is-placeholder', !select.value);
    select.addEventListener('change', sync);
    sync();
  });

  /* ------------------------------------------------------------------
   * Lead form (front-end validation; set data-endpoint to send)
   * ---------------------------------------------------------------- */
  $$('[data-form]').forEach((form) => {
    const status = $('[data-form-status]', form);
    const showStatus = (text, isError) => {
      if (!status) return;
      status.hidden = false;
      status.textContent = text;
      status.classList.toggle('is-error', !!isError);
    };

    const validate = () => {
      let ok = true;
      $$('.field__control', form).forEach((el) => {
        let valid = true;
        const val = el.value.trim();
        if (el.required && !val) valid = false;
        if (el.matches('[data-phone-mask]') && val && phoneDigits(val).length !== 9) valid = false;
        if (el.type === 'email' && val && !/^[^\s@]+@[^\s@]+\.[^\s@]+$/.test(val)) valid = false;
        el.classList.toggle('is-invalid', !valid);
        el.setAttribute('aria-invalid', String(!valid));
        if (!valid) ok = false;
      });
      return ok;
    };

    form.addEventListener('input', (e) => {
      if (e.target.classList.contains('is-invalid')) {
        e.target.classList.remove('is-invalid');
        e.target.removeAttribute('aria-invalid');
      }
    });

    form.addEventListener('submit', async (e) => {
      e.preventDefault();
      if (!validate()) {
        showStatus('Будь ласка, заповніть імʼя та коректний номер телефону.', true);
        const first = $('.is-invalid', form);
        if (first) first.focus();
        return;
      }

      const endpoint = form.dataset.endpoint;
      const btn = $('[type="submit"]', form);
      try {
        if (btn) btn.disabled = true;
        if (endpoint) {
          const res = await fetch(endpoint, { method: 'POST', body: new FormData(form) });
          if (!res.ok) throw new Error(String(res.status));
        }
        form.reset();
        $$('[data-select]', form).forEach((s) => s.classList.add('is-placeholder'));
        showStatus('Дякуємо! Заявку надіслано — ми звʼяжемося з вами протягом робочого дня.');
      } catch (err) {
        showStatus('Не вдалося надіслати заявку. Спробуйте ще раз або зателефонуйте нам.', true);
      } finally {
        if (btn) btn.disabled = false;
      }
    });
  });
})();
