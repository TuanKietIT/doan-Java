<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!--header start-->
<header class="header fixed-top clearfix">
	<!--logo start-->
	<div class="brand">
	    <a href="index.html" class="logo">
	        Quản Trị
	    </a>
	    <div class="sidebar-toggle-box">
	        <div class="fa fa-bars"></div>
	    </div>
	</div>
	<div class="top-nav clearfix">
	    <!--search & user info start-->
	    <ul class="nav pull-right top-menu">
	        <!-- user login dropdown start-->
	        <li class="dropdown">
	            <div data-toggle="dropdown" class="dropdown-toggle" href="#">
	                <img src="<c:url value="/assets/user/images/admin/2.png" />" alt="" />
	                <c:if test ="${ not empty loginInfo }" >
							       <li>
							          <a href=""><i class="fa fa-lock"></i>${ loginInfo.hoten }</a>
							       </li>
							       <li>
							          <a href='<c:url value="/admin" />'><i class="fa fa-lock"></i> Đăng Xuất </a>
							       </li>
						    </c:if>
						    <c:if test ="${ empty loginInfo }" >
							      <li>
							        <a href='<c:url value="/admin" />'><i class="fa fa-lock"></i>Đăng nhập</a>
							     </li>
						    </c:if>
	                <span class="username"></span>
	            </div>
	        </li>
	       
	    </ul>
	</div>
</header>
<!--header end-->    
<!--sidebar start-->
<aside>
    <div id="sidebar" class="nav-collapse">
        <!-- menu start-->
        <div class="leftside-navigation">
            <ul class="sidebar-menu" id="nav-accordion">
                
                <li class="sub-menu">
                    <a href='<c:url value="/san-pham-admin" />'>
                        <i class="fa fa-book"></i>
                        <span>Sản phẩm</span>
                    </a>
                </li>
                <li>
                    <a href='<c:url value="/tin-tuc-admin" />'>
                        <i class="fa fa-bullhorn"></i>
                        <span>Tin tức</span>
                    </a>
                </li>
                <li class="sub-menu">
                     <a href='<c:url value="/khach-hang-admin" />'>
                        <i class="fa fa-th"></i>
                        <span>Khách hàng</span>
                    </a>
                </li>
                
            </ul>           
          </div>
        <!-- sidebar menu end-->
    </div>
</aside>
<!--sidebar end-->
    