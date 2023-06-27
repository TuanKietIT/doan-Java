<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
	<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>  
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>  
<title>| Đăng ký - Đăng nhập |</title>
<body>
<%@include file="/WEB-INF/views/layouts/user/header.jsp"%>
	<section ><!--form-->
			<div class="container">
				<div class="row">
					<div class="col-sm-4 " style="margin-left:150px;">
						<div class="login-form"><!--login form-->
						  <c:if test ="${ empty loginInFo }" >
								<h2 style="margin-left:120px;">Đăng nhập</h2>
								<form:form action="dang-nhap"  method="POST" modelAttribute="user">  
									 <form:input type="text" path="taikhoan" placeholder="Tên Tài Khoản"/> 
									 <form:input type="password" path="matkhau" placeholder="Mật Khẩu"/>
									 <span>
										<input type="checkbox" class="checkbox"> 
										Lưu thông tin
									 </span>
									 <br/>
									  <span>
									 </span>
									 <br/>
									 <a href=""> Quên mật khẩu !!</a>
									<button  type="submit" class="btn btn-default">Đăng nhập</button>
								 </form:form>
							</c:if>
							<c:if test ="${ not empty loginInFo }" >
							     <li><a href="">${loginInFo.hoten }</a>
							</c:if>
						</div><!--/login form-->
					</div>
					<div class="col-sm-1">
					    <h2 class="or">Hoặc</h2>
				    </div>
					<div class="col-sm-4" style="margin-bottom:120px;">
						<div class="signup-form"><!--sign up form-->
							<h2>Đăng ký</h2>
							<form:form action="dang-ky"  method="POST" modelAttribute="user">  
							    <form:input type="text" path="hoten" placeholder="Họ và Tên"/> 
							    <form:input type="text" path="taikhoan" placeholder="Tên Tài Khoản"/> 
							    <form:input type="password" path="matkhau" placeholder="Mật Khẩu"/> 
							    <form:input type="email" path="email" placeholder="Mời nhập email"/> 
							    <form:input type="text" path="sodienthoai" placeholder="Số điện thoại"/> 
							    <form:input type="text" path="diachi" placeholder="Địa chỉ"/>
								<button type="submit" class="btn btn-default">Đăng ký</button>
							</form:form>
						</div><!--/sign up form-->
					</div>
				</div>
			</div>
		</section><!--/form-->
		
<%@include file="/WEB-INF/views/layouts/user/footer.jsp"%>
</body>