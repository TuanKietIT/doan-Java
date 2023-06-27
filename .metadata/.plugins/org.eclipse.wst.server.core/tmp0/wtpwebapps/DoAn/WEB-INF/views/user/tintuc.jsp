<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
	<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>  
<title>Tin - tức</title>
</head>
<body>
<%@include file="/WEB-INF/views/layouts/user/header.jsp"%>
   <section>
		<div class="container">
			<div class="row">
				<div class="col-sm-3">
					<div class="left-sidebar">
						<div class="brands_products"><!--brands_products-->
							<h2>Loại</h2>
                            <div class="brands-name">
                            <c:forEach var="items" items="${theloai }" varStatus="index">
                                                <ul class="nav nav-pills nav-stacked">
                                                    <li><a href='<c:url value="/Loai-San-Pham/${ items.id }" />'><span class="pull-right">(*)</span>${ items.tenloai }</a></li>
                                                </ul>
                                         </c:forEach>
                            </div>
						</div><!--/brands_products-->
						
						<div class="price-range"><!--price-range-->
						  <h2>Sản phẩm mới</h2>
                        </div><!--/price-range-->
                        
                        <div class="shipping text-center"><!--shipping-->
                            <img style="width:250px; height:300px" src="<c:url value="/assets/user/images/shop/hinhnen.jpg" />" alt="" />
                        </div><!--/shipping-->
                        <br/>
					
					</div>
				</div>
				<div class="col-sm-9">
					<div class="blog-post-area">
						<h2 class="title text-center">Tin tức mới</h2>
						<c:forEach var="item" items="${tintuc }" varStatus="index">
								    <div class="single-blog-post">
										<h3 style="font-size:15px; margin-top:20px">${ item.tentieude }</h3>
										<div class="post-meta">
											<ul>
												<li><i class="fa fa-user"></i> Tuấn Kiệt</li>
												<li ><i class="fa fa-calendar"></i>${ item.ngaycapnhat }</li>
											</ul>
											<span style="margin-right:50px">
													<i class="fa fa-star"></i>
													<i class="fa fa-star"></i>
													<i class="fa fa-star"></i>
													<i class="fa fa-star"></i>
													<i class="fa fa-star-half-o"></i>
											</span>
										</div>
										<a href="">
											<img style="width:550px; height:300px"src="<c:url value="/assets/user/images/shop/${ item.anh }" />" alt="">
										</a>
										<p>${ item.mota }</p>
										<a  class="btn btn-primary" href="">Xem thêm</a>
									</div>
						</c:forEach>
						
						<div class="pagination-area">
							<ul class="pagination">
								<li><a href="" class="active">1</a></li>
								<li><a href="">2</a></li>
								<li><a href="">3</a></li>
								<li><a href=""><i class="fa fa-angle-double-right"></i></a></li>
							</ul>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
		<%@include file="/WEB-INF/views/layouts/user/footer.jsp"%>
</body>
</html>
