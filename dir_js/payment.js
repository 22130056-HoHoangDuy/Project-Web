const checkoutButton = document.querySelector(".checkout-button button");
const nameInput = document.getElementById("name");
const emailInput = document.getElementById("email");
const phoneInput = document.getElementById("phone");
const addressInput = document.getElementById("address");

checkoutButton.addEventListener("click", function (event) {
    event.preventDefault(); // Ngăn chặn hành động gửi biểu mẫu mặc định

    // Kiểm tra các trường
    const errors = [];
    if (!nameInput.value.trim()) {
        errors.push("Họ và tên");
    }
    if (!emailInput.value.trim()) {
        errors.push("Email");
    }
    if (!phoneInput.value.trim()) {
        errors.push("Số điện thoại");
    }
    if (!addressInput.value.trim()) {
        errors.push("Địa chỉ");
    }

    // Nếu có lỗi, hiển thị thông báo
    if (errors.length > 0) {
        alert(`Vui lòng nhập đầy đủ thông tin các trường sau: ${errors.join(", ")}`);
    } else {
        alert("Thanh toán thành công!");
        // Chuyển hướng đến trang khác
        window.location.href = "listCategory.html"; // Thay thế bằng URL trang bạn muốn chuyển đến
    }
});

