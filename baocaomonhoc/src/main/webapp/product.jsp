<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="f" uri="http://java.sun.com/jsp/jstl/fmt" %>
<head>
    <link rel="stylesheet" href="css/product.css">
    <link rel="stylesheet" href="css/header2.css">
    <link rel="stylesheet" href="css/home.css">
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
            href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css"
            rel="stylesheet"
    />
    <link
            href="https://cdn.jsdelivr.net/npm/boxicons@2.1.4/css/boxicons.min.css"
            rel="stylesheet"
    />
    <script src="https://code.iconify.design/iconify-icon/1.0.7/iconify-icon.min.js"></script>
    <title>Product Detail</title>

</head>
<body>
<header>
    <jsp:include page="header.jsp"></jsp:include>
</header>
<div>
    <div class="container product-detail">
        <div class="product-detail-content">
            <div class="detail-product d-flex">
                <div class="product-slides col-12 col-md-5 col-lg-5">
                    <div class="fea-img-blk">
                        <div id="fea-slider">
                            <img
                                    src="${p.productImage}"
                                    alt="${p.productName}"
                                    class="product_image img-fluid"
                            />
                        </div>
                    </div>
                </div>
                <div class="product-info col-12 col-md-7 col-lg-7">
                    <h1 class="title">${p.productName}</h1>
                    <div class="product-rating">
                        <div class="full-stars">
                            <div class="rating-group">
                                <label
                                        aria-label="1 star"
                                        class="rating__label"
                                        data-rating="5"
                                ><i
                                        class="rating__icon rating__icon--star fa fa-star"
                                ></i></label
                                ><label
                                    aria-label="2 star"
                                    class="rating__label"
                                    data-rating="5"
                            ><i
                                    class="rating__icon rating__icon--star fa fa-star"
                            ></i></label
                            ><label
                                    aria-label="3 star"
                                    class="rating__label"
                                    data-rating="5"
                            ><i
                                    class="rating__icon rating__icon--star fa fa-star"
                            ></i></label
                            ><label
                                    aria-label="4 star"
                                    class="rating__label"
                                    data-rating="5"
                            ><i
                                    class="rating__icon rating__icon--star fa fa-star"
                            ></i></label
                            ><label
                                    aria-label="5 star"
                                    class="rating__label"
                                    data-rating="5"
                            ><i class="rating__icon rating__icon--star fa fa-star"></i
                            ></label>
                            </div>
                            Đánh giá
                            <label
                            >(5) <i class="fa fa-comments red"></i> 3 bình luận</label
                            >
                        </div>
                    </div>
                    <form
                    <%--                            action="#"--%>
                            action="${pageContext.request.contextPath}/cart"
                            method="get"
                            class="add-item-cart form-horizontal"
                    >
                        <div class="product-detail-attrs">
                            <div class="product-detail-price">
                                <label style="width: 110px">Giá sản phẩm:</label>
                                <span
                                        class="price-official"
                                        style="display: inline-block; font-size: 20px"
                                >${p.unitPrice}</span
                                >
                            </div>
                            <div class="product-detail-quantity">
                                <label>Số lượng:</label>
                                <div class="group">
                                    <div class="minus slash" id="decreaseQty">
                                        <i class="bi bi-dash-circle"></i>
                                    </div>
                                    <input
                                            type="text"
                                            value="1"
                                            min="1"
                                            max="99"
                                            id="qty"
                                            name="quantity"
                                    />
                                    <div class="minus dash" id="increaseQty">
                                        <i class="bi bi-plus-circle"></i>
                                    </div>
                                </div>
                            </div>
                            <div class="product-detail-others">
                                <ul>
                                    <li class="d-flex justify-content-between font-size-14">
                                        <div><strong>Model :</strong></div>
                                        <div><p>RP-I50</p></div>
                                    </li>
                                    <li class="d-flex justify-content-between font-size-14">
                                        <div><strong>Thương hiệu :</strong></div>
                                        <div><p>Repor</p></div>
                                    </li>
                                    <li class="d-flex justify-content-between font-size-14">
                                        <div><strong>Bảo hành :</strong></div>
                                        <div><p>12 tháng</p></div>
                                    </li>
                                    <li class="d-flex justify-content-between font-size-14">
                                        <strong>Trạng thái</strong>:
                                        <span class="red">Còn hàng</span>
                                    </li>
                                </ul>
                            </div>
                        </div>
                        <input type="hidden" value="${p.productId}" name="productId">
                        <input type="hidden" value="${p.productName}" name="productName">
                        <input type="hidden" value="${p.unitPrice}" name="unitPrice">
                        <input type="hidden" value="${p.productImage}" name="productImage">
                        <input type="hidden" value="${p.productStatus}" name="productStatus">
                        <button
                                type="submit"
                                class="btn-order add-to-cart normal-btn outline btn-addtocart"
                        >
                            Đặt hàng
                        </button>
                    </form>
                </div>
            </div>
            <div class="product-contents">
                <div class="left">
                    <ul
                            class="nav nav-tabs mobile-hidden justify-content-between"
                            id="navbar_scroll"
                    >
                        <li class="nav-item col-12 col-md-4 col-lg-4">
                            <a
                                    data-toggle="tab"
                                    href="#product_info_tab"
                                    aria-expanded="true"
                                    class="nav-link active"
                            >
                                <img
                                        src="https://sieuthiyte.com.vn/themes/images/note_icon.png"
                                        alt="Thông tin sản phẩm"
                                />Thông tin sản phẩm</a
                            >
                        </li>
                        <li class="nav-item col-12 col-md-4 col-lg-4">
                            <a
                                    data-toggle="tab"
                                    href="#product_tech_tab"
                                    aria-expanded="false"
                                    class="nav-link"
                            >
                                <img
                                        src="https://sieuthiyte.com.vn/themes/images/tech_icon.png"
                                        alt="Thông số kỹ thuật"
                                />Thông số kỹ thuật</a
                            >
                        </li>
                        <li class="nav-item col-12 col-md-4 col-lg-4">
                            <a
                                    data-toggle="tab"
                                    href="#product_review_tab"
                                    aria-expanded="false"
                                    class="nav-link"
                            >
                                <img
                                        src="https://sieuthiyte.com.vn/themes/images/review_icon.png"
                                        alt="Đánh giá sản phẩm"
                                />Đánh giá sản phẩm</a
                            >
                        </li>
                    </ul>
                    <div class="tab-content">
                        <div id="product_info_tab">
                            <div class="detail_content">
                                <h2 style="text-align: justify">
                                    <span style="font-size: 14pt; color: #ff0000">
                                        <b>Giới thiệu ${p.productName}</b>
                                    </span>
                                </h2>
                                <p style="text-align: justify">
                                    <span style="font-size: 12pt; color: #000000"><em><b>${p.productName}</b></em>
                                        <span style="font-weight: 400">
                                            ${p.productDescription}
                                        </span>
                                    </span>
                                </p>
                            </div>
                        </div>
                        <div id="product_tech_tab">
                            <div class="product-stats">
                                <h3>
                                    <img
                                            src="https://sieuthiyte.com.vn/themes/images/tech_icon.png"
                                            alt="Thông số kỹ thuật"
                                    />Thông số kỹ thuật
                                </h3>
                                <div class="product-stat-table">
                                    <c:forEach items="${specs}" var="pspe">
                                        <div class="product-stat-table-row">
                                            <div>${pspe.specificationName}</div>
                                            <div>${pspe.specificationValue}</div>
                                        </div>
                                    </c:forEach>
                                </div>
                            </div>
                        </div>
                        <div id="product_review_tab">
                            <div class="product-comments product-comment-frm">
                                <div class="product-comment-head">
                                    <h3>
                                        <img
                                                class="img-fluid"
                                                src="https://sieuthiyte.com.vn/themes/images/comment_icon.png"
                                        />
                                        Hỏi/Đáp - Sản phẩm
                                    </h3>
                                </div>
                                <div id="ratingproduct">
                                    <div id="frm_rating">
                                        <div>
                                            <p class="headTitleRating">
                                                Máy massage mắt thư giãn cao cấp Repor RP-I50
                                            </p>
                                            <form class="frmRating">
                                                <div class="ui-formRow clearfix">
                                                    <input
                                                            type="text"
                                                            class="form-control required"
                                                            name="fullname"
                                                            id="fullname"
                                                            placeholder="Vui lòng nhập họ tên"
                                                    />
                                                </div>
                                                <div class="ui-formRow clearfix">
                                                    <input
                                                            type="email"
                                                            class="form-control required"
                                                            name="email_contact"
                                                            id="email_contact"
                                                            placeholder="Vui lòng nhập email liên hệ"
                                                    />
                                                </div>
                                                <div class="ui-formRow clearfix">
                            <textarea
                                    class="form-control required"
                                    name="contentRating"
                                    rows="5"
                                    id="contentRating"
                                    placeholder="Vui lòng nhập nội dung đánh giá"
                            ></textarea>
                                                </div>

                                                <div class="product-comment-action">
                                                    <div class="list_start">
                                                        Đánh giá

                                                        <div class="stars">
                                                            <a class="star" title="1" data-rating="1"></a
                                                            ><a class="star" title="2" data-rating="2"></a
                                                        ><a class="star" title="3" data-rating="3"></a
                                                        ><a class="star" title="4" data-rating="4"></a
                                                        ><a class="star" title="5" data-rating="5"></a>
                                                        </div>
                                                    </div>
                                                    <div>
                                                        <div id="msg_star"></div>
                                                        <button
                                                                id="send"
                                                                type="submit"
                                                                class="ui-buttonCta btn-comment"
                                                        >
                                                            Gửi
                                                        </button>
                                                    </div>
                                                </div>
                                                <input type="hidden" name="rating" id="rating" value="">
                                                <input type="hidden" name="proId" value="${p.productId}">

                                            </form>
                                        </div>
                                    </div>
                                    <div class="product-comment-info-bar">
                                        <div class="product-comment-info-bar">
                                            <div class="product-comment-count">${comnumber} Đánh giá</div>
                                        </div>
                                        <div id="topComment" data-totalcomment="3">
                                            <div
                                                    class="list-item-rating"
                                                    data-listid="1352"
                                                    data-token="15b19e7bcc5a5d81910cc4fd23163cd4"
                                                    data-comment="1736783728"
                                            >
                                                <c:forEach var="review" items="${reviews}">
                                                    <div
                                                            id="comment_id_4660"
                                                            class="row-comment"
                                                            data-subcomment="4660"
                                                            data-pagesubcomment="1"
                                                    >
                                                        <div
                                                                class="itemComment ri product-comment-question"
                                                        >
                                                            <h5 class="d-flex">
                                                                <img
                                                                        src="https://sieuthiyte.com.vn/themes/images/user_comment_icon.png"
                                                                />
                                                                    ${review.customerName}-${review.rating} <span
                                                                    class="star"></span>
                                                            </h5>
                                                            <div class="contentquestion">
                                                                    ${review.comment}
                                                            </div>
                                                            <div
                                                                    class="product-comment-box actionuser"
                                                                    data-cl="0"
                                                                    data-id="4660"
                                                                    data-parent="4660"
                                                                    data-subparent="4660"
                                                                    data-idsanpham="1352"
                                                                    data-token="cf5db2298105d29849fd00c59485d175"
                                                                    data-fullname="Le Thanh Hai"
                                                                    data-total="3"
                                                            >
                                                                <span>${review.createdAt}</span>
                                                            </div>
                                                        </div>
                                                        <div class="list-reply-comment">
                                                            <div
                                                                    class="product-comment-answer itemComment reply-item actionuser"
                                                                    data-id="4660"
                                                                    data-parent="4660"
                                                                    data-subparent="4660"
                                                                    data-idsanpham="1352"
                                                                    data-token="cf5db2298105d29849fd00c59485d175"
                                                                    data-fullname="Quản trị viên"
                                                            >
                                                                <div class="comment-answer-head">
                                                                    <img
                                                                            class="img-fluid"
                                                                            src="https://sieuthiyte.com.vn/themes/images/logo_comment.png"
                                                                    />
                                                                    <label class="admin-reply"
                                                                    >Quản trị viên</label
                                                                    >
                                                                </div>
                                                                <p>Chào ${review.customerName},</p>
                                                                <p>
                                                                    Dạ, cảm ơn Anh/Chị đã tin dùng sản phẩm của
                                                                    Siêu thị Y tế ạ !
                                                                </p>
                                                                <span>${review.createdAt}</span>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </c:forEach>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<footer>
    <jsp:include page="footer.jsp"></jsp:include>
</footer>
<script>
    // Lấy tất cả các sao
    const stars = document.querySelectorAll('.star');

    // Lắng nghe sự kiện click trên các sao
    stars.forEach(star => {
        star.addEventListener('click', function () {
            // Lấy số sao từ data-rating
            const rating = this.getAttribute('data-rating');

            // Cập nhật giá trị vào trường ẩn rating
            document.getElementById('rating').value = rating;

            // Hiển thị số sao đã chọn
            document.getElementById('msg_star').innerHTML = "Bạn đã chọn " + rating + " sao.";
        });
    });

</script>
<script>
    const decreaseBtn = document.getElementById("decreaseQty");
    const increaseBtn = document.getElementById("increaseQty");
    const qtyInput = document.getElementById("qty");

    // Update buttons' disabled state
    function updateButtons() {
        const value = parseInt(qtyInput.value, 10);
        const min = parseInt(qtyInput.getAttribute("min"), 10);
        const max = parseInt(qtyInput.getAttribute("max"), 10);

        decreaseBtn.disabled = value <= min;
        increaseBtn.disabled = value >= max;
    }

    // Decrease quantity
    decreaseBtn.addEventListener("click", () => {
        const value = parseInt(qtyInput.value, 10);
        const min = parseInt(qtyInput.getAttribute("min"), 10);

        if (value > min) {
            qtyInput.value = value - 1;
        }
        updateButtons();
    });

    // Increase quantity
    increaseBtn.addEventListener("click", () => {
        const value = parseInt(qtyInput.value, 10);
        const max = parseInt(qtyInput.getAttribute("max"), 10);

        if (value < max) {
            qtyInput.value = value + 1;
        }
        updateButtons();
    });

    // Update buttons on input change
    qtyInput.addEventListener("input", () => {
        const value = parseInt(qtyInput.value, 10);
        const min = parseInt(qtyInput.getAttribute("min"), 10);
        const max = parseInt(qtyInput.getAttribute("max"), 10);

        if (isNaN(value) || value < min) {
            qtyInput.value = min;
        } else if (value > max) {
            qtyInput.value = max;
        }
        updateButtons();
    });

    updateButtons();
</script>
<script>
    document.addEventListener("DOMContentLoaded", () => {
        const topbar = document.querySelector(".detail-product");
        const mainNav = document.querySelector("#navbar_scroll");

        window.addEventListener("scroll", () => {
            const topbarBottom = topbar.getBoundingClientRect().bottom;

            if (topbarBottom <= 0) {
                mainNav.classList.add("fixed");
            } else {
                mainNav.classList.remove("fixed");
            }
        });
    });
</script>
<script>
    const stars = document.querySelectorAll(".star");

    stars.forEach((star, index) => {
        star.addEventListener("click", () => {
            stars.forEach((s, i) => {
                s.classList.toggle("fullStar", i <= index);
            });
        });
    });

    stars.forEach((star, index) => {
        star.addEventListener("mouseenter", () => {
            stars.forEach((s, i) => {
                if (i <= index) {
                    s.classList.add("tmp_fs");
                } else {
                    s.classList.add("tmp_es");
                }
            });
        });

        star.addEventListener("mouseleave", () => {
            stars.forEach((s) => {
                s.classList.remove("tmp_fs", "tmp_es");
            });
        });
    });
</script>
<script>
    // Lấy danh sách tất cả các tab và nội dung của tab
    const tabs = document.querySelectorAll('.nav-link');
    const tabContents = document.querySelectorAll('.tab-pane');

    tabs.forEach((tab) => {
        // Gán sự kiện click cho mỗi tab
        tab.addEventListener('click', (event) => {

            // Loại bỏ class 'active' khỏi tất cả các tab
            tabs.forEach((t) => t.classList.remove('active'));
            tabContents.forEach((content) =>
                content.classList.remove('active')
            );

            // Thêm class 'active' cho tab được click
            tab.classList.add('active');

            // Lấy phần nội dung liên quan và hiển thị
            const targetId = tab.getAttribute('href'); // Lấy ID mục tiêu từ href
            const targetContent = document.querySelector(targetId);

            if (targetContent) {
                targetContent.classList.add('active');
            }
        });
    });
</script>
</body>

