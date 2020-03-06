   // hide sidebar
  document.getElementById("sidebar").style.display = "none";
  // show sidebar click on genres menu
  document.getElementById("genres-nav").onclick = function() {
  document.getElementById("sidebar").style.display = "block";
};
// hide sidebar click on icon X
document.getElementById("closePanel").onclick = function() {
  document.getElementById("sidebar").style.display = "none";
};

