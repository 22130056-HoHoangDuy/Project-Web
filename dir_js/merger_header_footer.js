// function loadHTML(id, url) {
//     fetch(url)
//         .then((response) => response.text())
//         .then((data) => (document.getElementById(id).innerHTML = data))
//         .catch((error) => console.error("Error:", error));
// }

// // Tải header và footer
// loadHTML("header", "../dir_section/header.html");
// loadHTML("footer", "../dir_section/footer.html");

function loadHTML(selector, url) {
  fetch(url)
    .then((response) => {
      if (!response.ok)
        throw new Error(`HTTP error! status: ${response.status}`);
      return response.text();
    })
    .then((data) => {
      document.querySelector(selector).innerHTML = data;
    })
    .catch((error) => console.error("Error loading content:", error));
}

// Tải header, body, và footer
loadHTML("header", "../dir_section/header.html"); // File header
loadHTML("footer", "../dir_section/footer.html"); // File footer
