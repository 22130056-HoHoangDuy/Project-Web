// Scroll to Top Button
const scrollToTopBtn = document.getElementById('scrollToTopBtn');
window.onscroll = function () {
    if (document.body.scrollTop > 200 || document.documentElement.scrollTop > 200) {
        scrollToTopBtn.style.display = "block";
    } else {
        scrollToTopBtn.style.display = "none";
    }
};

scrollToTopBtn.addEventListener('click', () => {
    window.scrollTo({ top: 0, behavior: 'smooth' });
});

// Quantity Adjustment (Increase/Decrease)
const quantityInput = document.getElementById('qty');
const minusBtn = document.getElementById('product_quantity_minus');
const plusBtn = document.getElementById('product_quantity_plus');

minusBtn.addEventListener('click', () => {
    let quantity = parseInt(quantityInput.value, 10);
    if (quantity > 1) {
        quantityInput.value = quantity - 1;
    }
});

plusBtn.addEventListener('click', () => {
    let quantity = parseInt(quantityInput.value, 10);
    if (quantity < 99) {
        quantityInput.value = quantity + 1;
    }
});

// Star Rating
const stars = document.querySelectorAll('.stars i');
const starInput = document.querySelectorAll('.rating');
const msgStar = document.getElementById('msg_star');

stars.forEach(star => {
    star.addEventListener('mouseover', () => {
        const value = parseInt(star.getAttribute('data-value'));
        highlightStars(value);
    });
    star.addEventListener('mouseout', () => {
        highlightStars(getSelectedRating());
    });
    star.addEventListener('click', () => {
        const value = parseInt(star.getAttribute('data-value'));
        setRating(value);
    });
});

function highlightStars(value) {
    stars.forEach(star => {
        const starValue = parseInt(star.getAttribute('data-value'));
        if (starValue <= value) {
            star.style.color = '#f39c12'; // Highlight stars in yellow
        } else {
            star.style.color = '#ddd'; // Reset unhighlighted stars
        }
    });
}

function getSelectedRating() {
    return Array.from(stars).findIndex(star => star.style.color === 'rgb(243, 156, 18)') + 1 || 0;
}

function setRating(value) {
    highlightStars(value);
    msgStar.textContent = `Bạn đã chọn ${value} sao`;
    starInput.forEach(input => input.checked = false);
    starInput[value - 1].checked = true;
}

// Form Submission (Optional, handle with your backend)
const ratingForm = document.querySelector('.frmRating');
const sendBtn = document.getElementById('send');
sendBtn.addEventListener('click', (event) => {
    event.preventDefault();
    const fullName = document.getElementById('fullname').value;
    const email = document.getElementById('email_contact').value;
    const content = document.getElementById('contentRating').value;
    const rating = getSelectedRating();

    if (!fullName || !email || !content || rating === 0) {
        alert('Vui lòng điền đầy đủ thông tin và chọn mức đánh giá.');
        return;
    }

    // Handle form data submission
    console.log('Form submitted with: ', { fullName, email, content, rating });

    // Reset form after submission
    ratingForm.reset();
    highlightStars(0); // Reset stars
    msgStar.textContent = ''; // Clear message
});
