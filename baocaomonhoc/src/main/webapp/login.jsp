<%@ page import="org.eclipse.tags.shaded.org.apache.xpath.operations.String" %>
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
<header>
    <jsp:include page="header.jsp"></jsp:include>
</header>
<div class="body">
    <div class="container login">
        <div class="tabs">
            <div id="login-tab" class="active">
                <a href="${pageContext.request.contextPath}/login">Đăng Nhập</a>
                <a href="otherLogin.jsp">Khac</a>
            </div>
            <div id="register-tab">
                <a href="${pageContext.request.contextPath}/register">Đăng Ký</a>
            </div>
        </div>
        <!--Form đăng nhập-->
        <form method="post" action="login">
            <div class="form-container" id="login-form" style="display: block">
                <h2>Đăng Nhập</h2>
                <%
                    String error = (String) request.getAttribute("error");
//                    String uname = request.getParameter("username");
                    if (error==null) error="";
                 //   if (error==null) error=" ";
//                    if (uname==null) uname="";
                %>
                <p style="text-align: center;"><%= error %> </p>
                <div class="form-gr">
                    <input
                            type="text"
                            id="login_username"
                            placeholder="Tên người dùng"
<%--                            value="<%= uname %>"--%>
                    <%--                            value="<%= uname %>"--%>
                            name="username"
                            required
                    />
                </div>
                <div class="form-gr">
                    <input
                            type="password"
                            id="login_password"
                            name="password"
                            placeholder="Nhập mật khẩu"
                            required
                    />
                </div>
                <div class="form-gr">
                    <button type="submit">Đăng Nhập</button>
                </div>
                <div class="form-gr">
                    <p><a href="#">Quên mật khẩu?</a></p>
                </div>
            </div>
            <div class="form-gr social-login">
                <p style="text-align: center;">Hoặc đăng nhập bằng</p>
                <div class="d-flex justify-content-center gap-3">
                    <a href="https://accounts.google.com/o/oauth2/auth?scope=email&redirect_uri=http://localhost:8080/baocaomonhoc_war/loginGoogle&response_type=code
    &client_id=326215351283-qci2bpspjmc6s664oi7tpamo3p0avqdm.apps.googleusercontent.com" class="btn btn-danger">
                        <i class="fab fa-google"></i> Google
                    </a>
                    <a href="https://www.facebook.com/dialog/oauth?client_id=1387595732415859&redirect_uri=http://localhost:8080/baocaomonhoc_war/loginFacebook" class="btn btn-primary">
                        <i class="fab fa-facebook-f"></i> Facebook
                    </a>
                </div>
            </div>
        </form>
    </div>
</div>
<footer>
    <jsp:include page="footer.jsp"></jsp:include>
</footer>
<script>
    // Chuyển đổi form đăng nhập , đăng ký
    function toggleForm(formType) {
        var loginTab = document.getElementById('login-tab');
        var registerTab = document.getElementById('register-tab');
        var loginForm = document.getElementById('login-form');
        var registerForm = document.getElementById('register-form');
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
</html>
