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
      if (!response.ok) throw new Error(`HTTP error! status: ${response.status}`);
      return response.text();
    })
    .then((data) => {
      const element = document.querySelector(selector);
      if (element) {
        element.innerHTML = data;
      } else {
      }
    })
}

// Gọi hàm
loadHTML("#header", "../dir_section/header.html");
loadHTML("#footer", "../dir_section/footer.html");

