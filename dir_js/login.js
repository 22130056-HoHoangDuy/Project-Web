// Chuyển đổi form đăng nhập , đăng ký
function toggleForm(formType) {
    var loginTab = document.getElementById('login-tab');
    var registerTab = document.getElementById('register-tab');
    var loginForm = document.getElementById('login-form');
    var registerForm = document.getElementById('register-form');

    if (formType == 'login') {
        loginTab.classList.add('active');
        registerTab.classList.remove('active');
        loginForm.style.display = 'block';
        registerForm.style.display = 'none';
    } else {
        loginTab.classList.remove('active');
        registerTab.classList.add('active');
        loginForm.style.display = 'none';
        registerForm.style.display = 'block';
    }
}

//Hàm sử lý đăng nhập
// function login() {
//     var email = document.getElementById('log-email').value;
//     var password = document.getElementById('log-log-password')
//     if (email && password) {
//         alert('Đăng nhập thành công ');
//     } else {
//         alert('Vui lòng điền đầy đủ thông tin đăng nhập!');
//     }
// }

// function login() {
document.getElementById('login-btn').onclick = function () {
    var username = document.getElementById('log-email').value;
    var password = document.getElementById('log-password').value;

    if (!username || !password) {
        alert('Vui lòng điền đầy đủ thông tin đăng nhập!');
        return false;
    }

    if (username === "root" && password === "123") {
        alert('Đăng nhập thành công!');
        window.location.href = "../dir_html/admin_home.html";
    }
    if (username === "user" && password === "123") {
        alert('Đăng nhập thành công!');
        window.location.href = "../dir_html/manage.html";
    } else {
        alert('Tên đăng nhập hoặc mật khẩu không đúng!');
    }
}

function register() {
    var email = document.getElementById('re-email').value;
    var password = document.getElementById('re-password').value;
    var confirmPassword = document.getElementById('reg-confirm-password').value;

    if (password === confirmPassword) {
        alert('Đăng ký thành công ');
    } else {
        alert('Mật khẩu và xác nhận mật khẩu không khớp!');
    }
}

// Hàm chỉnh sửa thông tin người dùng
function editUserInfo() {
    // Hiển thị form chỉnh sửa và ẩn khu vực thông tin
    document.getElementById('user-info').style.display = 'none';
    document.getElementById('user-form').style.display = 'block';
    document.getElementById('edit-button').style.display = 'none'; // Ẩn nút "Chỉnh sửa"

    // Điền thông tin hiện tại vào các trường trong form
    document.getElementById('fullname').value = document.getElementById('user-fullname').textContent;
    document.getElementById('phone').value = document.getElementById('user-phone').textContent;
    document.getElementById('email').value = document.getElementById('user-email').textContent;
    document.getElementById('address').value = document.getElementById('user-address').textContent;
    document.getElementById('birthdate').value = document.getElementById('user-birthdate').textContent;
}

// Xử lý khi nhấn "Cập nhật"
document.querySelector('#user-form').addEventListener('submit', function (event) {
    event.preventDefault(); // Ngừng gửi form

    // Cập nhật thông tin từ các trường nhập liệu
    var fullname = document.getElementById('fullname').value;
    var phone = document.getElementById('phone').value;
    var email = document.getElementById('email').value;
    var address = document.getElementById('address').value;
    var birthdate = document.getElementById('birthdate').value;

    // Cập nhật thông tin người dùng
    document.getElementById('user-fullname').textContent = fullname;
    document.getElementById('user-phone').textContent = phone;
    document.getElementById('user-email').textContent = email;
    document.getElementById('user-address').textContent = address;
    document.getElementById('user-birthdate').textContent = birthdate;

    // Ẩn form và hiển thị lại khu vực thông tin
    document.getElementById('user-info').style.display = 'block';
    document.getElementById('user-form').style.display = 'none';
    document.getElementById('edit-button').style.display = 'block'; // Hiển thị lại nút "Chỉnh sửa"
});
