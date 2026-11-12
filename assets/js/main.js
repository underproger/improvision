/* improvision — main.js (vanilla, no dependencies) */
(() => {
  'use strict';

  /* ------------------------------------------------------------------
   * UI strings (page language comes from <html lang>)
   * ---------------------------------------------------------------- */
  const STRINGS = {
    uk: {
      menuOpen: 'Відкрити меню',
      menuClose: 'Закрити меню',
      page: (n, total) => `Сторінка ${n} з ${total}`,
      shown: (n) => `Показано: <b>${n}</b>`,
      formInvalid: 'Будь ласка, заповніть імʼя та коректний номер телефону.',
      formOk: 'Дякуємо! Заявку надіслано — ми звʼяжемося з вами протягом робочого дня.',
      formFail: 'Не вдалося надіслати заявку. Спробуйте ще раз або зателефонуйте нам.',
    },
    en: {
      menuOpen: 'Open menu',
      menuClose: 'Close menu',
      page: (n, total) => `Page ${n} of ${total}`,
      shown: (n) => `Showing <b>${n}</b>`,
      formInvalid: 'Please enter your name and a valid phone number.',
      formOk: 'Thank you! Your request has been sent — we’ll get back to you within one business day.',
      formFail: 'Your request could not be sent. Please try again or give us a call.',
    },
    ru: {
      menuOpen: 'Открыть меню',
      menuClose: 'Закрыть меню',
      page: (n, total) => `Страница ${n} из ${total}`,
      shown: (n) => `Показано: <b>${n}</b>`,
      formInvalid: 'Пожалуйста, укажите имя и корректный номер телефона.',
      formOk: 'Спасибо! Заявка отправлена — мы свяжемся с вами в течение рабочего дня.',
      formFail: 'Не удалось отправить заявку. Попробуйте ещё раз или позвоните нам.',
    },
  };
  const T = STRINGS[(document.documentElement.lang || 'uk').slice(0, 2)] || STRINGS.uk;

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

  const reducedMotion = window.matchMedia('(prefers-reduced-motion: reduce)').matches;

  /* ------------------------------------------------------------------
   * Reveal on scroll
   *   [data-reveal]  — single element
   *   [data-stagger] — every direct child appears in turn
   * ---------------------------------------------------------------- */
  const revealGroups = [];

  $$('[data-stagger]').forEach((group) => {
    const kind = group.dataset.stagger || '';
    const children = Array.from(group.children).filter((el) => !el.hidden);
    children.forEach((child, i) => {
      if (!child.hasAttribute('data-reveal')) child.setAttribute('data-reveal', kind);
      child.style.setProperty('--i', String(Math.min(i, 8)));
    });
    revealGroups.push({ trigger: group, items: children });
  });

  $$('[data-reveal]').forEach((el) => {
    if (el.parentElement && el.parentElement.hasAttribute('data-stagger')) return;
    revealGroups.push({ trigger: el, items: [el] });
  });

  const showGroup = (g) => g.items.forEach((el) => el.classList.add('is-in'));

  if (!('IntersectionObserver' in window) || reducedMotion) {
    revealGroups.forEach(showGroup);
  } else {
    // element → group it reveals
    const targets = new Map();
    revealGroups.forEach((g) => {
      targets.set(g.trigger, g);
      // A stagger wrapper can be `display: contents` on mobile (hero, .section-head):
      // it has no box and never intersects, so each child is watched as well.
      g.items.forEach((el) => {
        if (el !== g.trigger && !targets.has(el)) targets.set(el, { trigger: el, items: [el] });
      });
    });
    const io = new IntersectionObserver(
      (entries) => {
        entries.forEach((entry) => {
          if (!entry.isIntersecting) return;
          showGroup(targets.get(entry.target));
          io.unobserve(entry.target);
        });
      },
      { rootMargin: '0px 0px -30px 0px', threshold: 0.05 },
    );
    targets.forEach((g, el) => io.observe(el));
  }

  /* ------------------------------------------------------------------
   * Count-up numbers: <span data-count="480">480</span>
   * ---------------------------------------------------------------- */
  const counters = $$('[data-count]');
  const runCounter = (el) => {
    const target = parseFloat(el.dataset.count);
    const duration = 1600;
    const start = performance.now();
    const tick = (now) => {
      const t = Math.min(1, (now - start) / duration);
      const eased = 1 - Math.pow(1 - t, 3);
      el.textContent = String(Math.round(target * eased));
      if (t < 1) requestAnimationFrame(tick);
    };
    el.textContent = '0';
    requestAnimationFrame(tick);
  };

  if (counters.length && 'IntersectionObserver' in window && !reducedMotion) {
    const cio = new IntersectionObserver(
      (entries) => {
        entries.forEach((entry) => {
          if (!entry.isIntersecting) return;
          runCounter(entry.target);
          cio.unobserve(entry.target);
        });
      },
      { threshold: 0.6 },
    );
    counters.forEach((el) => cio.observe(el));
  }

  /* ------------------------------------------------------------------
   * Tabs (company timeline)
   *   [data-tabs] > [data-tab="id"] buttons + [data-tab-panel="id"] panels
   * ---------------------------------------------------------------- */
  $$('[data-tabs]').forEach((root) => {
    const tabs = $$('[data-tab]', root);
    const panels = $$('[data-tab-panel]', root);

    const activate = (tab, focus) => {
      const id = tab.dataset.tab;
      tabs.forEach((t) => {
        const on = t === tab;
        t.classList.toggle('is-active', on);
        t.setAttribute('aria-selected', String(on));
        t.tabIndex = on ? 0 : -1;
      });
      panels.forEach((p) => {
        const on = p.dataset.tabPanel === id;
        if (on && p.hidden) {
          p.hidden = false;
          p.classList.remove('is-entering');
          void p.offsetWidth; // restart animation
          p.classList.add('is-entering');
        } else if (!on) {
          p.hidden = true;
        }
      });
      if (focus) tab.focus();
    };

    tabs.forEach((tab) => {
      tab.addEventListener('click', () => activate(tab));
      tab.addEventListener('keydown', (e) => {
        const enabled = tabs.filter((t) => !t.disabled);
        const idx = enabled.indexOf(tab);
        let next = null;
        if (e.key === 'ArrowRight') next = enabled[(idx + 1) % enabled.length];
        if (e.key === 'ArrowLeft') next = enabled[(idx - 1 + enabled.length) % enabled.length];
        if (next) {
          e.preventDefault();
          activate(next, true);
        }
      });
    });
  });

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
    burger.setAttribute('aria-label', open ? T.menuClose : T.menuOpen);
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
      // the track can be 0px wide for a moment (DevTools device toggle, hidden parent):
      // never divide by zero, never create more dots than slides
      const width = track.clientWidth;
      const count = width > 0 ? Math.min(items.length, Math.ceil((track.scrollWidth - 2) / width)) : 0;
      if (count === pages && dotsWrap.children.length) return;
      pages = count;
      dotsWrap.innerHTML = '';
      if (pages < 2) return;
      for (let i = 0; i < pages; i += 1) {
        const dot = document.createElement('button');
        dot.type = 'button';
        dot.className = 'slider__dot';
        dot.setAttribute('aria-label', T.page(i + 1, pages));
        dot.addEventListener('click', () => {
          const max = track.scrollWidth - track.clientWidth;
          track.scrollTo({ left: Math.min(max, i * track.clientWidth), behavior: 'smooth' });
        });
        dotsWrap.appendChild(dot);
      }
    };

    const update = () => {
      if (track.clientWidth <= 0) return;
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
      e.preventDefault(); // no text selection while dragging
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

    // no native drag of images / links
    track.addEventListener('dragstart', (e) => e.preventDefault());

    track.addEventListener('scroll', update, { passive: true });

    // recalc when the track or its items change size (logos load, rotate, resize)
    const refresh = () => {
      if (type === 'dots') buildDots();
      update();
    };
    if ('ResizeObserver' in window) {
      const ro = new ResizeObserver(refresh);
      ro.observe(track);
      items.forEach((item) => ro.observe(item));
    } else {
      window.addEventListener('resize', refresh);
      window.addEventListener('load', refresh);
    }

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
    const counter = $('[data-filter-count]');
    const counterInitial = counter ? counter.innerHTML : '';

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
      if (counter) {
        counter.innerHTML = value === 'all' ? counterInitial : T.shown(visible);
      }
    });
  }

  /* ------------------------------------------------------------------
   * Gallery (project page): main photo + thumbnails + arrows + swipe
   * ---------------------------------------------------------------- */
  $$('[data-gallery]').forEach((gallery) => {
    const image = $('[data-gallery-image]', gallery);
    const thumbs = $$('[data-gallery-thumb]', gallery);
    if (!image || !thumbs.length) return;
    let index = Math.max(0, thumbs.findIndex((t) => t.classList.contains('is-active')));

    const show = (i) => {
      index = (i + thumbs.length) % thumbs.length;
      const thumb = thumbs[index];
      thumbs.forEach((t) => {
        const on = t === thumb;
        t.classList.toggle('is-active', on);
        if (on) t.setAttribute('aria-current', 'true');
        else t.removeAttribute('aria-current');
      });
      const src = thumb.dataset.src;
      if (!src || image.getAttribute('src') === src) return;
      image.classList.add('is-loading');
      const preload = new Image();
      preload.onload = preload.onerror = () => {
        image.src = src;
        image.alt = thumb.dataset.alt || '';
        image.classList.remove('is-loading');
      };
      preload.src = src;
    };

    thumbs.forEach((thumb, i) => thumb.addEventListener('click', () => show(i)));
    const prev = $('[data-gallery-prev]', gallery);
    const next = $('[data-gallery-next]', gallery);
    if (prev) prev.addEventListener('click', () => show(index - 1));
    if (next) next.addEventListener('click', () => show(index + 1));

    gallery.addEventListener('keydown', (e) => {
      if (e.key === 'ArrowLeft') show(index - 1);
      if (e.key === 'ArrowRight') show(index + 1);
    });

    // swipe on touch screens
    let touchX = null;
    const main = image.parentElement;
    main.addEventListener('touchstart', (e) => { touchX = e.touches[0].clientX; }, { passive: true });
    main.addEventListener('touchend', (e) => {
      if (touchX === null) return;
      const dx = e.changedTouches[0].clientX - touchX;
      if (Math.abs(dx) > 40) show(index + (dx < 0 ? 1 : -1));
      touchX = null;
    });
  });

  /* ------------------------------------------------------------------
   * Table of contents: highlight the section in view
   * ---------------------------------------------------------------- */
  $$('[data-toc]').forEach((toc) => {
    const links = $$('a[href^="#"]', toc);
    const pairs = links
      .map((a) => [a, document.getElementById(a.getAttribute('href').slice(1))])
      .filter(([, t]) => t);
    if (!pairs.length) return;
    let current = null;
    const update = () => {
      // the last heading that has passed the top third of the screen
      const line = window.innerHeight * 0.35;
      let active = null;
      pairs.forEach(([a, t]) => {
        if (t.getBoundingClientRect().top <= line) active = a;
      });
      if (active === current) return;
      current = active;
      pairs.forEach(([a]) => {
        a.classList.toggle('is-active', a === active);
        if (a === active) a.setAttribute('aria-current', 'true');
        else a.removeAttribute('aria-current');
      });
    };
    let ticking = false;
    window.addEventListener(
      'scroll',
      () => {
        if (ticking) return;
        ticking = true;
        requestAnimationFrame(() => {
          update();
          ticking = false;
        });
      },
      { passive: true },
    );
    update();
  });

  /* ------------------------------------------------------------------
   * Lead form modal: every link to #contact / #lead-form opens it
   * (no-JS or no <dialog> support: the link scrolls to the page form)
   *   data-visit — preselects "site visit"; on a service page the
   *   current service is preselected.
   * ---------------------------------------------------------------- */
  const norm = (str) => str.replace(/\s+/g, ' ').trim();
  const modal = $('[data-modal]');
  const canModal = !!(modal && typeof modal.showModal === 'function');

  const openModal = ({ visit = false } = {}) => {
    const select = $('[data-modal-service]', modal);
    if (select) {
      let option = null;
      if (visit) {
        option = select.querySelector('[data-visit-option]');
      } else {
        const current = $('.service-menu [aria-current="page"]');
        if (current) option = Array.from(select.options).find((o) => norm(o.text) === norm(current.textContent));
      }
      if (option) {
        option.selected = true;
        select.dispatchEvent(new Event('change'));
      }
    }
    modal.showModal();
    document.body.classList.add('is-locked');
    const name = $('[name="name"]', modal);
    if (name && window.matchMedia('(hover: hover)').matches) name.focus();
  };

  if (canModal) {
    document.addEventListener('click', (e) => {
      const trigger = e.target.closest('a[href="#contact"], a[href="#lead-form"], [data-modal-open]');
      if (!trigger) return;
      e.preventDefault();
      setMenu(false);
      openModal({ visit: trigger.hasAttribute('data-visit') });
    });
    modal.addEventListener('click', (e) => {
      // click on the backdrop (outside the white box)
      if (e.target === modal || e.target.closest('[data-modal-close]')) modal.close();
    });
    modal.addEventListener('close', () => document.body.classList.remove('is-locked'));
  }

  /* ------------------------------------------------------------------
   * Back to top
   * ---------------------------------------------------------------- */
  const toTop = $('[data-to-top]');
  if (toTop) {
    const sync = () => toTop.classList.toggle('is-visible', window.scrollY > 600);
    sync();
    window.addEventListener('scroll', sync, { passive: true });
    toTop.addEventListener('click', () => {
      window.scrollTo({ top: 0, behavior: reducedMotion ? 'auto' : 'smooth' });
    });
  }

  /* ------------------------------------------------------------------
   * Gallery lightbox with zoom (project page)
   *   click / tap on the photo — zoom ×2.5 at that point, move the
   *   mouse (or drag a finger) to look around; arrows, ←/→, swipe.
   * ---------------------------------------------------------------- */
  const lightbox = $('[data-lightbox]');
  const galleryEl = $('[data-gallery]');
  if (lightbox && galleryEl && typeof lightbox.showModal === 'function') {
    const thumbs = $$('[data-gallery-thumb]', galleryEl);
    const img = $('[data-lightbox-img]', lightbox);
    const stage = $('[data-lightbox-stage]', lightbox);
    const counter = $('[data-lightbox-counter]', lightbox);
    const count = thumbs.length;
    let index = 0;
    let zoomed = false;

    const setOrigin = (x, y) => {
      const r = img.getBoundingClientRect();
      const px = Math.min(100, Math.max(0, ((x - r.left) / r.width) * 100));
      const py = Math.min(100, Math.max(0, ((y - r.top) / r.height) * 100));
      img.style.transformOrigin = `${px}% ${py}%`;
    };
    const setZoom = (on, x, y) => {
      if (on && x !== undefined) setOrigin(x, y);
      zoomed = on;
      lightbox.classList.toggle('is-zoomed', on);
    };
    const show = (i) => {
      index = (i + count) % count;
      const thumb = thumbs[index];
      setZoom(false);
      img.style.transformOrigin = '50% 50%';
      img.src = thumb.dataset.src;
      img.alt = thumb.dataset.alt || '';
      counter.textContent = `${index + 1} / ${count}`;
    };
    const open = () => {
      const active = thumbs.findIndex((t) => t.classList.contains('is-active'));
      show(active < 0 ? 0 : active);
      lightbox.showModal();
      document.body.classList.add('is-locked');
    };

    $('[data-gallery-image]', galleryEl).addEventListener('click', open);
    const zoomBtn = $('[data-gallery-zoom]', galleryEl);
    if (zoomBtn) zoomBtn.addEventListener('click', open);

    $('[data-lightbox-prev]', lightbox).addEventListener('click', () => show(index - 1));
    $('[data-lightbox-next]', lightbox).addEventListener('click', () => show(index + 1));
    $('[data-lightbox-close]', lightbox).addEventListener('click', () => lightbox.close());
    lightbox.addEventListener('keydown', (e) => {
      if (e.key === 'ArrowLeft') show(index - 1);
      if (e.key === 'ArrowRight') show(index + 1);
    });
    lightbox.addEventListener('close', () => {
      document.body.classList.remove('is-locked');
      setZoom(false);
      if (thumbs[index]) thumbs[index].click(); // keep the page gallery on the same photo
    });

    // pointer: tap/click = zoom toggle, drag while zoomed = pan, swipe = next/prev
    let start = null;
    let moved = false;
    stage.addEventListener('pointerdown', (e) => {
      start = { x: e.clientX, y: e.clientY };
      moved = false;
    });
    stage.addEventListener('pointermove', (e) => {
      if (start && Math.hypot(e.clientX - start.x, e.clientY - start.y) > 8) moved = true;
      if (zoomed && (e.pointerType === 'mouse' || start)) setOrigin(e.clientX, e.clientY);
    });
    stage.addEventListener('pointerup', (e) => {
      if (!start) return;
      const dx = e.clientX - start.x;
      const onImage = e.target === img;
      if (!moved) {
        if (onImage) setZoom(!zoomed, e.clientX, e.clientY);
        else if (!zoomed) lightbox.close(); // click on the dark area
      } else if (!zoomed && Math.abs(dx) > 50) {
        show(index + (dx < 0 ? 1 : -1));
      }
      start = null;
    });
    stage.addEventListener('pointercancel', () => {
      start = null;
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
        showStatus(T.formInvalid, true);
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
        showStatus(T.formOk);
      } catch (err) {
        showStatus(T.formFail, true);
      } finally {
        if (btn) btn.disabled = false;
      }
    });
  });
})();
