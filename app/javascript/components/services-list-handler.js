import servicesImageSwitch from "./services-section-image-switch";

const serviceListHandler = () => {
  // Data
  const servicesRawData =
    document.querySelector(".temp_information").dataset.services;
  const servicesData = JSON.parse(servicesRawData);

  // Selectors
  const serviceTabs = document.querySelectorAll(".services-tab");
  const servicesSelect = document.getElementById("services-select");
  const servicesRender = document.querySelector(".services-render");

  // HTML snippet
  const servicesHtml = (selectedService) => {
    return `
    <div class="services-description">
      <h5 class="services-description_indicator"> ${selectedService.name.toUpperCase()}</h5>
      <h3 class="services-description-header">${selectedService.title}</h3>
      <h6>${selectedService.description}</h6>
      <a href="/contacto" data-turbo="false">
          <h5 class="services-description_link">SABER MÁS ></h5>
      </a>
      </div>
      <div class="services-image">
      <img src=${
        selectedService.image
      } alt="Laptop navigating restaurant website image">
    </div>
    `;
  };

  // Adding default selected for first tab
  serviceTabs[0].classList.value = "services-tab services-tab--selected";

  const clickHandlerTabs = (event) => {
    serviceTabs.forEach((tab) => {
      tab.classList.value = "services-tab";
    });
    event.target.classList.value = "services-tab services-tab--selected";

    const selectedService = servicesData.find((s) => {
      return s.name.toLowerCase() === event.target.innerText.toLowerCase();
    });

    servicesRender.innerHTML = servicesHtml(selectedService);
  };

  const clickHandlerSelect = (event) => {
    const selectedService = servicesData.find((s) => {
      return s.name.toLowerCase() === event.target.value.toLowerCase();
    });

    servicesRender.innerHTML = servicesHtml(selectedService);
    servicesImageSwitch();
  };

  serviceTabs.forEach((tab) => {
    tab.addEventListener("click", clickHandlerTabs);
  });

  servicesSelect.addEventListener("change", clickHandlerSelect);
};

serviceListHandler();

// Testing turbolinks:load event
document.addEventListener("turbolinks:load", () => {
  console.log("hee");
});
