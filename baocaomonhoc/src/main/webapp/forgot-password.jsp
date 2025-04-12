<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="vi">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Quên Mật Khẩu</title>
  <style>body {
    font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
    background-image: url('img/background-login.jpg');
    background-size: cover;
    background-position: center;
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
    max-width: 400px;
    padding: 40px;
    background-color: white;
    box-shadow: 0 4px 15px rgba(0, 0, 0, 0.1);
    border-radius: 10px;
    border: 1.5px solid #333;
    transition: 0.3s ease;
    text-align: center;
  }

  /* Tiêu đề */
  h2 {
    font-size: 30px;
    display: block;
    margin: 0 auto;
    padding-bottom: 5px;
    color: #4CAF50;
    border-bottom: 3px solid #4CAF50;
  }

  /* Đoạn văn */
  p {
    font-size: 16px;
    color: black;
    margin-bottom: 15px;
  }

  /* Ô input */
  input {
    width: 100%;
    padding: 12px;
    display: block;
    margin: 0 auto 10px;
    border: 1px solid #ccc;
    border-radius: 6px;
    font-size: 16px;
  }

  /* Nút bấm */
  button {
    width: 80%; /* Để nút rộng hơn */
    padding: 12px;
    background: #4CAF50;
    color: white;
    border: none;
    border-radius: 6px;
    cursor: pointer;
    font-size: 17px;
    font-weight: bold;
    margin-top: 10px;
    transition: background 0.3s ease;
  }

  button:hover {
    background: #00b30f;
  }

  /* Liên kết */
  a {
    display: block;
    margin-top: 15px;
    text-decoration: none;
    font-size: 16px;
    color: #007bff;
  }

  a:hover {
    text-decoration: underline;
  }
  </style>
</head>
<body>
<div class="container">
  <h2>Quên Mật Khẩu</h2>
  <p>Nhập email của bạn để nhận mã OTP.</p>
  <form action="forgot-password" method="POST">
    <% String errorMessage = (String) request.getAttribute("errorMessage"); %>
    <% if (errorMessage != null) { %>
    <div style="color: red; margin-bottom: 10px;">
      <%= errorMessage %>
    </div>
    <% } %>
    <input type="email" name="email" placeholder="Nhập email của bạn" required>
    <button type="submit">Gửi mã OTP</button>
  </form>
  <a href="login.jsp">Quay lại đăng nhập</a>
</div>
</body>
</html>
