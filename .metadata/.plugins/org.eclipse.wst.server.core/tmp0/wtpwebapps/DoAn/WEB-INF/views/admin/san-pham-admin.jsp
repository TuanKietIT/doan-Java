
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.opensymphony.com/sitemesh/decorator"
	prefix="decorator"%>
<%@ taglib uri="http://www.opensymphony.com/sitemesh/page" prefix="page"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
	<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<body>
<section id="container">
    <%@include file="/WEB-INF/views/layouts/admin/header.jsp"%>
    <section id="main-content">
	<section class="wrapper">
		<div class="table-agile-info">
 <div class="panel panel-default">
    <div class="panel-heading">
      <a style="margin-left:-500px;margin-right:300px" href='<c:url value="/them-san-pham" />' class="active" ><i class="fa fa-check text-success text-active"></i> Thêm Sản phẩm</a>
       Danh sách sản phẩm
    </div>
    <div>
      <table class="table" ui-jq="footable" >
        <thead>
          <tr>
            <th data-breakpoints="xs">ID</th>
            <th style="width:250px">Tên sản phẩm</th>
            <th style="width:300px">giá bán</th>
            <th data-breakpoints="xs">Hình ảnh</th>
            <th data-breakpoints="xs sm md" data-title="DOB">
                Chức năng
            </th>
          </tr>
        </thead>
        <tbody>
         <c:forEach var="item" items="${sanpham }" varStatus="index">
          <tr data-expanded="true">
            <td>${ item.id }</td>
            <td>${ item.tensanpham }</td>
            <td> <fmt:formatNumber type="number" groupingUsed="true" value="${ item.giaban }" /> VND    </td>
            <td><img style="width:100px" src="<c:url value="/assets/user/images/product/${ item.img }" />" alt="" /></td>
            <td>
                <a style="padding-left:10px;" href='<c:url value="/xoa-san-pham/${ item.id }" />' class="active"><i class="fa-solid fa-pen-to-square"></i> Xóa</a>
                <a style="padding-left:20px;" href='<c:url value="/sua-san-pham/${ item.id }" />' class="active"><i class="fa-solid fa-calendar-xmark"></i> Sửa</a>
            </td>
          </tr>
         </c:forEach>
        </tbody>
      </table>
    </div>
    <footer class="panel-footer">
      <div class="row">
        
        <div class="col-sm-5 text-center">
          <small class="text-muted inline m-t-sm m-b-sm"></small>
        </div>
        <div class="col-sm-7 text-right text-center-xs">                
          <ul class="pagination pagination-sm m-t-none m-b-none">
            <li><a href=""><i class="fa fa-chevron-left"></i></a></li>
            <li><a href='<c:url value="trang-1" />'>1</a></li>
            <li><a href='<c:url value="trang-2" />'>2</a></li>
            <li><a href='<c:url value="trang-3" />'>3</a></li>
            <li><a href="">4</a></li>
            <li><a href=""><i class="fa fa-chevron-right"></i></a></li>
          </ul>
        </div>
      </div>
    </footer>
  </div>
</div>
</section>
</section>

<!--main content end-->
</section>
    
    <script src="<c:url value="/assets/user/js/bootstrap.js" />" ></script>
	 <script src="<c:url value="/assets/user/js/jquery.dcjqaccordion.2.7.js" />" ></script>
	 <script src="<c:url value="/assets/user/js/scripts.js" />" ></script>
	 <script src="<c:url value="/assets/user/js/jquery.slimscroll.js" />" ></script>
	 <script src="<c:url value="/assets/user/js/jquery.nicescroll.js" />" ></script>
	 <script src="<c:url value="/assets/user/js/jquery.scrollTo.js" />" ></script>
<script>
	$(document).ready(function() {
		//BOX BUTTON SHOW AND CLOSE
	   jQuery('.small-graph-box').hover(function() {
		  jQuery(this).find('.box-button').fadeIn('fast');
	   }, function() {
		  jQuery(this).find('.box-button').fadeOut('fast');
	   });
	   jQuery('.small-graph-box .box-close').click(function() {
		  jQuery(this).closest('.small-graph-box').fadeOut(200);
		  return false;
	   });
	   
	    //CHARTS
	    function gd(year, day, month) {
			return new Date(year, month - 1, day).getTime();
		}
		
		graphArea2 = Morris.Area({
			element: 'hero-area',
			padding: 10,
        behaveLikeLine: true,
        gridEnabled: false,
        gridLineColor: '#dddddd',
        axes: true,
        resize: true,
        smooth:true,
        pointSize: 0,
        lineWidth: 0,
        fillOpacity:0.85,
			data: [
				{period: '2015 Q1', iphone: 2668, ipad: null, itouch: 2649},
				{period: '2015 Q2', iphone: 15780, ipad: 13799, itouch: 12051},
				{period: '2015 Q3', iphone: 12920, ipad: 10975, itouch: 9910},
				{period: '2015 Q4', iphone: 8770, ipad: 6600, itouch: 6695},
				{period: '2016 Q1', iphone: 10820, ipad: 10924, itouch: 12300},
				{period: '2016 Q2', iphone: 9680, ipad: 9010, itouch: 7891},
				{period: '2016 Q3', iphone: 4830, ipad: 3805, itouch: 1598},
				{period: '2016 Q4', iphone: 15083, ipad: 8977, itouch: 5185},
				{period: '2017 Q1', iphone: 10697, ipad: 4470, itouch: 2038},
			
			],
			lineColors:['#eb6f6f','#926383','#eb6f6f'],
			xkey: 'period',
            redraw: true,
            ykeys: ['iphone', 'ipad', 'itouch'],
            labels: ['All Visitors', 'Returning Visitors', 'Unique Visitors'],
			pointSize: 2,
			hideHover: 'auto',
			resize: true
		});
		
	   
	});
	</script>
<!-- calendar -->
	<script type="text/javascript" src="js/monthly.js"></script>
	<script type="text/javascript">
		$(window).load( function() {

			$('#mycalendar').monthly({
				mode: 'event',
				
			});

			$('#mycalendar2').monthly({
				mode: 'picker',
				target: '#mytarget',
				setWidth: '250px',
				startHidden: true,
				showTrigger: '#mytarget',
				stylePast: true,
				disablePast: true
			});

		switch(window.location.protocol) {
		case 'http:':
		case 'https:':
		// running on a server, should be good.
		break;
		case 'file:':
		alert('Just a heads-up, events will not work when run locally.');
		}

		});
	</script>
	<!-- //calendar -->
</body>
</html>
