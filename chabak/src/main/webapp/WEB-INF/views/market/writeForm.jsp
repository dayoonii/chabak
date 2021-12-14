<%@ page language="java" pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");
%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description"
	content="Free HTML5 Website Template by gettemplates.co" />
<meta name="keywords"
	content="free website templates, free html5, free template, free bootstrap, free website template, html5, css3, mobile first, responsive" />
<meta name="author" content="gettemplates.co" />

<link href="https://fonts.googleapis.com/css?family=Montserrat:400,700"
	rel="stylesheet">
<link
	href="https://fonts.googleapis.com/css?family=Playfair+Display:400,400i"
	rel="stylesheet">

<!-- Animate.css -->
<link rel="stylesheet"
	href="<c:url value='./resources/shopBootstrap/css/animate.css'/>" />
<!-- Icomoon Icon Fonts-->
<link rel="stylesheet"
	href="<c:url value='./resources/shopBootstrap/css/icomoon.css'/>" />
<!-- Bootstrap  -->
<link rel="stylesheet"
	href="<c:url value='./resources/shopBootstrap/css/bootstrap.css'/>" />

<!-- Flexslider  -->
<link rel="stylesheet"
	href="<c:url value='./resources/shopBootstrap/css/flexslider.css'/>" />

<!-- Owl Carousel  -->
<link rel="stylesheet"
	href="<c:url value='./resources/shopBootstrap/css/owl.carousel.min.css'/>" />
<link rel="stylesheet"
	href="<c:url value='./resources/shopBootstrap/css/owl.theme.default.min.css'/>" />

<!-- Theme style  -->
<link rel="stylesheet"
	href="<c:url value='./resources/shopBootstrap/css/style.css'/>" />

<!-- Modernizr JS -->
<script src="resource/js/modernizr-2.6.2.min.js"></script>
<!-- FOR IE9 below -->
<!--[if lt IE 9]>
	<script src="js/respond.min.js"></script>
	<![endif]-->

<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
</head>

<%@include file="../../include/header.jsp"%>

<style>
.foo img {
	margin: 400px 0;
}
</style>

<body>

<div>
<form id="writeForm" name="writeForm" method="post"
						enctype="multipart/form-data" onSubmit="return false;">
	<div id="fh5co-contact">
		<div class="container">
			<div class="row">
				<div class="col-md-5">
					<div class="fh5co-contact-info">
						<h3>상품 미리보기</h3>
						<div>
							<img id="foo" style="width: 400px; height: 400px;" />
						</div>
					</div>
				</div>
				
				<div class="col-md-6">
					<h3>상품등록</h3>
					
						<div class="row form-group">
							<div class="col-md-12">
								<input type="text" class="form-control" placeholder="상품명"
									name="mar_name" id="mar_name" maxlength="50">
							</div>
						</div>

						<div class="row form-group">
							<div class="col-md-6">
								<input type="text" class="form-control" placeholder="가격"
									name="mar_price" id="mar_price" maxlength="50">
							</div>
							<div class="col-md-6">
								<input type="text" class="form-control" placeholder="수량"
									name="mar_count" id="mar_count" maxlength="50">
							</div>
						</div>

						<div class="row form-group">
							<div class="col-md-12">
								<div class="custom-file">
								<input multiple type="file" name="file" id="file">
									<!-- <input type="file" id="mar_Img" class="custom-file-input"> -->
									<label class="custom-file-label" for="inputGroupFile01">Choose
										file</label>
								</div>
							</div>
						</div>

						<div class="row form-group">
							<div class="col-md-12">
								<textarea class="form-control" placeholder="상품 설명"
									name="mar_content" id="mar_content" maxlength="2048"
									style="height: 250px"></textarea>
							</div>
						</div>

						<div align="right">
							<input type=button class="btn btn-secondary" value="상품등록"
								onClick="fn_addtoBoard()"> <input type=button
								class="btn btn-secondary" value="목록" onClick='fn_cancel()'>
						</div>

					</div>
				</div>
			</div>
		</div>
		</form>
	</div>

	<!-------------------------------- 파일 첨부 스크립트 ---------------------------------->
	<script type="text/javascript">
		function readURL(input) {
			if (input.files && input.files[0]) {
				var reader = new FileReader();
				reader.onload = function(e) {
					$('#foo').attr('src', e.target.result);
				}
				reader.readAsDataURL(input.files[0]);
			}
		}

		$("#file").change(function() {
			readURL(this);
		});
	</script>
	<!-------------------------------- 파일 첨부 스크립트END ---------------------------------->

	<!-------------------------------------기능 Script----------------------------------->

	<script type="text/javascript">
		//글쓰기
		function fn_addtoBoard() {
			var form = document.getElementById("writeForm");
			form.action = "<c:url value='/Mwrite.do'/>";
			form.submit();
		}

		//목록
		function fn_cancel() {

			var form = document.getElementById("writeForm");
			alert(form);
			form.action = "<c:url value='/marketList.do'/>";
			form.submit();

		}
	</script>
	<!-------------------------------------기능 Script END----------------------------------->

	<!-- -----------------------------------Bootstrap Script----------------------------------->

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
</body>
</html>
