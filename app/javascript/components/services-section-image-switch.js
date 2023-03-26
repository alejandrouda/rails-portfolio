const servicesImageSwitch = () => {
  const servicesImage = document.querySelector(".services-image");
  const servicesRender = document.querySelector(".services-render");
  // This function should toggle between beforebegin and beforeend taking 768px as breakpoint
  if (window.innerWidth <= 768) {
    servicesRender.insertAdjacentElement("afterbegin", servicesImage);
  }
  if (window.innerWidth > 768) {
    servicesRender.insertAdjacentElement("beforeend", servicesImage);
  }
};

servicesImageSwitch();
// // optimize performance, e.g setTimeOut 250ms
window.onresize = servicesImageSwitch;

export default servicesImageSwitch;
