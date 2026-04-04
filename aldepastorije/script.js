// Navigatie scroll-effect & hamburger
document.addEventListener('DOMContentLoaded', () => {
  const nav = document.querySelector('nav');
  const hamburger = document.querySelector('.hamburger');
  const navLinks = document.querySelector('.nav-links');

  window.addEventListener('scroll', () => {
    nav.classList.toggle('scrolled', window.scrollY > 20);
  });

  if (hamburger) {
    hamburger.addEventListener('click', () => {
      navLinks.classList.toggle('open');
    });
  }

  // Sluit menu bij klik op link
  document.querySelectorAll('.nav-links a').forEach(a => {
    a.addEventListener('click', () => navLinks.classList.remove('open'));
  });
});

// Lightbox
function openLightbox(src) {
  const lb = document.getElementById('lightbox');
  if (lb) {
    lb.querySelector('img').src = src;
    lb.classList.add('open');
  }
}

function sluitLightbox() {
  const lb = document.getElementById('lightbox');
  if (lb) lb.classList.remove('open');
}

document.addEventListener('keydown', e => {
  if (e.key === 'Escape') sluitLightbox();
});

// FAQ accordion
function toggleFaq(knop) {
  const antwoord = knop.nextElementSibling;
  const pijl = knop.querySelector('.faq-pijl');
  const isOpen = antwoord.style.display === 'block';

  // Sluit alle andere FAQ-items
  document.querySelectorAll('.faq-antwoord').forEach(a => a.style.display = 'none');
  document.querySelectorAll('.faq-pijl').forEach(p => p.textContent = '+');

  if (!isOpen) {
    antwoord.style.display = 'block';
    if (pijl) pijl.textContent = '−';
  }
}
