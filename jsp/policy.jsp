<%--
  Created by IntelliJ IDEA.
  User: ASUS
  Date: 16/01/2025
  Time: 2:46 CH
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<head>
    <title>Policy</title>
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
    <link rel="stylesheet" href="css/policy.css"/>
    <link rel="stylesheet" href="css/home.css">
    <link rel="stylesheet" href="css/header2.css">
</head>
<body>
<header>
    <jsp:include page="header.jsp"></jsp:include>
</header>
<div>
    <div class="container policy">
        <div class="policy_content policy_ship">
            <h1>Chính sách vận chuyển và giao hàng</h1>
            <h2>A. Đối tượng và phạm vi vận chuyển</h2>
            <ul class="policy_list">
                <li class="policy_item">
                    <p>
                        Chính sách giao nhận được áp dụng cho tất cả các khách hàng đặt
                        hàng qua website Y Tế Hoàng Kim của chúng tôi.
                    </p>
                </li>
                <li class="policy_item">
                    <p>Chúng tôi giao hàng cho khách hàng trên phạm vi toàn quốc.</p>
                </li>
            </ul>
            <h2>B. Hình thức vận chuyển</h2>
            <h3>Nhận hàng trực tiếp tại của hàng</h3>
            <ul class="policy_list">
                <li class="policy_item">
                    <p>
                        Với những khách đến mua hàng tại cửa hàng hoặc thông qua website
                        Y Tế Hoàng Kim
                    </p>
                </li>
                <li class="policy_item">
                    <p>
                        Quý khách vui lòng kiểm tra thật kỹ hàng hóa, đối chiếu sản phẩm
                        với hóa đơn, phiếu bảo hành trước khi nhận hàng.
                    </p>
                </li>
                <li class="policy_item">
                    <p>
                        Trường hợp hàng hóa phải chuyển từ kho của cửa hàng khác trong
                        cùng hệ thống, nhân viên bán hàng sẽ liên hệ với Quý khách để
                        thương thảo lại về thời gian giao hàng.
                    </p>
                </li>
            </ul>
            <h3>Giao hàng và thu tiền tại nhà (COD)</h3>
            <ul class="policy_list">
                <li class="policy_item">
                    <p>
                        Giao hàng nội thành (TP.HCM, Hà Nội):Quý khách có thể yêu cầu
                        nhận hàng trong ngày.
                    </p>
                </li>
                <li class="policy_item">
                    <p>
                        Khu vực khác: Giao hàng COD qua dịch vụ Viettel Post, GHN, J&T
                        Express từ 1-4 ngày (tùy vào đơn vị vận chuyển).
                    </p>
                </li>
            </ul>
            <h2>D. Phân định trách nhiệm trong quá trình giao nhận</h2>
            <p>
                Thông thường sau khi nhận được thông tin đặt hàng chúng tôi sẽ xử lý
                đơn hàng trong vòng 24h và phản hồi lại thông tin cho khách hàng về
                việc thanh toán và giao nhận. Thời gian giao hàng thường trong
                khoảng từ 1-4 ngày kể từ ngày chốt đơn hàng hoặc theo thỏa thuận với
                khách khi đặt hàng. Tuy nhiên, cũng có trường hợp việc giao hàng kéo
                dài hơn nhưng chỉ xảy ra trong những tình huống bất khả kháng như
                sau:
            </p>
            <ul class="policy_list">
                <li class="policy_item">
                    <p>
                        Nhân viên chúng tôi liên lạc với khách hàng qua điện thoại không
                        được nên không thể giao hàng.
                    </p>
                </li>
                <li class="policy_item">
                    <p>
                        Địa chỉ giao hàng bạn cung cấp không chính xác hoặc khó tìm.
                    </p>
                </li>
                <li class="policy_item">
                    <p>
                        Số lượng đơn hàng tăng đột biến khiến việc xử lý đơn hàng bị
                        chậm.
                    </p>
                </li>
                <li class="policy_item">
                    <p>Đối tác vận chuyển giao hàng bị chậm.</p>
                </li>
                <li class="policy_item">
                    <p>
                        Trường hợp vì một lý do nào đó nhân viên giao hàng không thể
                        giao hàng kịp thời, chúng tôi sẽ liên hệ lại và thông báo cho
                        Quý khách được biết.
                    </p>
                </li>
                <li class="policy_item">
                    <p>
                        Quý khách vui lòng kiểm tra kỹ hàng hoá ngay khi nhận hàng từ
                        người chuyển phát hàng hoá, nếu có vấn đề liên quan tới số
                        lượng, mẫu mã hàng hoá không đúng như trong đơn đặt hàng, Quý
                        khách vui lòng báo ngay cho chúng tôi để phối hợp với đơn vị
                        chuyển phát hàng hóa xử lý.
                    </p>
                </li>
            </ul>
            <p class="note">*Lưu ý chung:</p>
            <ul class="policy_list">
                <li class="policy_item">
                    <p>
                        Khi mua hàng, khách hàng vui lòng cung cấp đầy đủ và chính xác
                        các thông tin cần thiết theo yêu cầu để tạo điều kiện thuận lợi
                        cho việc giao dịch.
                    </p>
                </li>
                <li class="policy_item">
                    <p>
                        Một số trường hợp nhạy cảm: giá trị đơn hàng quá lớn, địa chỉ
                        giao hàng không rõ ràng, nằm trong ngõ hoặc có thể dẫn tới nguy
                        hiểm, Siêu Thị Y Tế có thể từ chối giao hàng trực tiếp, kính
                        mong Quý khách hàng thông cảm.
                    </p>
                </li>
                <li class="policy_item">
                    <p>
                        Quý khách vui lòng kiểm tra kĩ hàng hóa khi nhận hàng từ nhân
                        viên giao hàng, nếu có bất kỳ khiếu nại gì về hư hỏng, trầy
                        xước, bể vỡ, móp méo, sai hàng hóa… sau khi nhân viên giao hàng
                        đi thì Siêu Thị Y Tế không chịu trách nhiệm.
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

