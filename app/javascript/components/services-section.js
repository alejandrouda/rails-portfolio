const servicesElementSwitch = () => {
  const servicesImage = document.querySelector(".services-image");
  const servicesRender = document.querySelector(".services-render");

  // This function should toggle between beforebegin and beforeend taking 768px as breakpoint

  if (window.innerWidth <= 768) {
    console.log("Matched!");
    servicesRender.insertAdjacentElement("beforebegin", servicesImage);
  }
};

servicesElementSwitch();
