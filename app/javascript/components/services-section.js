const servicesElementSwitch = () => {
  const servicesImage = document.querySelector(".services-image");
  const servicesRender = document.querySelector(".services-render");

  // This function should toggle between beforebegin and beforeend taking 768px as breakpoint

  if (window.innerWidth <= 768) {
    servicesRender.insertAdjacentElement("beforebegin", servicesImage);
  }
  if (window.innerWidth > 768) {
    servicesRender.insertAdjacentElement("beforeend", servicesImage);
  }
};

servicesElementSwitch();

// optimize performance, e.g setTimeOut 250ms
window.onresize = servicesElementSwitch;

const tabHandler = () => {
  const servicesRawData =
    document.querySelector(".temp_information").dataset.services;
  const servicesData = JSON.parse(servicesRawData);
  const tabs = document.querySelectorAll(".services-tab");
  console.log(servicesData);
  // Adding default selected for first tab
  tabs[0].classList.value = "services-tab services-list--selected";

  const clickHandler = (event) => {
    tabs.forEach((tab) => {
      console.log(tab.classList.value);
      tab.classList.value = "services-tab";
    });
    event.target.classList.value = "services-tab services-list--selected";
  };

  tabs.forEach((tab) => {
    tab.addEventListener("click", clickHandler);
  });
};

tabHandler();
