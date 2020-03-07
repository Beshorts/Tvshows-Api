// add tvshow images on pages#home
const results = document.querySelector("#results");
Promise.all([
    fetch("https://api.tvmaze.com/singlesearch/shows?q=watchmen").then(response => response.json()),
    fetch("https://api.tvmaze.com/singlesearch/shows?q=dare-me").then(response => response.json()),
    fetch("https://api.tvmaze.com/singlesearch/shows?q=mandalorian").then(response => response.json()),
    fetch("https://api.tvmaze.com/singlesearch/shows?q=high-maintenance").then(response => response.json()),
    fetch("https://api.tvmaze.com/singlesearch/shows?q=the-chilling-adventures-of-sabrina").then(response => response.json()),
    fetch("https://api.tvmaze.com/singlesearch/shows?q=see").then(response => response.json()),
    fetch("https://api.tvmaze.com/singlesearch/shows?q=hunters").then(response => response.json()),
    fetch("https://api.tvmaze.com/singlesearch/shows?q=the-walking-dead").then(response => response.json()),
]).then((data) => {
    data.forEach((result) => {
        const movie = `<div class="images">
        <img class="show-image" src="${result['image']['medium']}" alt="poster TV shows">
        </div>`;
        results.insertAdjacentHTML("beforeend", movie);
    });
});
