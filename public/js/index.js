// Or with jQuery
$(document).ready(function () {
  $(".carousel").carousel();
});

function changeBg(bg, title) {
  const banner = document.querySelector(".banner");
  const contents = document.querySelector(".content");
  banner.style.background = `url("/img/${bg}")`;
  banner.style.backgroundSize = "cover";
  banner.style.backgroundPosition = "center";

  contents.array.forEach((element) => {
    contents.classList.remove("active");
    if (contents.classList.contains(title)) {
      contents.classList.add("active");
    }
  });
}
