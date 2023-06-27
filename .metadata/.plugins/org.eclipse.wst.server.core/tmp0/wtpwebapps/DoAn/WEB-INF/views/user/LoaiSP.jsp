<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
	<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>  
<title>Sản - phẩm</title>
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
	                                   <li><a href='<c:url value="/Loai/${ items.id }" />'><span class="pull-right">(*)</span>${ items.tenloai }</a></li>
	                             </ul>
                            </c:forEach> 
                            </div>
						</div><!--/brands_products-->
						
						<div class="price-range"><!--price-range-->
                            <h2>Giá mặt hàng</h2>
                            <div class="well text-center">
                                 <input type="text" class="span2" value="" data-slider-min="0" data-slider-max="600" data-slider-step="5" data-slider-value="[250,450]" id="sl2" ><br />
                                 <b class="pull-left">$ 0</b> <b class="pull-right">$ 600</b>
                            </div>
                        </div><!--/price-range-->
                        
                        <div class="shipping text-center"><!--shipping-->
                            <img src="<c:url value="/assets/user/images/home/shipping.jpg" />" alt="" />
                        </div><!--/shipping-->
                        <br/>
					
					</div>
				</div>
				<div class="col-sm-9 padding-right">
					<div class="features_items"><!--features_items-->
						<h2 class="title text-center">Danh sách sản phẩm</h2>
						    <c:forEach var="item" items="${sanpham }" varStatus="index">
						    <div class="col-sm-4">
							     <div class="product-image-wrapper">
									<div class="single-products">
										<div class="productinfo text-center">
											<img src="<c:url value="/assets/user/images/product/${ item.img }" />" alt="" />
											 <p style="font-size:14px; padding-top:15px">${ item.tensanpham }</p>
											 <H2 style="font-size:20px; padding-top:15px">
												<fmt:formatNumber type="number" groupingUsed="true" value="${ item.giaban }" /> VND    
                                             </H2> 
											 <a style="margin-top:15px" href="<c:url value="/chi-tiet/${ item.id }" />" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Chi tiết</a>
										</div>
									</div>
                                </div>
                              </div>
							</c:forEach>
					
					</div><!--features_items-->
				</div>
			</div>
		</div>
	</section>
	<%@include file="/WEB-INF/views/layouts/user/footer.jsp"%>
</body>
</html>