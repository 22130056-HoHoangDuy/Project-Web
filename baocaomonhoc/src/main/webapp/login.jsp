<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="vi">
<head>
    <meta charset="UTF-8">
    <title>Trang Đăng Nhập</title>
    <style>
        body {
            font-family: system-ui, -apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, Oxygen, Ubuntu, Cantarell, 'Open Sans', 'Helvetica Neue', sans-serif;
            background-image: url('img/background-login.jpg');
            background-size: cover;
            background-position: center;
            background-repeat: no-repeat;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
            padding: 0;
        }

        .container {
            width: 100%;
            max-width: 400px;
            padding: 30px;
            background-color: rgba(255, 255, 255, 0.95);
            box-shadow: 0 8px 20px rgba(0, 0, 0, 0.2);
            border-radius: 12px;
            text-align: center;
        }

        h2 {
            margin-bottom: 20px;
            color: #333;
        }

        .form-gr {
            margin-bottom: 18px;
            text-align: left;
        }

        .form-gr input {
            width: 100%;
            padding: 14px;
            border: 1px solid #ccc;
            border-radius: 5px;
            font-size: 16px;
            background-color: #f9f9f9;
            transition: border-color 0.3s ease, background-color 0.3s ease;
        }

        .form-gr input:focus {
            border-color: #4CAF50;
            background-color: #fff;
            outline: none;
        }

        .form-gr button {
            width: 100%;
            padding: 14px;
            background-color: #4CAF50;
            color: white;
            border: none;
            border-radius: 5px;
            font-size: 16px;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }

        .form-gr button:hover {
            background-color: #45a049;
        }

        .form-gr p {
            text-align: center;
            font-size: 14px;
            color: #333;
            margin-top: 10px;
        }

        .form-gr a {
            color: #4CAF50;
            text-decoration: none;
            font-weight: bold;
        }

        .form-gr a:hover {
            text-decoration: underline;
        }
    </style>
</head>
<body>
<div class="container">
    <h2>Đăng Nhập</h2>

    <%-- Hiển thị lỗi nếu có --%>
    <%
        String error = (String) request.getAttribute("error");
        if (error != null) {
    %>
    <p class="error"><%= error %></p>
    <%
        }
    %>

    <form action="login" method="post">
        <div class="form-gr">
            <input type="text" name="username" placeholder="Tên người dùng" required>
        </div>
        <div class="form-gr">
            <input type="password" name="password" placeholder="Mật khẩu" required>
        </div>
        <div class="form-gr">
            <button type="submit">Đăng Nhập</button>
        </div>
        <div class="form-gr">
            <p><a href="forgot-password.jsp">Quên mật khẩu?</a></p>
            <p>Chưa có tài khoản? <a href="register.jsp">Đăng Ký</a></p>
        </div>
    </form>
</div>
</body>
</html>
