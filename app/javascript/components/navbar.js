// RESPONSIVE NAVBAR

const navSlide = () => {
  const burgerMenu = document.querySelector('.burger-menu');
  const nav = document.querySelector('.nav-responsive');
  const navSecElements = document.querySelector('.nav-sec-elements');
  const navLinks = document.querySelectorAll('.nav-links li');

  burgerMenu.addEventListener('click', () => {
    // Toggle Nav
    nav.classList.toggle('nav-active');
    // Animate Links
    navLinks.forEach((link, index) => {
      if (link.style.animation) {
        link.style.animation = '';
      } else {
        link.style.animation = `navLinkFade 0.5s ease forwards ${index / 7 + 0.5
          }s`;
      }
    });
    // if (navSecElements.style.animation) {
    //   navSecElements.style.animation = '';
    // } else {
    //   navSecElements.style.animation = `navLinkFade 0.5s ease forwards 1s`;
    // }

    // Animate burger menu
    burgerMenu.classList.toggle('toggle');
  });
};

navSlide();