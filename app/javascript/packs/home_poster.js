// add 3 tvshow images on pages#home
const results = document.querySelector("#results");
Promise.all([
    fetch("https://api.tvmaze.com/singlesearch/shows?q=watchmen").then(response => response.json()),
    fetch("https://api.tvmaze.com/singlesearch/shows?q=dare-me").then(response => response.json()),
    fetch("https://api.tvmaze.com/singlesearch/shows?q=mandalorian").then(response => response.json()),
]).then((data) => {
    data.forEach((result) => {
        const movie = `<div class"show-image >
        <img src="${result['image']['medium']}" alt="">
        </div>`;
        results.insertAdjacentHTML("beforeend", movie);
    });
});
