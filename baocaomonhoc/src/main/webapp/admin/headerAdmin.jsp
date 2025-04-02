<%--
  Created by IntelliJ IDEA.
  User: Acer
  Date: 16-01-2025
  Time: 00:16
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<body>
<div>
    <header class="topbar">
        <div class="container-fluid">
            <div class="navbar-header">
                <div class="d-flex align-items-center">
                    <!-- Menu Toggle Button -->
                    <div class="topbar-item">
                        <button type="button" class="button-toggle-menu me-2">
                            <iconify-icon
                                    icon="solar:hamburger-menu-broken"
                                    class="fs-24 align-middle"
                            ></iconify-icon>
                        </button>
                    </div>

                    <!-- Menu Toggle Button -->
                    <div class="topbar-item">
                        <h4 class="fw-bold topbar-button pe-none text-uppercase mb-0">
                            Welcome
                        </h4>
                    </div>
                </div>

                <div class="d-flex align-items-center gap-1">
                    <!-- User -->
                    <div class="dropdown topbar-item">
                        <div class="dropdown topbar-item">
                            <a
                                    type="button"
                                    class="topbar-button"
                                    id="page-header-user-dropdown"
                            >
                                <img
                                        class="rounded-circle"
                                        width="32"
                                        src="../img/home.png"
                                        alt="avatar-3"
                                />
                            </a>
                            <!-- dropdown-menu-end -->
                            <div
                                    id="dropdown-menu"
                                    class="dropdown-menu dropdown-menu-end hidden"
                            >
                                <h6 class="dropdown-header">Xin chào Gaston!</h6>
                                <a class="dropdown-item" href="#">
                                    <i class="fa-solid fa-circle-user"></i
                                    ><span class="align-middle">Thông tin</span>
                                </a>

                                <a class="dropdown-item text-danger" href="..//home">
                                    <i class="fa-solid fa-right-from-bracket"></i
                                    ><span class="align-middle">Đăng xuất</span>
                                </a>
                            </div>
                        </div>

                        <form class="app-search d-none d-md-block ms-2">
                            <div class="position-relative">
                                <i class="fa-solid fa-magnifying-glass"></i>
                                <input
                                        type="search"
                                        class="form-control"
                                        placeholder="Tìm kiếm..."
                                        autocomplete="off"
                                        value=""
                                />
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </header>
    <div class="main-nav">
        <div class="logo-box">
            <a href="dashboardAdmin.jsp" class="logo-light">
                <img
                        src="../img/home_lg.png"
                        class="logo-lg"
                        alt="logo light"
                />
            </a>
        </div>
        <div class="scrollbar" data-simplebar="init">
            <div class="simplebar-wrapper" style="margin: 0px">
                <div class="simplebar-mask">
                    <div class="simplebar-offset" style="right: 0px; bottom: 0px">
                        <div
                                class="simplebar-content-wrapper"
                                tabindex="0"
                                role="region"
                                aria-label="scrollable content"
                                style="height: 100%; overflow: hidden scroll"
                        >
                            <div class="simplebar-content" style="padding: 0px">
                                <ul class="navbar-nav" id="navbar-nav">
                                    <li class="menu-title">Tổng quan</li>

                                    <li class="nav-item active">
                                        <a
                                                class="nav-link active"
                                                href="${pageContext.request.contextPath}/dashboardAdmin.jsp"
                                        >
                          <span class="nav-icon">
                            <i class="bi bi-columns-gap"></i>
                          </span>
                                            <span class="nav-text"> Bảng điều khiển </span>
                                        </a>
                                    </li>

                                    <li class="nav-item">
                                        <a
                                                class="nav-link menu-arrow"
                                                href="#sidebarProducts"
                                                data-bs-toggle="collapse"
                                                role="button"
                                                aria-expanded="false"
                                                aria-controls="sidebarProducts"
                                        >
                          <span class="nav-icon">
                            <i class="bi bi-heart-pulse"></i>
                          </span>
                                            <span class="nav-text"> Sản phẩm </span>
                                        </a>
                                        <div class="collapse" id="sidebarProducts">
                                            <ul class="nav sub-navbar-nav">
                                                <li class="sub-nav-item">
                                                    <a class="sub-nav-link" href=""
                                                    >Danh sách</a
                                                    >
                                                </li>
                                                <li class="sub-nav-item">
                                                    <a
                                                            class="sub-nav-link"
                                                            href=""
                                                    >Chi tiết</a
                                                    >
                                                </li>
                                                <li class="sub-nav-item">
                                                    <a class="sub-nav-link" href=""
                                                    >Chỉnh sửa</a
                                                    >
                                                </li>
                                                <li class="sub-nav-item">
                                                    <a class="sub-nav-link" href=""
                                                    >Tạo mới</a
                                                    >
                                                </li>
                                            </ul>
                                        </div>
                                    </li>

                                    <li class="nav-item">
                                        <a
                                                class="nav-link menu-arrow"
                                                href="#sidebarCategory"
                                                data-bs-toggle="collapse"
                                                role="button"
                                                aria-expanded="false"
                                                aria-controls="sidebarCategory"
                                        >
                          <span class="nav-icon">
                            <i class="bi bi-ui-checks"></i>
                          </span>
                                            <span class="nav-text"> Danh mục </span>
                                        </a>
                                        <div class="collapse" id="sidebarCategory">
                                            <ul class="nav sub-navbar-nav">
                                                <li class="sub-nav-item">
                                                    <a class="sub-nav-link" href=""
                                                    >Danh sách</a
                                                    >
                                                </li>
                                                <li class="sub-nav-item">
                                                    <a class="sub-nav-link" href=""
                                                    >Chỉnh sửa</a
                                                    >
                                                </li>
                                                <li class="sub-nav-item">
                                                    <a class="sub-nav-link" href=""
                                                    >Tạo mới</a
                                                    >
                                                </li>
                                            </ul>
                                        </div>
                                    </li>

                                    <li class="nav-item">
                                        <a
                                                class="nav-link menu-arrow"
                                                href="#sidebarOrders"
                                                data-bs-toggle="collapse"
                                                role="button"
                                                aria-expanded="false"
                                                aria-controls="sidebarOrders"
                                        >
                          <span class="nav-icon">
                            <i class="bi bi-cart4"></i>
                          </span>
                                            <span class="nav-text"> Đơn hàng </span>
                                        </a>
                                        <div class="collapse" id="sidebarOrders">
                                            <ul class="nav sub-navbar-nav">
                                                <li class="sub-nav-item">
                                                    <a class="sub-nav-link" href="${pageContext.request.contextPath}/order_list_Admin.jsp"
                                                    >Danh sách</a
                                                    >
                                                </li>
                                                <li class="sub-nav-item">
                                                    <a class="sub-nav-link" href="${pageContext.request.contextPath}/order_detail_Admin.jsp"
                                                    >Chi tiết</a
                                                    >
                                                </li>
                                            </ul>
                                        </div>
                                    </li>

                                    <li class="nav-item">
                                        <a
                                                class="nav-link menu-arrow"
                                                href="#sidebarInvoice"
                                                data-bs-toggle="collapse"
                                                role="button"
                                                aria-expanded="false"
                                                aria-controls="sidebarInvoice"
                                        >
                          <span class="nav-icon">
                            <i class="bi bi-receipt"></i>
                          </span>
                                            <span class="nav-text"> Hóa đơn </span>
                                        </a>
                                        <div class="collapse" id="sidebarInvoice">
                                            <ul class="nav sub-navbar-nav">
                                                <li class="sub-nav-item">
                                                    <a class="sub-nav-link" href=""
                                                    >Danh sách</a
                                                    >
                                                </li>
                                                <li class="sub-nav-item">
                                                    <a
                                                            class="sub-nav-link"
                                                            href=""
                                                    >Chi tiết</a
                                                    >
                                                </li>
                                                <li class="sub-nav-item">
                                                    <a class="sub-nav-link" href=""
                                                    >Tạo mới</a
                                                    >
                                                </li>
                                            </ul>
                                        </div>
                                    </li>

                                    <li class="menu-title mt-2">Tài khoản người dùng</li>

                                    <li class="nav-item">
                                        <a class="nav-link" href="#">
                          <span class="nav-icon">
                            <i class="bi bi-person-lines-fill"></i>
                          </span>
                                            <span class="nav-text"> Thông tin cá nhân </span>
                                        </a>
                                    </li>

                                    <li class="nav-item">
                                        <a
                                                class="nav-link menu-arrow"
                                                href="#sidebarCustomers"
                                                data-bs-toggle="collapse"
                                                role="button"
                                                aria-expanded="false"
                                                aria-controls="sidebarCustomers"
                                        >
                          <span class="nav-icon">
                            <i class="bi bi-people"></i>
                          </span>
                                            <span class="nav-text"> Khách hàng </span>
                                        </a>
                                        <div class="collapse" id="sidebarCustomers">
                                            <ul class="nav sub-navbar-nav">
                                                <li class="sub-nav-item">
                                                    <a class="sub-nav-link" href="#"
                                                    >Danh sách</a
                                                    >
                                                </li>
                                                <li class="sub-nav-item">
                                                    <a
                                                            class="sub-nav-link"
                                                            href="#"
                                                    >Chi tiết</a
                                                    >
                                                </li>
                                            </ul>
                                        </div>
                                    </li>

                                    <li class="menu-title mt-2">Hỗ trợ</li>

                                    <li class="nav-item">
                                        <a class="nav-link" href="#">
                          <span class="nav-icon">
                            <i class="bi bi-question-circle"></i>
                          </span>
                                            <span class="nav-text"> Câu hỏi thường gặp </span>
                                        </a>
                                    </li>

                                    <li class="nav-item">
                                        <a class="nav-link" href="#">
                          <span class="nav-icon">
                            <i class="bi bi-list-check"></i>
                          </span>
                                            <span class="nav-text"> Chính sách bảo mật </span>
                                        </a>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
                <div
                        class="simplebar-placeholder"
                        style="width: auto; height: 1745px"
                ></div>
            </div>
        </div>
    </div>
</div>
<script
        src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
        crossorigin="anonymous"
></script>
<script>
    document.addEventListener("DOMContentLoaded", function () {
        const toggleButton = document.querySelector(".button-toggle-menu");
        const mainNav = document.querySelector(".main-nav");
        const body = document.querySelector("body");

        toggleButton.addEventListener("click", function () {
            mainNav.classList.toggle("active");
        });

        document.addEventListener("click", function (event) {
            if (
                !mainNav.contains(event.target) &&
                !toggleButton.contains(event.target)
            ) {
                mainNav.classList.remove("active");
            }
        });

        mainNav.addEventListener("click", function (event) {
            event.stopPropagation();
        });

        const dropdownMenu = document.getElementById("dropdown-menu");
        const button = document.getElementById("page-header-user-dropdown");

        function toggleDropdown() {
            dropdownMenu.style.display =
                dropdownMenu.style.display === "block" ? "none" : "block";
        }

        button.addEventListener("click", function (event) {
            toggleDropdown();
        });

        document.addEventListener("click", function (event) {
            if (
                !button.contains(event.target) &&
                !dropdownMenu.contains(event.target)
            ) {
                dropdownMenu.style.display = "none";
            }
        });
    });
</script>
</body>
