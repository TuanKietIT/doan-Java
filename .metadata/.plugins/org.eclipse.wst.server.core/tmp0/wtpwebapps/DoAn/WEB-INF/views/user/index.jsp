<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.opensymphony.com/sitemesh/decorator"
	prefix="decorator"%>
<%@ taglib uri="http://www.opensymphony.com/sitemesh/page" prefix="page"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  

	<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>  
<title>Trang chủ</title>
<body>
<%@include file="/WEB-INF/views/layouts/user/header.jsp"%>
<section id="slider"><!--slider-->
		<div class="container">
			<div class="row">
				<div class="col-sm-12">
					<div id="slider-carousel" class="carousel slide" data-ride="carousel">
						<ol class="carousel-indicators">
							<li data-target="#slider-carousel" data-slide-to="0" class="active"></li>
							<li data-target="#slider-carousel" data-slide-to="1"></li>
							<li data-target="#slider-carousel" data-slide-to="2"></li>
						</ol>
						
						<div class="carousel-inner">
                               <c:forEach var="item" items="${sanpham }" varStatus="index">
                                     <c:if test="${index.first }">
                                        <div class="item active">
                                     </c:if>
                                      <c:if test="${ not index.first }">
                                         <div class="item">
                                     </c:if>
                                            <div class="col-sm-6">
                                            <h1><span>Mỹ phẩm</span>-TK</h1>
                                            <h2>Hãy liên hệ cho chúng tôi</h2>
                                            <h4>${ item.tensanpham }</h4>
                                            <p>Bán mỹ phẩm làm đẹp giá uy tín nhất thị trường, chúng tôi luôn đem đến cho bạn một website chất lượng chuẩn seo. </p>
                                            <button type="button" class="btn btn-default get">Chọn sản phẩm</button>
                                        </div>
                                        <div class="col-sm-6">
                                                <img src="<c:url value="/assets/user/images/product/${ item.img }" />" class="girl img-responsive" alt="" />
                                            <img src="<c:url value="/assets/user/images/home/pricing.png" />" class="pricing" alt="" />
                                        </div>
                                    </div>
                                </c:forEach>
                        </div>
						
						<a href="#slider-carousel" class="left control-carousel hidden-xs" data-slide="prev">
							<i class="fa fa-angle-left"></i>
						</a>
						<a href="#slider-carousel" class="right control-carousel hidden-xs" data-slide="next">
							<i class="fa fa-angle-right"></i>
						</a>
					</div>
					
				</div>
			</div>
		</div>
	</section><!--/slider-->
	
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
						 <h2 class="title text-center">Sản phẩm mới</h2>
                         <c:forEach var="item" items="${sanpham }" varStatus="index">
                                     <c:if test="${index.first }">
                                        <div class="col-sm-4">
                                     </c:if>
                                      <c:if test="${ not index.first }">
                                         <div class="col-sm-4">
                                     </c:if>
                                                     <div class="product-image-wrapper">
                                                        <div class="single-products">
                                                                <div class="productinfo text-center">
                                                                    <img src="<c:url value="/assets/user/images/product/${ item.img }" />" alt="" />
                                                                    <p style="font-size:15px; padding-top:13px">${ item.tensanpham }</p>
                                                                    <H2>
                                                                    <H2 style="font-size:20px; padding-top:10px">
																		<fmt:formatNumber type="number" groupingUsed="true" value="${ item.giaban }" /> VND    
						                                             </H2>
                                                                   
                                                                    </H2> 
                                                                    <a  style="margin-top:20px" href="<c:url value="/AddCart/${ item.id }" />" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Thêm vào giỏ</a>
                                                                </div>
                                                        </div>
                                                    </div>
                                         </div>
                           </c:forEach>
						
					</div><!--features_items-->
					<div class="category-tab"><!--category-tab-->
						<div class="col-sm-12">
							<ul class="nav nav-tabs">
								<li class="active"><a href="#tshirt" data-toggle="tab">Sữa rửa mặt</a></li>
							</ul>
						</div>
						<div class="tab-content">
							<div class="tab-pane fade active in" id="tshirt" >
								   <c:forEach var="item" items="${sanphams }" varStatus="index">
								   <c:if test="${index.first }">
                                       <div class="col-sm-3">
                                     </c:if>
                                      <c:if test="${ not index.first }">
                                        <div class="col-sm-3">
                                     </c:if>
										<div class="product-image-wrapper">
											<div class="single-products">
												<div class="productinfo text-center">
													<img style="margin-top:15px" src="<c:url value="/assets/user/images/product/${ item.img }" />" alt="" />
													 <h2 style="font-size:19px; padding-top:15px">
														<fmt:formatNumber type="number" groupingUsed="true" value="${ item.giaban }" /> VND    
						                             </h2>
													<p style="font-size:14px; padding-top:10px">${ item.tensanpham }</p>
													<a href="<c:url value="/AddCart/${ item.id }" />" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Thêm vào giỏ</a>
												</div>
												
											</div>
										</div>
									</div>
									</c:forEach>
							</div>
							
						</div>
					</div><!--/category-tab-->
					<div class="recommended_items"><!--recommended_items-->
						<h2 class="title text-center">Sản phẩm được ưa thích</h2>
						<div id="recommended-item-carousel" class="carousel slide" data-ride="carousel">
							<div class="carousel-inner">
								<div class="item active">	
								<c:forEach var="item" items="${sanpham1 }" varStatus="index">
								   <c:if test="${index.first }">
                                      <div class="col-sm-4">
                                     </c:if>
                                      <c:if test="${ not index.first }">
                                       <div class="col-sm-4">
                                     </c:if>
										<div class="product-image-wrapper">
											<div class="single-products">
												<div class="productinfo text-center">
													<img src="<c:url value="/assets/user/images/product/${ item.img }" />" alt="" />
													 <h2 style="font-size:19px; padding-top:15px">
														<fmt:formatNumber type="number" groupingUsed="true" value="${ item.giaban }" /> VND    
						                             </h2>
													<p style="font-size:14px; padding-top:10px">${ item.tensanpham }</p>
													<a href="<c:url value="/AddCart/${ item.id }" />" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Thêm vào giỏ</a>
												</div>
												
											</div>
										</div>
									</div>
									</c:forEach>
								</div>
								<div class="item">	
								<c:forEach var="item" items="${sanphames }" varStatus="index">
								   <c:if test="${index.first }">
                                      <div class="col-sm-4">
                                     </c:if>
                                      <c:if test="${ not index.first }">
                                       <div class="col-sm-4">
                                     </c:if>
										<div class="product-image-wrapper">
											<div class="single-products">
												<div class="productinfo text-center">
													<img src="<c:url value="/assets/user/images/product/${ item.img }" />" alt="" />
													 <h2 style="font-size:19px; padding-top:15px">
														<fmt:formatNumber type="number" groupingUsed="true" value="${ item.giaban }" /> VND    
						                             </h2>
													<p style="font-size:14px; padding-top:10px">${ item.tensanpham }</p>
													<a href="<c:url value="/AddCart/${ item.id }" />" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Thêm vào giỏ</a>
												</div>
												
											</div>
										</div>
									</div>
									</c:forEach>
								</div>
							</div>
							 <a class="left recommended-item-control" href="#recommended-item-carousel" data-slide="prev">
								<i class="fa fa-angle-left"></i>
							  </a>
							  <a class="right recommended-item-control" href="#recommended-item-carousel" data-slide="next">
								<i class="fa fa-angle-right"></i>
							  </a>			
						</div>
					</div><!--/recommended_items-->

				</div>
			</div>
	</section>	
<%@include file="/WEB-INF/views/layouts/user/footer.jsp"%>
</body>