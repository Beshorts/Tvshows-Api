const = results = document.querySelector("#results");

fetch("https://api.tvmaze.com/search/shows?q=watchmen")
.then(response => response.json())
.then((data) => {
  data.Search.forEach((result) => {
    const movie = `<img src="${result['show']['image']['medium']}" alt="">`;
    results.insertAdjacentHTML("beforeend", movie);
  });
});

