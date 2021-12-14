<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<c:set var="path" value="${pageContext.request.contextPath}" />

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content=Type" content="text/html; charset=UTF-8">
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>CHABAK</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description"
	content="Free HTML5 Website Template by gettemplates.co" />
<meta name="keywords"
	content="free website templates, free html5, free template, free bootstrap, free website template, html5, css3, mobile first, responsive" />
<meta name="author" content="gettemplates.co" />



</style>
<%@ include file="../../include/header.jsp"%>
<script>
	/*
	 $(function(){   
	 $("#btnAdd").click(function(){
	 location.href = "${path}/shop/product/write.do";
	 });
	 });
	 */
</script>
</head>




<body>
	<%@ include file="../../include/navigator.jsp"%>



	<div id="fh5co-product">
		<div class="container">
			<div class="row animate-box fadeInUp animated-fast">
				<div class="col-md-8 col-md-offset-2 text-center fh5co-heading">
					<h2>상품목록</h2>
					<p>차박용품을 즐겨보세여</p>
				</div>
			</div>
			<div class="row">
				<c:forEach var="list" items="${list }">
					<div
						class="col-md-4 text-center animate-box fadeInUp animated-fast">

						<div class="product">
							<div class="product-grid" style = "background-image: url('data:image/jpeg;base64,<c:out value='${list.mar_Img}'/>');">
								<div class="inner">
									<p>
										<a href="cartList.do" class="icon"><i
											class="icon-shopping-cart"></i></a> <a
											href="${path }/market/productDetail/${list.mar_num }"
											class="icon"><i class="icon-eye"></i></a>
									</p>
								</div>
							</div>
							<div class="desc">
								<h3>
									<a href="${path }/market/productDetail/${list.mar_num }">${list.mar_name }</a>
								</h3>
								<span class="price"><fmt:formatNumber
										value="${list.mar_price}" pattern="###,###,###" /></span>
							</div>
						</div>
					</div>
				</c:forEach>
			</div>
		</div>
	</div>






	<!----------------------- footer ------------------------------------->
	<footer id="fh5co-footer" role="contentinfo">
		<div class="container">
			<div class="row row-pb-md">
				<div class="col-md-4 fh5co-widget">
					<h3>CHABAK</h3>
					<p>VanLife</p>
				</div>
				<div class="col-md-4 col-sm-6 col-xs-8 col-md-push-1">
					<ul class="fh5co-footer-links">
						<li>경기도 융합소프트웨어과 사회맞춤형</li>
						<li>
							<!-- <a href="#"> -->개인정보 처리방침 | 이용와관 | 사업자 등록
						</li>
						<li>고객센터</li>
						<li>운영시간 : 08:00~09:00</li>
						<li>Tel:070-1234-4567</li>
					</ul>
				</div>
			</div>

			<div class="row copyright">
				<div class="col-md-12 text-center">
					<p>
						<small class="block">&copy;All Rights Reserved.</small> <small
							class="block">Designed by CHABAK </small>
					</p>
					<p>
					<ul class="fh5co-social-icons">
						<li><a href="#"><i class="icon-instagram"></i></a></li>
						<li><a href="#"><i class="icon-facebook"></i></a></li>
						<li><a href="#"><i class="icon-twitter"></i></a></li>
					</ul>
				</div>
			</div>
		</div>
	</footer>


	<div class="gototop js-top">
		<a href="#" class="js-gotop"><i class="icon-arrow-up"></i></a>
	</div>














	<!-- -------------Script--------------- -->

	<!-- jQuery -->
	<script
		src="<c:url value='./resources/shopBootstrap/js/jquery.min.js'/>"></script>
	<!-- jQuery Easing -->
	<script
		src="<c:url value='./resources/shopBootstrap/js/jquery.easing.1.3.js'/>"></script>
	<!-- Bootstrap -->
	<script
		src="<c:url value='./resources/shopBootstrap/js/bootstrap.min.js'/>"></script>
	<!-- Waypoints -->
	<script
		src="<c:url value='./resources/shopBootstrap/js/jquery.waypoints.min.js'/>"></script>
	<!-- Carousel -->
	<script
		src="<c:url value='./resources/shopBootstrap/js/owl.carousel.min.js'/>"></script>
	<!-- countTo -->
	<script
		src="<c:url value='./resources/shopBootstrap/js/jquery.countTo.js'/>"></script>
	<!-- Flexslider -->
	<script
		src="<c:url value='./resources/shopBootstrap/js/jquery.flexslider-min.js'/>"></script>
	<!-- Main -->
	<script src="<c:url value='./resources/shopBootstrap/js/main.js'/>"></script>




	<!-- jQuery -->
	<script src="./resource/js/jquery.min.js"></script>
	<!-- jQuery Easing -->
	<script src="./resource/js/jquery.easing.1.3.js"></script>
	<!-- Bootstrap -->
	<script src="./resource/js/bootstrap.min.js"></script>
	<!-- Waypoints -->
	<script src="./resource/js/jquery.waypoints.min.js"></script>
	<!-- Carousel -->
	<script src="./resource/js/owl.carousel.min.js"></script>
	<!-- countTo -->
	<script src="./resource/js/jquery.countTo.js"></script>
	<!-- Flexslider -->
	<script src="./resource/js/jquery.flexslider-min.js"></script>
	<!-- Main -->
	<script src="./resource/js/main.js"></script>



</body>
</html>