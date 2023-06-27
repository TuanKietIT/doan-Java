<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<title>Home| Admin</title>
<body>
	<!--main content start-->
	<section id="main-content">
		<section class="wrapper">
			<!-- //market-->
			
			<div class="row">
				<div class="panel-body">
					<div class="w3layouts-main">
						<c:if test ="${ empty loginInFo }" >
								<h2 ">Đăng nhập</h2>
								<form:form action="admin"  method="POST" modelAttribute="admin">  
									 <form:input class="ggg" type="text" path="taikhoan" placeholder="Tên Tài Khoản"/> 
									 <form:input class="ggg" type="password" path="matkhau" placeholder="Mật Khẩu"/>
									 <span>
										<input type="checkbox" > Ghi chú
									 </span>
									 <br/> <br/>
									 <br/>
									 <a style="float:right;color:blue;" href=""> Quên mật khẩu !!</a>
									  <br/>
									   <br/>
									<button  type="submit" class="btn btn-default">Đăng nhập</button>
								 </form:form>
							</c:if>
                            <c:if test ="${ not empty loginInFo }" >
							     <li><a href="">${loginInFo.hoten }</a>
							</c:if>
					</div>
				</div>
			</div>
			
		</section>
	</section>
</body>
