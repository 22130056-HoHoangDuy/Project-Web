<%--
  Created by IntelliJ IDEA.
  User: ASUS
  Date: 16/01/2025
  Time: 3:08 CH
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<head>
    <title>Bảo hành</title>
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
    <link rel="stylesheet" href="css/guarantee.css"/>
    <link rel="stylesheet" href="css/home.css">
    <link rel="stylesheet" href="css/header2.css">
</head>
<body>
<header>
    <jsp:include page="header.jsp"></jsp:include>
</header>
<div>
    <div class="container guarantee">
        <div class="guarantee_content">
            <h1>Dịch vụ bảo hành</h1>
            <h2>Quy định về sản phẩm được bảo hành miễn phí</h2>
            <ul class="guarantee_list">
                <p class="title">
                    <b
                    >Những sản phẩm được bảo hành miễn phí khi đảm bảo đủ các điều
                        kiện sau:</b
                    >
                </p>
                <p>
                    <li class="guarantee_item">
                <p>
                    Sản phẩm còn thời hạn bảo hành (tính từ ngày được ghi trên hóa
                    đơn chứng từ mua hàng), có tem bảo hành và phiếu bảo hành của
                    chính công ty (thể hiện đầy đủ thông tin không được tẩy xóa,
                    sửa chữa).
                </p>
                </li>
                <li class="guarantee_item">
                    <p>
                        Thời gian bảo hành được ghi trên phiếu bảo hành và theo quy
                        định của từng hãng sản xuất đối với tất cả sự cố về mặt kỹ
                        thuật.
                    </p>
                </li>
                <li class="guarantee_item">
                    <p>
                        Số serial trên sản phẩm và tem niêm phong trên sản phẩm phải
                        còn nguyên vẹn, không bị rách hoặc mất đi.
                    </p>
                </li>
                <li class="guarantee_item">
                    <p>
                        Số serial trên sản phẩm, trên phiếu bảo hành và trên phiếu
                        xuất bán hàng phải trùng khớp với nhau.
                    </p>
                </li>
                <li class="guarantee_item">
                    <p>
                        Sản phẩm phải được lắp đặt theo đúng hướng dẫn sử dụng,
                        catalogue theo máy.
                    </p>
                </li>
                <li class="guarantee_item">
                    <p>
                        Sản phẩm bị hư hỏng do link kiện trong máy hoặc do nhà sản
                        xuất.
                    </p>
                </li>
                </p>
            </ul>
            <h2>Quy định về sản phẩm không được bảo hành miễn phí</h2>
            <ul class="guarantee_list">
                <li class="guarantee">
                    <p>
                        Sản phẩm đã quá thời hạn bảo hành ghi trên phiếu hoặc mất phiếu
                        bào hành.
                    </p>
                </li>
                <li class="guarantee">
                    <p>
                        Sử dụng không đúng theo sách hướng dẫn hoặc hư hỏng do vận
                        chuyển.
                    </p>
                </li>
                <li class="guarantee">
                    <p>Tem niêm phong bảo hành bị rách, bị dán đè hoặc bị sửa đổi.</p>
                </li>
                <li class="guarantee">
                    <p>
                        Phiếu bảo hành không ghi rõ model, số serial và ngày mua hàng.
                    </p>
                </li>
                <li class="guarantee">
                    <p>
                        Số serial trên sản phẩm không trùng hợp (hoặc bị mờ, không nhận
                        dạng được) so với phiếu bảo hành.
                    </p>
                </li>
                <li class="guarantee">
                    <p>
                        Sản phẩm hư hỏng do tác động bên ngoài như rơi, vỡ, va đập, trầy
                        xước, móp méo, ẩm ướt, hoen rỉ, chảy nước hoặc do hỏa hoạn,
                        thiên tai, côn trùng xâm nhập.
                    </p>
                </li>
                <li class="guarantee">
                    <p>
                        Các loại phụ kiện kèm theo sản phẩm như: Vòng bít, bóng đèn
                        diot, adapter, pin điều khiển,… hoặc các tặng phẩm đi kèm.
                    </p>
                </li>
                <li class="guarantee">
                    <p>
                        Sản phẩm có dấu hiệu đã bị sửa chữa trước khi đưa đến Y Tế Hoàng
                        Kim
                    </p>
                </li>
            </ul>
            <ul class="guarantee_list">
                <p class="title"><b>Thời gian bảo hành cam kết:</b></p>
                <li class="guarantee_item">
                    <p>
                        Đối với các máy hư hỏng nhẹ, xảy ra các lỗi thường gặp: thời
                        gian bảo hành trong vòng 05 ngày làm việc (không tính thời gian
                        vận chuyển).
                    </p>
                </li>
                <li class="guarantee_item">
                    <p>
                        Đối với trường hợp máy hư hỏng nặng, lỗi phần mềm: thời gian bảo
                        hành trong vòng 10 ngày làm việc (không tính thời gian vận
                        chuyển).
                    </p>
                </li>
            </ul>
            <p class="note">
                *Lưu ý: Bảo hành không bao gồm chi phí vận chuyển và giao hàng.
            </p>
        </div>
    </div>
</div>
<footer>
    <jsp:include page="footer.jsp"></jsp:include>
</footer>
</body>

