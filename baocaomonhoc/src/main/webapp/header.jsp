<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<body>
<div class="topbar">
    <div class="container-fluid">
        <div class="navbar-header">
            <div class="d-flex align-items-center">
                <div class="topbar-item">
                    <a
                            href="${pageContext.request.contextPath}/home"
                            type="button"
                            class="topbar-button"
                    >
                  <span class="d-flex align-items-center">
                    <div class="avatar avatar-sm">
                      <img
                              class="rounded-circle"
                              width="32"
                              src="img/home.png"
                              alt="avatar-3"
                      />
                    </div>
                    <div class="d-none d-lg-block ms-2">
                      <h4
                              class="fw-bold topbar-button pe-none text-uppercase mb-0"
                      >
                        Y Te Hoang Kim
                      </h4>
                    </div>
                  </span>
                    </a>
                </div>
            </div>
            <div class="d-flex align-items-center gap-1">
                <!-- User -->
                <div class="dropdown topbar-item">
                    <form class="app-search d-none d-md-block ms-2">
                        <div class="position-relative">
                            <input
                                    type="search"
                                    class="form-control"
                                    placeholder="Search..."
                                    autocomplete="off"
                                    value=""
                            />
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>
<div class="main-nav">
    <jsp:include page="menu.jsp"></jsp:include>
</div>
<script>
    document.addEventListener("DOMContentLoaded", () => {
        const topbar = document.querySelector("header");
        const mainNav = document.querySelector(".main-nav");

        window.addEventListener("scroll", () => {
            const topbarBottom = topbar.getBoundingClientRect().bottom;

            if (topbarBottom <= 0) {
                mainNav.classList.add("scroll");
            } else {
                mainNav.classList.remove("scroll");
            }
        });
    });
</script>
</body>
