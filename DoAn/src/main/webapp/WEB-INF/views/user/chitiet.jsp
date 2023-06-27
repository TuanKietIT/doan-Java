<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
	<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>  
<title>Chi tiết sản phẩm</title>
<body>
<%@include file="/WEB-INF/views/layouts/user/header.jsp"%>
<section>
		<div class="container">
			<div class="row">
				<div class="col-sm-3">
					<div class="left-sidebar">
						<div class="brands_products"><!--brands_products-->
							<h2>Loại </h2>
                            <div class="brands-name">
                            <c:forEach var="items" items="${theloai }" varStatus="index">
                                                <ul class="nav nav-pills nav-stacked">
                                                    <li><a href='<c:url value="/san-pham/${ items.id }" />'><span class="pull-right">(*)</span>${ items.tenloai }</a></li>
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
					<div class="product-details"><!--product-details-->
					    <c:forEach var="items" items="${sanpham }" varStatus="index">
					    <div class="col-sm-5">
							<div class="view-product">
								<img src="<c:url value="/assets/user/images/product/${ items.img }" />" alt="" />
								<h3>ZOOM</h3>
							</div>							
						</div>
						<div class="col-sm-7">
						    <div class="product-information"><!--/product-information-->
								<img src="images/product-details/new.jpg" class="newarrival" alt="" />
								<h2>Tên sản phẩm: ${ items.tensanpham }</h2>
								<img src="images/product-details/rating.png" alt="" />
								<span>
								    <p>Tiêu đề: ${ items.tieude }</p>
								    <br/>
									<span>
									    <fmt:formatNumber type="number" groupingUsed="true" value="${ items.giaban }" /> VND    
									</span>
									<label>Số lượng:</label>
									<input type="text" value="1" />
									<br/>
									<br/>
									<br/>
									<button type="button" class="btn btn-fefault cart">
										  <a href="<c:url value="/AddCart/${ items.id }" />"><i class="fa fa-shopping-cart"></i>
										        Thêm vào giỏ
										   </a>
									</button>
									<br/>
									<br/>
								</span>
								<br/>
								<p><b>Sản phẩm mới:</b> New</p>
								<br/>
								<p><b>Xuất xứ :</b>  Nhật bản</p>
								<a href=""><img src="images/product-details/share.png" class="share img-responsive"  alt="" /></a>
							</div><!--/product-information-->
						</div>      
                        </c:forEach>
						
					</div><!--/product-details-->
					
					<div class="category-tab shop-details-tab"><!--category-tab-->
						<div class="col-sm-12">
							<ul class="nav nav-tabs">
								<li class="active" style="text-align:center"><a href="#reviews" data-toggle="tab">Mô tả sản phẩm</a></li>
							</ul>
						</div>
						<div class="tab-content">
							<c:forEach var="items" items="${ sanpham }" varStatus="index">
                                     
                            </c:forEach>
							<div class="tab-pane fade active in" id="reviews" >
								<div class="col-sm-12">
								<c:forEach var="items" items="${ sanpham }" varStatus="index">
                                     <p>${ items.mota }</p>
                                </c:forEach>
					
								</div>
							</div>
							
						</div>
					</div><!--/category-tab-->
					
					
				</div>
			</div>
		</div>
	</section>
	<%@include file="/WEB-INF/views/layouts/user/footer.jsp"%>
</body>
