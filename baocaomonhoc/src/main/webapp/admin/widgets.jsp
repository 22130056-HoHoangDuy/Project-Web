<!DOCTYPE html>
<!-- saved from url=(0050)http://localhost:8080/baocaomonhoc_war/widgets.jsp -->
<html><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">


	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>Lumino - Widgets</title>
	<link href="./Lumino - Widgets_files/bootstrap.min.css" rel="stylesheet">
	<link href="./Lumino - Widgets_files/font-awesome.min.css" rel="stylesheet">
	<link href="./Lumino - Widgets_files/datepicker3.css" rel="stylesheet">
	<link href="./Lumino - Widgets_files/styles.css" rel="stylesheet">

	<!--Custom Font-->
	<link href="./Lumino - Widgets_files/css" rel="stylesheet">
	<!--[if lt IE 9]>
	<script src="js/admin/html5shiv.js"></script>
	<script src="js/admin/respond.min.js"></script>
	<![endif]-->
</head>
<body>
<nav class="navbar navbar-custom navbar-fixed-top" role="navigation">
	<div class="container-fluid">
		<div class="navbar-header">
			<button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#sidebar-collapse" aria-expanded="true"><span class="sr-only">Toggle navigation</span>
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>
				<span class="icon-bar"></span></button>
			<a class="navbar-brand" href="http://localhost:8080/baocaomonhoc_war/widgets.jsp#"><span>Lumino</span>Admin</a>
			<ul class="nav navbar-top-links navbar-right">
				<li class="dropdown"><a class="dropdown-toggle count-info" data-toggle="dropdown" href="http://localhost:8080/baocaomonhoc_war/widgets.jsp#">
					<em class="fa fa-envelope"></em><span class="label label-danger">15</span>
				</a>
					<ul class="dropdown-menu dropdown-messages">
						<li>
							<div class="dropdown-messages-box"><a href="http://localhost:8080/baocaomonhoc_war/profile.html" class="pull-left">
								<img alt="image" class="img-circle" src="http://placehold.it/40/30a5ff/fff">
							</a>
								<div class="message-body"><small class="pull-right">3 mins ago</small>
									<a href="http://localhost:8080/baocaomonhoc_war/widgets.jsp#"><strong>John Doe</strong> commented on <strong>your photo</strong>.</a>
									<br><small class="text-muted">1:24 pm - 25/03/2015</small></div>
							</div>
						</li>
						<li class="divider"></li>
						<li>
							<div class="dropdown-messages-box"><a href="http://localhost:8080/baocaomonhoc_war/profile.html" class="pull-left">
								<img alt="image" class="img-circle" src="http://placehold.it/40/30a5ff/fff">
							</a>
								<div class="message-body"><small class="pull-right">1 hour ago</small>
									<a href="http://localhost:8080/baocaomonhoc_war/widgets.jsp#">New message from <strong>Jane Doe</strong>.</a>
									<br><small class="text-muted">12:27 pm - 25/03/2015</small></div>
							</div>
						</li>
						<li class="divider"></li>
						<li>
							<div class="all-button"><a href="http://localhost:8080/baocaomonhoc_war/widgets.jsp#">
								<em class="fa fa-inbox"></em> <strong>All Messages</strong>
							</a></div>
						</li>
					</ul>
				</li>
				<li class="dropdown"><a class="dropdown-toggle count-info" data-toggle="dropdown" href="http://localhost:8080/baocaomonhoc_war/widgets.jsp#">
					<em class="fa fa-bell"></em><span class="label label-info">5</span>
				</a>
					<ul class="dropdown-menu dropdown-alerts">
						<li><a href="http://localhost:8080/baocaomonhoc_war/widgets.jsp#">
							<div><em class="fa fa-envelope"></em> 1 New Message
								<span class="pull-right text-muted small">3 mins ago</span></div>
						</a></li>
						<li class="divider"></li>
						<li><a href="http://localhost:8080/baocaomonhoc_war/widgets.jsp#">
							<div><em class="fa fa-heart"></em> 12 New Likes
								<span class="pull-right text-muted small">4 mins ago</span></div>
						</a></li>
						<li class="divider"></li>
						<li><a href="http://localhost:8080/baocaomonhoc_war/widgets.jsp#">
							<div><em class="fa fa-user"></em> 5 New Followers
								<span class="pull-right text-muted small">4 mins ago</span></div>
						</a></li>
					</ul>
				</li>
			</ul>
		</div>
	</div><!-- /.container-fluid -->
</nav>
<div id="sidebar-collapse" class="col-sm-3 col-lg-2 sidebar collapse in" aria-expanded="true" style="">
	<div class="profile-sidebar">
		<div class="profile-userpic">
			<img src="http://placehold.it/50/30a5ff/fff" class="img-responsive" alt="">
		</div>
		<div class="profile-usertitle">
			<div class="profile-usertitle-name">Username</div>
			<div class="profile-usertitle-status"><span class="indicator label-success"></span>Online</div>
		</div>
		<div class="clear"></div>
	</div>
	<div class="divider"></div>
	<form role="search">
		<div class="form-group">
			<input type="text" class="form-control" placeholder="Search">
		</div>
	</form>
	<ul class="nav menu">
		<li><a href="http://localhost:8080/baocaomonhoc_war/index.html"><em class="fa fa-dashboard">&nbsp;</em> Dashboard</a></li>
		<li class="active"><a href="http://localhost:8080/baocaomonhoc_war/widgets.html"><em class="fa fa-calendar">&nbsp;</em> Widgets</a></li>
		<li><a href="http://localhost:8080/baocaomonhoc_war/charts.html"><em class="fa fa-bar-chart">&nbsp;</em> Charts</a></li>
		<li><a href="http://localhost:8080/baocaomonhoc_war/elements.html"><em class="fa fa-toggle-off">&nbsp;</em> UI Elements</a></li>
		<li><a href="http://localhost:8080/baocaomonhoc_war/panels.html"><em class="fa fa-clone">&nbsp;</em> Alerts &amp; Panels</a></li>
		<li class="parent "><a data-toggle="collapse" href="http://localhost:8080/baocaomonhoc_war/widgets.jsp#sub-item-1">
			<em class="fa fa-navicon">&nbsp;</em> Multilevel <span data-toggle="collapse" href="#sub-item-1" class="icon pull-right"><em class="fa fa-plus"></em></span>
		</a>
			<ul class="children collapse" id="sub-item-1">
				<li><a class="" href="http://localhost:8080/baocaomonhoc_war/widgets.jsp#">
					<span class="fa fa-arrow-right">&nbsp;</span> Sub Item 1
				</a></li>
				<li><a class="" href="http://localhost:8080/baocaomonhoc_war/widgets.jsp#">
					<span class="fa fa-arrow-right">&nbsp;</span> Sub Item 2
				</a></li>
				<li><a class="" href="http://localhost:8080/baocaomonhoc_war/widgets.jsp#">
					<span class="fa fa-arrow-right">&nbsp;</span> Sub Item 3
				</a></li>
			</ul>
		</li>
		<li><a href="http://localhost:8080/baocaomonhoc_war/login.html"><em class="fa fa-power-off">&nbsp;</em> Logout</a></li>
	</ul>
</div><!--/.sidebar-->

<div class="col-sm-9 col-sm-offset-3 col-lg-10 col-lg-offset-2 main">
	<div class="row">
		<ol class="breadcrumb">
			<li><a href="http://localhost:8080/baocaomonhoc_war/widgets.jsp#">
				<em class="fa fa-home"></em>
			</a></li>
			<li class="active">Widgets</li>
		</ol>
	</div><!--/.row-->

	<div class="row">
		<div class="col-lg-12">
			<h1 class="page-header">Products</h1>
		</div>
	</div><!--/.row-->

	<div class="row">


		<div class="panel-body">
			<div class="table-responsive">
				<table class="table table-striped table-bordered text-center">
					<thead class="thead-dark">
					<tr>
						<th>ID</th>
						<th>Tên sản phẩm</th>
						<th>Giá</th>
						<th>Trạng thái</th>
						<th>Hình ảnh</th>
					</tr>
					</thead>
					<tbody id="productTableBody"><tr>
						<td>1</td>
						<td>Máy đo huyết áp</td>
						<td>750000 VNĐ</td>
						<td>Còn hàng</td>
						<td><img src="./Lumino - Widgets_files/blood_pressure_monitor.jpg" width="50"></td>
					</tr><tr>
						<td>2</td>
						<td>Nhiệt kế điện tử</td>
						<td>150000 VNĐ</td>
						<td>Còn hàng</td>
						<td><img src="./Lumino - Widgets_files/thermometer.jpg" width="50"></td>
					</tr><tr>
						<td>3</td>
						<td>Băng gạc y tế</td>
						<td>50000 VNĐ</td>
						<td>Còn hàng</td>
						<td><img src="./Lumino - Widgets_files/bandage.jpg" width="50"></td>
					</tr><tr>
						<td>4</td>
						<td>Khẩu trang y tế</td>
						<td>30000 VNĐ</td>
						<td>Còn hàng</td>
						<td><img src="./Lumino - Widgets_files/face_mask.jpg" width="50"></td>
					</tr><tr>
						<td>5</td>
						<td>Ống tiêm vô trùng</td>
						<td>10000 VNĐ</td>
						<td>Còn hàng</td>
						<td><img src="./Lumino - Widgets_files/syringe.jpg" width="50"></td>
					</tr><tr>
						<td>6</td>
						<td>máy trợ thính</td>
						<td>2000 VNĐ</td>
						<td>Còn hàng</td>
						<td><img src="./Lumino - Widgets_files/243afa1c-4ba3-43e3-9646-6f08de2c4051-1730559256136.webp" width="50"></td>
					</tr><tr>
						<td>7</td>
						<td>as</td>
						<td>14 VNĐ</td>
						<td>Còn hàng</td>
						<td><img src="./Lumino - Widgets_files/tải xuống.jpg" width="50"></td>
					</tr></tbody>
				</table>
			</div>


		</div>
	</div>
	<button onclick="loadNewPage()">Thêm sản phẩm</button>
	<div id="newPage">
		<div id="contentArea">
			<!-- Nội dung từ trang JSP sẽ được tải vào đây -->
		</div>

	</div>
	<br>
	<button onclick="closeNewPage()">Đóng</button>


	<div class="col-sm-12">
		<p class="back-link">Lumino Theme by <a href="https://www.medialoot.com/">Medialoot</a></p>
	</div>
</div><!--/.row-->
<!--/.main-->


<script src="./Lumino - Widgets_files/jquery-1.11.1.min.js.download"></script>
<script src="./Lumino - Widgets_files/bootstrap.min.js.download"></script>
<script src="./Lumino - Widgets_files/chart.min.js.download"></script>
<script src="./Lumino - Widgets_files/chart-data.js.download"></script>
<script src="./Lumino - Widgets_files/easypiechart.js.download"></script>
<script src="./Lumino - Widgets_files/easypiechart-data.js.download"></script>
<script src="./Lumino - Widgets_files/bootstrap-datepicker.js.download"></script>
<script src="./Lumino - Widgets_files/custom.js.download"></script>
<script src="./Lumino - Widgets_files/loadProduct.js.download"></script>
<script>
	function loadNewPage() {
		// Gọi AJAX để tải nội dung trang JSP
		var xhr = new XMLHttpRequest();
		xhr.open("GET", "admin/addProduct.jsp", true);
		xhr.onreadystatechange = function () {
			if (xhr.readyState == 4 && xhr.status == 200) {
				document.getElementById("contentArea").innerHTML = xhr.responseText;
				document.getElementById("newPage").style.display = "flex";
			}
		};
		xhr.send();
	}

	function closeNewPage() {
		document.getElementById("newPage").style.display = "none";
	}
</script>




</body></html>