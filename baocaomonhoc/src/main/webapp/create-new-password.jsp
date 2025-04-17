<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="vi">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Tạo Mật Khẩu Mới</title>
    <style>body {
        font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
        background-image: url('img/background-login.jpg'); /* Đường dẫn đến ảnh */
        background-size: cover; /* Phủ kín toàn bộ màn hình */
        background-position: center; /* Căn giữa */
        display: flex;
        justify-content: center;
        align-items: center;
        height: 100vh;
        margin: 0;
        padding: 0;
    }

    /* Hộp chứa nội dung */
    .container {
        width: 100%;
        max-width: 450px; /* Tăng kích thước hộp để rộng rãi hơn */
        padding: 50px; /* Tăng padding để nội dung không bị chật */
        background-color: white;
        box-shadow: 0 6px 20px rgba(0, 0, 0, 0.15); /* Làm bóng mềm hơn */
        border-radius: 12px;
        border: 2px solid #ddd; /* Nhẹ nhàng hơn */
        text-align: center;
    }

    /* Tiêu đề */
    h2 {
        font-size: 30px;
        color: #4CAF50;
        font-weight: bold;
        margin-bottom: 20px;
        padding-bottom: 8px;
        border-bottom: 4px solid #4CAF50;
    }

    /* Đoạn văn */
    p {
        font-size: 18px;
        color: #555;
        margin-bottom: 20px;
    }

    /* Ô input */
    input {
        width: 100%;
        padding: 14px; /* Làm to hơn để dễ nhập */
        margin: 12px 0;
        border: 1.5px solid #ccc;
        border-radius: 8px;
        font-size: 18px;
        outline: none;
        transition: border-color 0.3s ease-in-out;
    }

    input:focus {
        border-color: #4CAF50;
    }

    /* Nút bấm */
    button {
        width: 80%;
        padding: 14px;
        background: #4CAF50;
        color: white;
        border: none;
        border-radius: 8px;
        cursor: pointer;
        font-size: 18px;
        font-weight: bold;
        display: block;
        margin: 0 auto;
        transition: background 0.3s ease, transform 0.2s;
    }

    button:hover {
        background: #00b30f;
        transform: scale(1.05);
    }

    /* Liên kết */
    a {
        display: block;
        margin-top: 20px;
        text-decoration: none;
        font-size: 18px;
        color: #007bff;
        font-weight: bold;
    }

    a:hover {
        text-decoration: underline;
    }</style>
</head>
<body>
<div class="container">
    <h2>Tạo Mật Khẩu Mới</h2>
    <p>Nhập mã OTP và tạo mật khẩu mới.</p>
    <form action="create-new-password" method="POST">
        <input type="text" name="otp" placeholder="Nhập mã OTP" required>
        <input type="password" name="password" placeholder="Nhập mật khẩu mới" required>
        <input type="password" name="confirm-password" placeholder="Xác nhận mật khẩu" required>
        <p id="error-message" style="color: red;"></p>
        <button type="submit">Cập Nhật</button>
    </form>
    <a href="login.jsp">Quay lại đăng nhập</a>
</div>
</body>
</html>
