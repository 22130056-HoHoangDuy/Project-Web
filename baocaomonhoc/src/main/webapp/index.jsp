<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="f" uri="http://java.sun.com/jsp/jstl/fmt" %>
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
    <title>HOME</title>
    <link rel="stylesheet" href="css/home.css">
    <link rel="stylesheet" href="css/header2.css">
    <style>
        .product-item.product-category {
            overflow-y: scroll;
            max-height: 500px;
            scrollbar-width: none;
        }
    </style>
</head>
<body>
<header>
    <jsp:include page="header.jsp"></jsp:include>
</header>
<div id="body">

    <div class="container home">
        <div class="home_content">
            <div class="banner_ad">
                <img
                        src="https://bizweb.dktcdn.net/100/389/346/themes/767972/assets/slide-img3.jpg?1731724791464"
                        alt=""
                />
            </div>
            <div class="main_column">
                <c:forEach var="catepid" items="${parentCategories}">
                    <div class="main_col">
                        <div class="name_sub_list col-12 col-md-3 col-lg-2">
                            <ul class="name_pro_list">
                                <a href="category?cid=${catepid.categoryId}"
                                   class="cate_name">${catepid.categoryName}</a>
                                <c:forEach var="cate" items="${childCategories}">
                                    <c:if test="${catepid.categoryId == cate.categoryParentId}">
                                        <li class="name_pro_item"><a
                                                href="category?cid=${cate.categoryId}">${cate.categoryName}</a></li>
                                    </c:if>
                                </c:forEach>
                            </ul>
                        </div>
                        <div class="product-item product-category">
                            <c:forEach var="p" items="${catepid.products}">
                                    <div class="item-slide col-md-3 col-lg-3">
                                        <a
                                                href="product?pid=${p.productId}"
                                        >
                                            <div class="img">
                                                <img
                                                        class="owl-lazy img-fluid lazyloaded"
                                                        alt=""
                                                        src="${p.productImage}"
                                                />
                                            </div>
                                            <h3 class="title">
                                                    ${p.productName}
                                            </h3>
                                            <p class="price"><span><f:formatNumber value="${p.unitPrice}"/>đ</span>
                                            </p>
                                            <div class="full-stars">
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
                                        </a>
                                    </div>
                            </c:forEach>
                        </div>

                    </div>
                </c:forEach>
            </div>
            <div class="ad_pro">
                <img
                        src="https://bizweb.dktcdn.net/100/389/346/themes/767972/assets/long-banner.jpg?1731724791464"
                        alt=""
                />
            </div>
            <div class="news_section">
                <p class="title_news">BÀI VIẾT MỚI</p>
                <div class="content_news">
                    <a href="">
                        <div class="news">
                            <img
                                    src="https://bizweb.dktcdn.net/thumb/large/100/389/346/articles/4-3661f3e3-d6e0-4d0d-98bd-dc58c5eb56de.png?v=1731904639130"
                                    alt="Có Nên Mở Máy Tạo Oxy Trong Phòng? Lợi Ích và Lưu Ý Quan Trọng"
                            />
                            <p>Có Nên Mở Máy Tạo Oxy Trong Phòng? Lợi Ích...</p>
                            <p>
                                <i class="fa-regular fa-calendar-days"></i> 18/11/2024
                                <i class="fa-solid fa-message"></i> 0 bình luận
                            </p>
                            <p><i class="fa-solid fa-caret-right"></i>Đọc tiếp</p>
                        </div>
                    </a>
                    <a href="">
                        <div class="news">
                            <img
                                    src="https://bizweb.dktcdn.net/thumb/large/100/389/346/articles/may-tao-oxy-nen-dung-khi-nao.png?v=1731902932887"
                                    alt="Máy Tạo Oxy Nên Dùng Khi Nào? Hướng Dẫn Sử Dụng Đúng Cách"
                            />
                            <p>Máy Tạo Oxy Nên Dùng Khi Nào? Hướng Dẫn Sử...</p>
                            <p>
                                <i class="fa-regular fa-calendar-days"></i> 18/11/2024
                                <i class="fa-solid fa-message"></i> 0 bình luận
                            </p>
                            <p><i class="fa-solid fa-caret-right"></i>Đọc tiếp</p>
                        </div>
                    </a>
                    <a href="">
                        <div class="news">
                            <img
                                    src="https://bizweb.dktcdn.net/thumb/large/100/389/346/articles/untitled-1.png?v=1731901263927"
                                    alt="Cách Vệ Sinh Máy Trợ Thở Tại Nhà Đúng Cách: Hướng Dẫn Chi Tiết"
                            />
                            <p>Cách Vệ Sinh Máy Trợ Thở Tại Nhà Đúng Cách:...</p>
                            <p>
                                <i class="fa-regular fa-calendar-days"></i> 18/11/2024
                                <i class="fa-solid fa-message"></i> 0 bình luận
                            </p>
                            <p><i class="fa-solid fa-caret-right"></i>Đọc tiếp</p>
                        </div>
                    </a>
                </div>
            </div>
        </div>
    </div>
</div>
<footer>
    <jsp:include page="footer.jsp"></jsp:include>
</footer>
<script
        src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
        crossorigin="anonymous"
></script>
</body>
