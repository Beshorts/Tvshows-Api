
// add full height bg color on container-fluid if card-upcomings are less than 7 elements
if (document.querySelector(".genres").childElementCount <= 7) {
  document.querySelector(".container-fluid").style.height = "100vh";
};
