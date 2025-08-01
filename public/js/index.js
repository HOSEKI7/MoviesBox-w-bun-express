$(document).ready(function () {
  // Initialize carousel
  $(".carousel").carousel({
    padding: 100,
    fullWidth: false,
    indicators: true,
    onCycleTo: function (elem) {
      updateMovieContent($(elem).find(".movie-poster"));
    },
  });

  // Auto-play carousel
  setInterval(function () {
    $(".carousel").carousel("next");
  }, 5000);

  // Click handler for movie posters
  $(".movie-poster").on("click", function (e) {
    e.preventDefault();
    updateMovieContent($(this));
  });

  // Function to update movie content
  function updateMovieContent(posterElement) {
    const data = posterElement.data();
    const movieId = posterElement.closest(".carousel-item").data("movie-id");

    // Format duration
    const hours = Math.floor(data.duration / 60);
    const minutes = data.duration % 60;
    const formattedDuration = `${hours}h ${minutes}m`;

    // Update elements
    $(".banner").css({
      "background-image": `url("/img/${data.backgroundImg}")`,
      "background-size": "cover",
      "background-position": "center",
    });

    // Update movie title image - mengambil dari data attribute
    $("#movie_title_img").attr("src", `/img/${data.titleImg}`);

    // Update other info
    $("#release_year").text(data.releaseYear);
    $("#parental i").text(data.parental);
    $("#duration").text(formattedDuration);
    $("#genres").text(data.genres);
    $("#sinopsis").text(data.sinopsis);

    // Update buttons
    $(".buttons a:first").attr("href", `/watch/${movieId}`);
    $(".play").attr("href", data.trailerUrl);
  }

  // Initialize with first movie
  updateMovieContent($(".carousel-item.active .movie-poster"));
});
