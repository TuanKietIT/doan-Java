<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.opensymphony.com/sitemesh/decorator"
	prefix="decorator"%>
<%@ taglib uri="http://www.opensymphony.com/sitemesh/page" prefix="page"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  


<head>
<meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">
    <title><decorator:title default="Master-layout" /></title>
    <link href=" <c:url value="/assets/user/css/bootstrap.min.css" />" rel="stylesheet">
    <link href=" <c:url value="/assets/user/css/style.css" />" rel="stylesheet">
    <link href=" <c:url value="/assets/user/css/style-responsive.css" />" rel="stylesheet">
    <link href=" <c:url value="//fonts.googleapis.com/css?family=Roboto:400,100,100italic,300,300italic,400italic,500,500italic,700,700italic,900,900italic" />" rel="stylesheet">
    <link href=" <c:url value="/assets/user/css/font.css" />" rel="stylesheet">
    <link href=" <c:url value="/assets/user/css/font-awesome.css" />" rel="stylesheet">
    <link href=" <c:url value="/assets/user/css/morris.css" />" rel="stylesheet">  
     <link href=" <c:url value="/assets/user/css/monthly.css" />" rel="stylesheet">  
	<meta name="keywords" content="Visitors Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
	Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
	<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>

     <script src="<c:url value="/assets/user/s/jquery2.0.3.min.js" />" ></script>
     <script src="<c:url value="/assets/user/js/raphael-min.js" />" ></script>
     <script src="<c:url value="/assets/user/js/morris.js" />" ></script>

	</head>
<body>
<section id="container">
    <%@include file="/WEB-INF/views/layouts/admin/header.jsp"%>
    <decorator:body/>
    
    <script src="<c:url value="/assets/user/js/bootstrap.js" />" ></script>
	 <script src="<c:url value="/assets/user/js/jquery.dcjqaccordion.2.7.js" />" ></script>
	 <script src="<c:url value="/assets/user/js/scripts.js" />" ></script>
	 <script src="<c:url value="/assets/user/js/jquery.slimscroll.js" />" ></script>
	 <script src="<c:url value="/assets/user/js/jquery.nicescroll.js" />" ></script>
	 <script src="<c:url value="/assets/user/js/jquery.scrollTo.js" />" ></script>
</section>
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
