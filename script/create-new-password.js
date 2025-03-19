function validatePassword(event) {
    event.preventDefault();
    let otp = document.getElementById("otp").value;
    let password = document.getElementById("password").value;
    let confirmPassword = document.getElementById("confirm-password").value;
    let errorMessage = document.getElementById("error-message");

    let passwordRegex = /^(?=.*[a-z])(?=.*[A-Z])(?=.*\d).{9,}$/;

    if (!passwordRegex.test(password)) {
        errorMessage.textContent = "Mật khẩu phải có ít nhất 10 ký tự, bao gồm chữ hoa, chữ thường và số.";
        return;
    }

    if (password !== confirmPassword) {
        errorMessage.textContent = "Mật khẩu xác nhận không khớp.";
        return;
    }

    alert("Mật khẩu đã được tạo mới thành công!");
    window.location.href = "login.html";
}