// Import Isotope and ImagesLoaded
import Isotope from 'isotope-layout';
import imagesLoaded from 'imagesloaded';

const portfolioFilters = () => {
  document.addEventListener('DOMContentLoaded', function () {
    imagesLoaded('.portfolio-container', function () {
      const elem = document.querySelector('.items-wrapper');
      const iso = new Isotope(elem, {
        itemSelector: '.item',
        masonry: {
          columnWidth: '.item',
        },
      });

      let filterButtons = document.querySelectorAll('.portfolio-buttons button');
      filterButtons.forEach((button) => {
        button.addEventListener('click', function (event) {
          let filterValue = event.target.getAttribute('data-filter');
          iso.arrange({
            filter: filterValue,
          });
        });
      });

      var buttons = document.querySelectorAll('.portfolio-buttons button');
      buttons.forEach((button) => {
        button.addEventListener('click', function () {
          buttons.forEach((btn) => btn.classList.remove('active-filter'));
          this.classList.add('active-filter');
        });
      });
    });
  });
}

portfolioFilters();
