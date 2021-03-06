<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
<html>
<head>

<!-- path 변수 선언, request객체가 가진 쿼리 문자열 반환된 값 저장-->
<c:set var="path" value="${pageContext.request.contextPath}" />
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>ChaBak</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description"
	content="Free HTML5 Website Template by gettemplates.co" />
<meta name="keywords"
	content="free website templates, free html5, free template, free bootstrap, free website template, html5, css3, mobile first, responsive" />
<meta name="author" content="gettemplates.co" />

<!-- Facebook and Twitter integration -->
<meta property="og:title" content="" />
<meta property="og:image" content="" />
<meta property="og:url" content="" />
<meta property="og:site_name" content="" />
<meta property="og:description" content="" />
<meta name="twitter:title" content="" />
<meta name="twitter:image" content="" />
<meta name="twitter:url" content="" />
<meta name="twitter:card" content="" />


	
	
<link href="https://fonts.googleapis.com/css?family=Montserrat:400,700" rel="stylesheet">
<link href="https://fonts.googleapis.com/css?family=Playfair+Display:400,400i" rel="stylesheet">
<!-- Animate.css -->
<link rel="stylesheet"
	href="<c:url value='/resources/shopBootstrap/css/animate.css'/>">
<!-- Icomoon Icon Fonts-->
<link rel="stylesheet"
	href="<c:url value='/resources/shopBootstrap/css/icomoon.css'/>">
<!-- Bootstrap  -->
<link rel="stylesheet"
	href="<c:url value='/resources/shopBootstrap/css/bootstrap.css'/>">

<!-- Flexslider  -->
<link rel="stylesheet"
	href="<c:url value='/resources/shopBootstrap/css/flexslider.css'/>">

<!-- Owl Carousel  -->
<link rel="stylesheet"
	href="<c:url value='/resources/shopBootstrap/css/owl.carousel.min.css'/>">
<link rel="stylesheet"
	href="<c:url value='/resources/shopBootstrap/css/owl.theme.default.min.css'/>">

<!-- Theme style  -->
<link rel="stylesheet"
	href="<c:url value='/resources/shopBootstrap/css/style.css'/>">

<!-- Modernizr JS -->
<script src="<c:url value='/resources/shopBootstrap/js/modernizr-2.6.2.min.js'/>"></script>
<!-- FOR IE9 below -->
<!--[if lt IE 9]>
	<script src="js/respond.min.js"></script>
	<![endif]-->




