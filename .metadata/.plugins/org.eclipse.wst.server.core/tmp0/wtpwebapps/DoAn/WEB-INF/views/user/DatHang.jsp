<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
	<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>  
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>  
<title>| Thanh toán |</title>
</head>
<body>
<%@include file="/WEB-INF/views/layouts/user/header.jsp"%>
<section id="cart_items">
		<div class="container">
			<div class="breadcrumbs">
				<ol class="breadcrumb">
				  <li><a href="#">Home</a></li>
				  <li class="active">Thanh toán</li>
				</ol>
			</div><!--/breadcrums-->
			
			<div class="shopper-informations">
				<div class="row">
					<div class="col-sm-12 clearfix">
						<div class="bill-to">
							<h3 style="font-size:30px; color:red">Thanh toán đơn hàng</h3>
							<div class="form-one">
								<form:form action="thanh-toan"  method="POST" modelAttribute="bills">  
								    <label>Họ và tên:</label>
								    <form:input type="text" path="hoten" placeholder="Họ và Tên"/> 
									<label>email:</label>
									<form:input type="email" path="email" placeholder="Mời nhập email"/> 
									<label>Số điện thoại:</label>
								    <form:input type="text" path="sodienthoai" placeholder="Số điện thoại"/> 
									<label>Địa chỉ:</label>
								    <form:textarea type="text"  path="diachi" placeholder="Địa chỉ" rows="8"/>
									<label>ghi chú:</label>
									<form:textarea type="text"  path="ghichu" placeholder="ghi chú" rows="8"/>
									<button class="btn btn-primary" type="submit" class="btn btn-default">Thanh toán</button>
								</form:form>
							</div>
							
						</div>
					</div>
					 <br/>		
				</div>
			</div>
			<div class="review-payment">
				<h2>Cảm ơn khách hàng đã tin tưởng đến shop!!</h2>
			</div>
		</div>
	</section> <!--/#cart_items-->
	<%@include file="/WEB-INF/views/layouts/user/footer.jsp"%>
</body>
</html>