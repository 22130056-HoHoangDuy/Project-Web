<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="f" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<head>
    <title>Order-List</title>
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
            href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css"
            rel="stylesheet"
    />
    <link
            href="https://cdn.jsdelivr.net/npm/boxicons@2.1.4/css/boxicons.min.css"
            rel="stylesheet"
    />
    <link
            rel="stylesheet"
            type="text/css"
            href="https://cdn.datatables.net/1.13.4/css/jquery.dataTables.min.css"
    />
    <script src="https://cdn.jsdelivr.net/npm/apexcharts"></script>
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <script
            type="text/javascript"
            charset="utf8"
            src="https://cdn.datatables.net/1.13.4/js/jquery.dataTables.min.js"
    ></script>
    <script src="https://code.iconify.design/iconify-icon/1.0.7/iconify-icon.min.js"></script>
    <link rel="stylesheet" href="../css/homeAdmin.css"/>
    <link rel="stylesheet" href="../css/order_list_Admin.css"/>
</head>
<body>
<div class="wrapper">
    <div class="page-content">
        <div class="container-xxl">
            <div class="row">
                <div class="col-xl-12">
                    <div class="card">
                        <div
                                class="d-flex card-header justify-content-between align-items-center"
                        >
                            <div>
                                <h4 class="card-title">All Order List</h4>
                            </div>
                        </div>
                        <div class="card-body p-0">
                            <div class="table-responsive">
                                <table
                                        id="orders-table"
                                        class="table align-middle mb-0 table-hover table-centered"
                                >
                                    <thead class="bg-light-subtle">
                                    <tr>
                                        <th>Order ID</th>
                                        <th>Created at</th>
                                        <th>Customer</th>
                                        <th>Total</th>
                                        <th>Payment Status</th>
                                        <th>Items</th>
                                        <th>Order Status</th>
                                        <th>Action</th>
                                    </tr>
                                    </thead>
                                    <tbody>
                                    <c:forEach var="o" items="${orders}">
                                        <tr>
                                            <td>${o.orderId}</td>
                                            <td>${o.orderDate}</td>
                                            <td>
                                                <a href="#!" class="link-primary fw-medium"
                                                >${o.customerName}</a
                                                >
                                            </td>
                                            <td><f:formatNumber value="${o.orderAmount}"></f:formatNumber></td>
                                            <td>
                                                <span class="badge bg-light text-dark px-2 py-1 fs-13"
                                                >hhkjkhk</span>
                                            </td>
                                            <td>45</td>
                                            <td>
                                                <span class="badge border border-secondary text-secondary px-2 py-1 fs-13"
                                                >${o.orderStatus}</span>
                                            </td>
                                            <td>
                                                <div class="d-flex gap-2">
                                                    <a href="#!" class="btn btn-light btn-sm"
                                                    >
                                                        <iconify-icon
                                                                icon="solar:eye-broken"
                                                                class="align-middle fs-18"
                                                        ></iconify-icon
                                                        >
                                                    </a>
                                                    <a href="#!" class="btn btn-soft-primary btn-sm"
                                                    >
                                                        <iconify-icon
                                                                icon="solar:pen-2-broken"
                                                                class="align-middle fs-18"
                                                        ></iconify-icon
                                                        >
                                                    </a>
                                                    <a href="#!" class="btn btn-soft-danger btn-sm"
                                                    >
                                                        <iconify-icon
                                                                icon="solar:trash-bin-minimalistic-2-broken"
                                                                class="align-middle fs-18"
                                                        ></iconify-icon
                                                        >
                                                    </a>
                                                </div>
                                            </td>
                                        </tr>
                                    </c:forEach>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
        crossorigin="anonymous"></script>
<script src="../js/paging.js"></script>
</body>
</html>

