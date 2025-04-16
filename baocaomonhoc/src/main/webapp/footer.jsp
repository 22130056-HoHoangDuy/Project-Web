<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<head>
    <style>
        .container.footer {
            max-width: 95% !important;
            color: black;
            display: flex;
            flex-direction: column;
            justify-content: center;
            align-items: center;
            margin: 0 auto;
            border-top: solid 1px black;
        }

        a {
            text-decoration: none;
            color: black;
        }

        ul,
        li {
            list-style-type: none;
            padding: 0;
            margin: 0;
            font-size: 15px;
            font-weight: normal;
        }

        ul {
            font-size: 16px;
            font-weight: 500;
        }

        .footer_nav {
            display: flex;
            justify-content: space-between;
            align-items: center;
            width: 100%;
            height: 100%;
            padding: 1rem;
        }

        .icon_web_part {
            display: flex;
            justify-content: center;
            align-items: center;
        }

        .footer_bottom {
            display: flex;
            justify-content: center;
            align-items: center;
            width: 100%;
            height: 100%;
            border-top: 1px solid #707793;
            padding: 1rem;
        }

        .footer a:hover {
            color: #153cd5;
        }
    </style>
</head>
<body>
<div class="container footer">
    <div class="footer_nav">
        <div class="icon_web_part">
            <div class="img_item">
                <img
                        class="rounded-circle"
                        src="img/home.png"
                        alt="HOME"
                        width="80px"
                />
            </div>
            <div class="d-none d-lg-block ms-2">
                <a href="${pageContext.request.contextPath}/home" class="footer_home_link">
                    <h3 class="pe-none text-uppercase mb-0" style="color: #707793">
                        Y Te Hoang Kim
                    </h3>
                </a>
            </div>
        </div>
        <div class="contact_information_part">
            <ul class="contact_information_list">
                Thông tin liên hệ
                <li class="contact_information_item">
                    <b>Địa chỉ:</b> KP6, Phường Linh Trung, TP Thủ Đức, TP. Hồ Chí
                    Minh, Việt Nam
                </li>
                <li class="contact_infor_item"><b>Hotline:</b> 0373.772.291</li>
                <li class="contact_infor_item">
                    <b>Email:</b> 22130069@st.hcmuaf.edu.vn
                </li>
                <li class="contact_infor_item">
                    <b>Github:</b>
                    <a href="https://github.com/LeThanhHai071/ProjectTeam_LTW"
                    >ProjectTeam LTW Nhom 17</a
                    >
                </li>
            </ul>
        </div>
        <div class="policy_part">
            <ul class="policy_list">
                Chính sách
                <li class="policy_item">
                    <a href="#">Chính sách thanh toán</a>
                </li>
                <li class="policy_item">
                    <a href="${pageContext.request.contextPath}/policy.jsp">Chính sách giao hàng</a>
                </li>
                <li class="policy_item">
                    <a href="#">Chính sách đổi trả</a>
                </li>
                <li class="policy_item">
                    <a href="#">Chính sách bảo mật</a>
                </li>
            </ul>
        </div>
        <div class="instruct_part">
            <ul class="instruct_list">
                Hướng dẫn
                <li class="instruct_item">
                    <a href="#">Hướng dẫn mua hàng</a>
                </li>
                <li class="instruct_item">
                    <a href="#">Hướng dẫn thanh toán</a>
                </li>
                <li class="instruct_item">
                    <a href="#">Hướng dẫn giao hàng</a>
                </li>
                <li class="instruct_item">
                    <a href="">Điều khoản dịch vụ</a>
                </li>
            </ul>
        </div>
    </div>
    <div class="footer_bottom">
        <div class="copyright_part">
            <a href="#">2024 - Y Tế Hoàng Kim</a>
        </div>
    </div>
</div>
</body>

