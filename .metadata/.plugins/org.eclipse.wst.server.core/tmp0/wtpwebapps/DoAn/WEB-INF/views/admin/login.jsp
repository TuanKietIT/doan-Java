<div style=" background-color: Gray" class="w3layouts-main">
		    <c:if test ="${ empty loginInFo }" >
				 <h2 style="color:Orange">Đăng nhập Admin</h2>
					<form:form action="admin"  method="POST" modelAttribute="admin">
					    <form:input type="text"  class="ggg" path="taikhoan" placeholder="Tên Tài Khoản"/> 
						<form:input type="password" class="ggg" path="matkhau" placeholder="Mật Khẩu"/>
						<span><input type="checkbox" /> Ghi nhớ</span>
						<h6 style="color:orange"><a href="#">Quên mật khẩu?</a></h6>
					    <div class="clearfix"></div>
					    <br/>
						<button  type="submit" class="btn btn-default">Đăng nhập</button>
					</form:form>
			 </c:if>
			<c:if test ="${ not empty loginInFo }" >
				 <li><a href="">${loginInFo.hoten }</a>
			</c:if>
     </div>
 