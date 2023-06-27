<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.opensymphony.com/sitemesh/decorator"
	prefix="decorator"%>
<%@ taglib uri="http://www.opensymphony.com/sitemesh/page" prefix="page"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!--/head-->

<body>
    <%@include file="/WEB-INF/views/layouts/admin/header.jsp"%>
	<!--main content start-->
	<section id="main-content">
		<section class="wrapper">
			<!-- //market-->
			<div class="market-updates">
				<div class="col-md-3 market-update-gd">
					<div class="market-update-block clr-block-2">
						<div class="col-md-4 market-update-right">
							<i class="fa fa-eye"> </i>
						</div>
						<div class="col-md-8 market-update-left">
							<h4>Người xem</h4>
							<h3>200</h3>
							<p>Hiện thị số người xem</p>
						</div>
						<div class="clearfix"></div>
					</div>
				</div>
				<div class="col-md-3 market-update-gd">
					<div class="market-update-block clr-block-1">
						<div class="col-md-4 market-update-right">
							<i class="fa fa-users"></i>
						</div>
						<div class="col-md-8 market-update-left">
							<h4>Người đã mua</h4>
							<h3>20</h3>
							<p>Hiện thị số người mua</p>
						</div>
						<div class="clearfix"></div>
					</div>
				</div>
				<div class="col-md-3 market-update-gd">
					<div class="market-update-block clr-block-3">
						<div class="col-md-4 market-update-right">
							<i class="fa fa-usd"></i>
						</div>
						<div class="col-md-8 market-update-left">
							<h4>Số lượng bán</h4>
							<h3>10</h3>
							<p>Hiện thị số lượng sản phẩm</p>
						</div>
						<div class="clearfix"></div>
					</div>
				</div>
				<div class="col-md-3 market-update-gd">
					<div class="market-update-block clr-block-4">
						<div class="col-md-4 market-update-right">
							<i class="fa fa-shopping-cart" aria-hidden="true"></i>
						</div>
						<div class="col-md-8 market-update-left">
							<h4>Đang đặt</h4>
							<h3>20</h3>
							<p>Hiện thị sản phẩm đã đặt</p>
						</div>
						<div class="clearfix"></div>
					</div>
				</div>
				<div class="clearfix"></div>
			</div>
			<!-- //market-->
			<div class="row">
				<div class="panel-body">
					<div class="col-md-12 w3ls-graph">
						<!--agileinfo-grap-->
						<div class="agileinfo-grap">
							<div class="agileits-box">
								<header class="agileits-box-header clearfix">
									<h3>Hãy cố gắng để có thể đạt được mục đích như mong
										muốn!!</h3>
									<div class="toolbar"></div>
								</header>
								<div class="agileits-box-body clearfix">
									<div id="hero-area"></div>
								</div>
							</div>
						</div>
						<!--//agileinfo-grap-->

					</div>
				</div>
			</div>
			<div class="agil-info-calendar">

				<div class="agile-last-grids">
					<div class="col-md-4 agile-last-left">
						<div class="agile-last-grid">
							<div class="area-grids-heading">
								<h3>Uy tính</h3>
							</div>

						</div>
					</div>
					<div class="col-md-4 agile-last-left agile-last-middle">
						<div class="agile-last-grid">
							<div class="area-grids-heading">
								<h3>Nhanh chống</h3>
							</div>

						</div>
					</div>
					<div class="col-md-4 agile-last-left agile-last-right">
						<div class="agile-last-grid">
							<div class="area-grids-heading">
								<h3>Chất lượng</h3>
							</div>

						</div>
						<div class="clearfix"></div>
						<br /> <br /> <br /> <br />
					</div>
		</section>
		</section>
		
</body>
</html>