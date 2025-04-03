// Thiết lập các chức năng của giỏ hàng
function setupCartFunctionality() {
    const selectAllCheckbox = document.getElementById('select-all');
    const productCheckboxes = document.querySelectorAll('.select-item');
    const totalPriceElement = document.getElementById('total-price');
    const finalPriceElement = document.getElementById('final-price');

    function calculateTotalPrice() {
        let total = 0;
        productCheckboxes.forEach((checkbox) => {
            if (checkbox.checked) {
                const priceElement = checkbox.closest('.cart-item').querySelector('.item-price');
                const priceText = priceElement.textContent.replace(/[^\d.-]+/g, '').replace(/\./g, '');
                const price = parseFloat(priceText);
                if (!isNaN(price)) {
                    total += price;
                }
            }
        });

        // Cập nhật tổng giá
        if (totalPriceElement) totalPriceElement.textContent = total.toLocaleString('vi-VN') + ' VND';
        if (finalPriceElement) finalPriceElement.textContent = total.toLocaleString('vi-VN') + ' VND';
    }

    if (selectAllCheckbox && productCheckboxes.length > 0 && totalPriceElement && finalPriceElement) {
        selectAllCheckbox.addEventListener('change', () => {
            const isChecked = selectAllCheckbox.checked;
            productCheckboxes.forEach((checkbox) => {
                checkbox.checked = isChecked;
            });
            calculateTotalPrice();
        });

        productCheckboxes.forEach((checkbox) => {
            checkbox.addEventListener('change', () => {
                if (!checkbox.checked) {
                    selectAllCheckbox.checked = false;
                } else {
                    const allChecked = Array.from(productCheckboxes).every((cb) => cb.checked);
                    selectAllCheckbox.checked = allChecked;
                }
                calculateTotalPrice();
            });
        });
    }

    // Thêm sự kiện tăng/giảm số lượng
    document.querySelectorAll('.cart-item').forEach((cartItem) => {
        const decreaseBtn = cartItem.querySelector('.decrease');
        const increaseBtn = cartItem.querySelector('.increase');
        const quantityInput = cartItem.querySelector('.quantity-input');

        if (decreaseBtn) {
            decreaseBtn.addEventListener('click', () => {
                let quantity = parseInt(quantityInput.value, 10);
                if (quantity > 1) {
                    quantity--;
                    quantityInput.value = quantity;
                }
                calculateTotalPrice();
            });
        }

        if (increaseBtn) {
            increaseBtn.addEventListener('click', () => {
                let quantity = parseInt(quantityInput.value, 10);
                quantity++;
                quantityInput.value = quantity;
                calculateTotalPrice();
            });
        }

        if (quantityInput) {
            quantityInput.addEventListener('change', () => {
                calculateTotalPrice();
            });
        }
    });
}

// Gọi các hàm
setupCartFunctionality();