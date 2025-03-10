<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <link
            rel="stylesheet"
            href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.6.0/css/all.min.css"
            integrity="sha512-Kc323vGBEqzTmouAECnVceyQqyqdsSiqLQISBL29aUW4U/M7pSPA/gEUZQqv1cwx4OnYxTxve5UMg5GT6L4JJg=="
            crossorigin="anonymous"
            referrerpolicy="no-referrer"
    />
    <script
            src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.6.0/js/all.min.js"
            integrity="sha512-6sSYJqDreZRZGkJ3b+YfdhB3MzmuP9R7X1QZ6g5aIXhRvR1Y/N/P47jmnkENm7YL3oqsmI6AK+V6AD99uWDnIw=="
            crossorigin="anonymous"
            referrerpolicy="no-referrer"
    ></script>
    <link
            href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
            rel="stylesheet"
            integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH"
            crossorigin="anonymous"
    />
    <link
            rel="stylesheet"
            href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css"
    />
    <link
            rel="stylesheet"
            href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css"
    />
    <link
            href="https://cdn.jsdelivr.net/npm/boxicons@2.1.4/css/boxicons.min.css"
            rel="stylesheet"
    />
    <script src="https://code.iconify.design/iconify-icon/1.0.7/iconify-icon.min.js"></script>
    <title>Login</title>
    <link rel="stylesheet" href="css/login.css">
    <link rel="stylesheet" href="css/header2.css">
    <link rel="stylesheet" href="css/home.css">
</head>
<body>
<header>
    <jsp:include page="header.jsp"></jsp:include>
</header>
<div class="body">
    <div class="container login">
        <div class="tabs">
            <div id="login-tab" class="active">
                <a href="${pageContext.request.contextPath}/login">Đăng Nhập</a>
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
//                    if (uname==null) uname="";
                %>
                <p style="text-align: center;"><%= error %> </p>
                <div class="form-gr">
                    <input
                            type="text"
                            id="login_username"
                            placeholder="Tên người dùng"
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

    function register() {
        var password = document.getElementById('re-password').value;
        var confirmPassword = document.getElementById('reg-confirm-password').value;
    }
</script>
</body>
</html>
