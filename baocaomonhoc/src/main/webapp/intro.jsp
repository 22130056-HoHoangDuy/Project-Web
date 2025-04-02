<%--
  Created by IntelliJ IDEA.
  User: Acer
  Date: 16-01-2025
  Time: 18:11
  To change this template use File | Settings | File Templates.
--%>
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
    <link rel="stylesheet" href="css/intro.css">
    <link rel="stylesheet" href="css/home.css">
    <link rel="stylesheet" href="css/header2.css">
</head>
<body>
<header>
    <jsp:include page="header.jsp"></jsp:include>
</header>
<div id="body">
    <div class="container intro">
        <div class="intro_content">
            <h1>Giới thiệu về Trang Web</h1>
            <p>
                Dụng cụ y tế đóng vai trò quan trọng trong việc hỗ trợ bệnh viện,
                phòng khám và các chuyên gia y tế cung cấp dịch vụ chăm sóc sức khỏe
                chất lượng. Một trang web thương mại điện tử bán dụng cụ y tế được
                thiết kế tốt sẽ là nền tảng trung tâm giúp các cá nhân và tổ chức y
                tế dễ dàng tìm mua các thiết bị và dụng cụ cần thiết một cách tiện
                lợi và đáng tin cậy.
            </p>
            <h2>Mục đích của Trang Web</h2>
            <ul class="intro_list">
                <p>Trang web được xây dựng với mục tiêu:</p>
                <li class="intro_item">
                    <p>
                        <b>Cung cấp đa dạng sản phẩm: </b>Từ các thiết bị chẩn đoán như
                        nhiệt kế, máy đo huyết áp, đến các dụng cụ phẫu thuật và chăm
                        sóc tại nhà.
                    </p>
                </li>
                <li class="intro_item">
                    <p>
                        <b>Tiết kiệm thời gian: </b>Cho phép khách hàng dễ dàng tra cứu,
                        đặt hàng và thanh toán trực tuyến mà không cần phải đến cửa
                        hàng.
                    </p>
                </li>
                <li class="intro_item">
                    <p>
                        <b>Đảm bảo chất lượng: </b>Cam kết sản phẩm đạt tiêu chuẩn y tế,
                        được nhập khẩu từ các nhà sản xuất uy tín.
                    </p>
                </li>
                <li class="intro_item">
                    <p>
                        <b>Hỗ trợ chuyên nghiệp: </b>Đội ngũ tư vấn sẵn sàng giải đáp
                        mọi thắc mắc về sản phẩm và dịch vụ.
                    </p>
                </li>
            </ul>
            <h2>Đặc Điểm Nổi Bật</h2>
            <ul class="intro_list">
                <li class="intro_item">
                    <p>
                        <b>Giao diện thân thiện: </b>Trang web thiết kế đơn giản, dễ sử
                        dụng, phù hợp cho mọi đối tượng khách hàng.
                    </p>
                </li>
                <li class="intro_item">
                    <p>
                        <b>Tích hợp tìm kiếm thông minh: </b>Hỗ trợ tìm kiếm sản phẩm
                        nhanh chóng theo từ khóa, danh mục, hoặc thương hiệu.
                    </p>
                </li>
                <li class="intro_item">
                    <p>
                        <b>Thanh toán đa dạng: </b>Hỗ trợ nhiều phương thức thanh toán
                        như thẻ tín dụng, chuyển khoản ngân hàng, và thanh toán khi nhận
                        hàng.
                    </p>
                </li>
                <li class="intro_item">
                    <p>
                        <b>Dịch vụ giao hàng nhanh: </b>Đảm bảo giao sản phẩm đến tận
                        nơi, đúng thời gian và an toàn.
                    </p>
                </li>
            </ul>
        </div>
    </div>
</div>
<footer>
    <jsp:include page="footer.jsp"></jsp:include>
</footer>
</body>
</html>
