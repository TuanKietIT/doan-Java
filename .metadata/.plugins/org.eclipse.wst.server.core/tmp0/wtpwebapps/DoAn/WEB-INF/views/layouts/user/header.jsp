<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<header id="header">
	<!--header-->
	<div class="header_top">
		<!--header_top-->
		<div class="container">
			<div class="row">
				<div class="col-sm-6">
					<div class="contactinfo">
						<ul class="nav nav-pills">
							<li><a href="#"><i class="fa fa-phone"></i> +0989392900</a></li>
							<li><a href="#"><i class="fa fa-envelope"></i>
									phantuankiette@gmail.com</a></li>
						</ul>
					</div>
				</div>
				<div class="col-sm-6">
					<div class="social-icons pull-right">
						<ul class="nav navbar-nav">
							<li><a href="#"><i class="fa-brands fa-facebook"></i></a></li>
							<li><a href="#"><i class="fa-brands fa-google"></i></a></li>
						</ul>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!--/header_top-->

	<div class="header-middle">
		<!--header-middle-->
		<div class="container">
			<div class="row">
				<div class="col-sm-4">
					<div class="logo pull-left">
						<a href="index.html"> <img class="girl img-responsive" src="<c:url value="/assets/user/images/logo.png" />" alt="" style="height:50px;width:70px;"/>
						</a>
					</div>
					<div class="btn-group pull-right">
						<div class="btn-group">
							<button type="button" class="btn btn-default dropdown-toggle usa"
								data-toggle="dropdown">
								USA <span class="caret"></span>
							</button>
							<ul class="dropdown-menu">
								<li><a href="#">Mỹ</a></li>
								<li><a href="#">Anh</a></li>
								<li><a href="#">Nhật</a></li>
								<li><a href="#">Việt Nam</a></li>
							</ul>
						</div>

						<div class="btn-group">
							<button type="button" class="btn btn-default dropdown-toggle usa"
								data-toggle="dropdown">
								DOLLAR <span class="caret"></span>
							</button>
							<ul class="dropdown-menu">
								<li><a href="#">Dollar</a></li>
								<li><a href="#">Yên</a></li>
								<li><a href="#">Đồng</a></li>
							</ul>
						</div>
					</div>
				</div>
				<div class="col-sm-8">
					<div class="shop-menu pull-right">
						<ul class="nav navbar-nav">
							<li><a href='<c:url value="/thanh-toan" />'><i class="fa fa-crosshairs"></i>
									Thanh toán</a></li>
							<li><a href='<c:url value="/gio-hang" />'><i class="fa fa-shopping-cart"></i>
									Giỏ hàng : ${ TTCart } sản phẩm</a>
							</li>
							<c:if test ="${ not empty loginInFo }" >
							       <li>
							          <a href=""><i class="fa fa-lock"></i>${ loginInFo.hoten }</a>
							       </li>
							       <li>
							          <a href='<c:url value="/dang-xuat" />'><i class="fa fa-lock"></i> Đăng Xuất </a>
							       </li>
						    </c:if>
						    <c:if test ="${ empty loginInFo }" >
							      <li>
							        <a href='<c:url value="/dang-ky" />'><i class="fa fa-lock"></i>Đăng nhập</a>
							     </li>
						    </c:if>
						</ul>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!--/header-middle-->

	<div class="header-bottom">
		<!--header-bottom-->
		<div class="container">
			<div class="row">
				<div class="col-sm-9">
					<div class="navbar-header">
						<button type="button" class="navbar-toggle" data-toggle="collapse"
							data-target=".navbar-collapse">
							<span class="sr-only">Toggle navigation</span> <span
								class="icon-bar"></span> <span class="icon-bar"></span> <span
								class="icon-bar"></span>
						</button>
					</div>
					<div class="mainmenu pull-left">
						<ul class="nav navbar-nav collapse navbar-collapse">
							<li><a href='<c:url value="/trang-chu" />' class="active">Trang chủ</a></li>
							<li class="dropdown"><a href='<c:url value="/san-pham" />'>Sản phẩm</a></li>
							<li class="dropdown"><a href='<c:url value="/tin-tuc/" />'>Tin tức</a></li>
							<li><a href='<c:url value="/gioi-thieu/" />'>Giới thiệu</a></li>
							<li><a href='<c:url value="/lien-he/" />'>Hỗ trợ</a></li>
						</ul>
					</div>
				</div>
				<div class="col-sm-3">
					<div class="search_box pull-right">
						<input type="text" placeholder="Search" />
					</div>
				</div>
			</div>
		</div>
	</div>
	<!--/header-bottom-->
</header>
<!--/header-->