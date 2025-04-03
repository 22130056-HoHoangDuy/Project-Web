<%--
  Created by IntelliJ IDEA.
  User: Acer
  Date: 16-01-2025
  Time: 00:13
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Dashboard</title>
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
    <link rel="stylesheet" href="../css/dashboard.css" />
    <link rel="stylesheet" href="../css/headerAdmin.css"/>
    <style>
        @media (max-width: 1200px) {
            #orders-table {
                display: inline-block;
            }
        }
    </style>
</head>
<body>
<header>
    <jsp:include page="headerAdmin.jsp"></jsp:include>
</header>
<div class="wrapper">
    <div class="page-content">
        <!-- Start Container Fluid -->
        <div class="container-fluid">
            <!-- Start here.... -->
            <div class="row">
                <div class="col-xxl-5">
                    <div class="row">
                        <div class="col-md-6">
                            <div class="card overflow-hidden">
                                <div class="card-body">
                                    <div class="row">
                                        <div class="col-6">
                                            <div class="avatar-md bg-soft-primary rounded">
                                                <iconify-icon
                                                        icon="solar:cart-5-bold-duotone"
                                                        class="avatar-title fs-32 text-primary"
                                                ></iconify-icon>
                                            </div>
                                        </div>
                                        <!-- end col -->
                                        <div class="col-6 text-end">
                                            <p class="text-muted mb-0 text-truncate">
                                                Total Orders
                                            </p>
                                            <h3 class="text-dark mt-1 mb-0">13, 647</h3>
                                        </div>
                                        <!-- end col -->
                                    </div>
                                    <!-- end row-->
                                </div>
                                <!-- end card body -->
                            </div>
                            <!-- end card -->
                        </div>
                        <!-- end col -->
                        <div class="col-md-6">
                            <div class="card overflow-hidden">
                                <div class="card-body">
                                    <div class="row">
                                        <div class="col-6">
                                            <div class="avatar-md bg-soft-primary rounded">
                                                <i
                                                        class="bx bx-dollar-circle avatar-title text-primary fs-24"
                                                ></i>
                                            </div>
                                        </div>
                                        <!-- end col -->
                                        <div class="col-6 text-end">
                                            <p class="text-muted mb-0 text-truncate">
                                                Booked Revenue
                                            </p>
                                            <h3 class="text-dark mt-1 mb-0">$123.6k</h3>
                                        </div>
                                        <!-- end col -->
                                    </div>
                                    <!-- end row-->
                                </div>
                                <!-- end card body -->
                            </div>
                            <!-- end card -->
                        </div>
                        <!-- end col -->
                    </div>
                    <!-- end row -->
                </div>
                <!-- end col -->

                <div class="col-xxl-7">
                    <div class="card">
                        <div class="card-body">
                            <div
                                    class="d-flex justify-content-between align-items-center"
                            >
                                <h4 class="card-title">Performance</h4>
                                <div>
                                    <button
                                            type="button"
                                            class="btn btn-sm btn-outline-light"
                                    >
                                        ALL
                                    </button>
                                </div>
                            </div>
                            <!-- end card-title-->

                            <div dir="ltr">
                                <div
                                        id="bar-chart"
                                        style="width: 100%; height: 400px"
                                ></div>
                            </div>
                        </div>
                        <!-- end card body -->
                    </div>
                    <!-- end card -->
                </div>
                <!-- end col -->
            </div>
            <!-- end row -->

            <div class="row">
                <div class="col">
                    <div class="card">
                        <div class="card-body" style="padding-bottom: 0">
                            <div
                                    class="d-flex align-items-center justify-content-between"
                            >
                                <h4 class="card-title">Recent Orders</h4>

                                <a href="#!" class="btn btn-sm btn-soft-primary">
                                    <i class="bx bx-plus me-1"></i>Create Order
                                </a>
                            </div>
                        </div>
                        <!-- end card body -->
                        <div>
                            <!-- <div class="table-responsive table-centered"> -->
                            <table
                                    id="orders-table"
                                    class="table align-middle mb-0 table-hover table-centered"
                            >
                                <thead class="bg-light">
                                <tr>
                                    <th class="ps-3">Order ID.</th>
                                    <th>Date</th>
                                    <th>Product</th>
                                    <th>Customer Name</th>
                                    <th>Email ID</th>
                                    <th>Phone No.</th>
                                    <th>Address</th>
                                    <th>Payment Type</th>
                                    <th>Status</th>
                                </tr>
                                </thead>
                                <!-- end thead-->
                                <tbody>
                                <tr>
                                    <td class="ps-3">
                                        <a href="#">5</a>
                                    </td>
                                    <td>29 April 2024</td>
                                    <td>
                                        <img
                                                src="#"
                                                alt="mat-na-mui-cho-may-tho-bmc-p2-av1"
                                                class="img-fluid avatar-sm"
                                        />
                                    </td>
                                    <td>
                                        <a href="#!">Anna M. Hines</a>
                                    </td>
                                    <td>anna.hines@mail.com</td>
                                    <td>(+1)-555-1564-261</td>
                                    <td>Burr Ridge/Illinois</td>
                                    <td>Credit Card</td>
                                    <td>
                                        <i class="bx bxs-circle text-success me-1"></i
                                        >Completed
                                    </td>
                                </tr>
                                <tr>
                                    <td class="ps-3">
                                        <a href="#">4</a>
                                    </td>
                                    <td>25 April 2024</td>
                                    <td>
                                        <img
                                                src="#"
                                                alt="may-do-duong-huyet-sapphire-plus1537408230"
                                                class="img-fluid avatar-sm"
                                        />
                                    </td>
                                    <td>
                                        <a href="#!">Judith H. Fritsche</a>
                                    </td>
                                    <td>judith.fritsche.com</td>
                                    <td>(+57)-305-5579-759</td>
                                    <td>SULLIVAN/Kentucky</td>
                                    <td>Credit Card</td>
                                    <td>
                                        <i class="bx bxs-circle text-success me-1"></i
                                        >Completed
                                    </td>
                                </tr>
                                <tr>
                                    <td class="ps-3">
                                        <a href="#">3</a>
                                    </td>
                                    <td>25 April 2024</td>
                                    <td>
                                        <img
                                                src="#"
                                                alt="may-do-huyet-ap-bap-tay-dien-tu-vofonn-bsav1"
                                                class="img-fluid avatar-sm"
                                        />
                                    </td>
                                    <td>
                                        <a href="#!">Peter T. Smith</a>
                                    </td>
                                    <td>peter.smith@mail.com</td>
                                    <td>(+33)-655-5187-93</td>
                                    <td>Yreka/California</td>
                                    <td>Pay Pal</td>
                                    <td>
                                        <i class="bx bxs-circle text-success me-1"></i
                                        >Completed
                                    </td>
                                </tr>
                                <tr>
                                    <td class="ps-3">
                                        <a href="#">2</a>
                                    </td>
                                    <td>21 April 2024</td>
                                    <td>
                                        <img
                                                src="#"
                                                alt="may-do-huyet-ap-dien-tu-bap-tay-wellmed-axd-804-avt-04072024.jpg"
                                                class="img-fluid avatar-sm"
                                        />
                                    </td>
                                    <td>
                                        <a href="#!">Emmanuel J. Delcid</a>
                                    </td>
                                    <td>emmanuel.delicid@mail.com</td>
                                    <td>(+30)-693-5553-637</td>
                                    <td>Atlanta/Georgia</td>
                                    <td>Pay Pal</td>
                                    <td>
                                        <i class="bx bxs-circle text-primary me-1"></i
                                        >Processing
                                    </td>
                                </tr>
                                <tr>
                                    <td class="ps-3">
                                        <a href="#">1</a>
                                    </td>
                                    <td>18 April 2024</td>
                                    <td>
                                        <img
                                                src="#"
                                                alt="may-tao-oxy-5-lit-keyhub-reiwa-k5bw-int-5ax-av1-13"
                                                class="img-fluid avatar-sm"
                                        />
                                    </td>
                                    <td>
                                        <a href="#!">William J. Cook</a>
                                    </td>
                                    <td>william.cook@mail.com</td>
                                    <td>(+91)-855-5446-150</td>
                                    <td>Rosenberg/Texas</td>
                                    <td>Credit Card</td>
                                    <td>
                                        <i class="bx bxs-circle text-primary me-1"></i
                                        >Processing
                                    </td>
                                </tr>
                                </tbody>
                                <!-- end tbody -->
                            </table>
                            <!-- end table -->
                        </div>
                        <!-- table responsive -->
                    </div>
                    <!-- end card -->
                </div>
                <!-- end col -->
            </div>
            <!-- end row -->
        </div>
        <!-- End Container Fluid -->
    </div>
</div>

<script
        src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
        crossorigin="anonymous"
></script>
<script src="../js/dashboard.js"></script>
<script src="../js/paging.js"></script>
</body>
</html>
