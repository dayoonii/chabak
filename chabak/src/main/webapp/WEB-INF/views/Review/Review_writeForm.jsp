<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("UTF-8"); %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%@include file ="../include/header.jsp" %>
<%@ include file="../../include/navigator.jsp"%>
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

    
<body>





<div>
 <form id="writeForm" name="writeForm" method="post"
             enctype="multipart/form-data" onSubmit="return false;">
		<div id="fh5co-contact">
			<div class="container">
				<div class="row">
						<div class="col-md-5">
							<div class="fh5co-contact-info">

								<h3>이미지</h3>
								<div>
									<img id="foo" style="width: 400px; height: 400px;" />
								</div>
							</div>
						</div>

						<div class="col-md-6">
						<h3>글 작성</h3>

						<div class="row form-group">
							<div class="col-md-12">
								<input type="text" class="form-control" placeholder="장소명"
									name="re_title" id="re_title" maxlength="50">
							</div>
						</div>

						<div class="row form-group">
							<div class="col-md-12">
								<input type="text" class="form-control" placeholder="작성자"
									name="re_author" id="re_author" maxlength="50">
							</div>
							
							<br>
							

								<div class="row form-group">
									<div class="col-md-12">
										<div class="custom-file">
											<input multiple type="file" name="file1" id="file1"> 
											<label class="custom-file-label" for="inputGroupFile01">Choose file</label>
										</div>
									</div>
								</div>



								<div class="row form-group">
								<div class="col-md-12">
									<textarea class="form-control" placeholder="내용"
									name="re_memo" id="re_memo" maxlength="2048"
									style="height: 250px"></textarea>
								</div>
							</div>



								<div align="right">
									<input type=button class="btn btn-secondary" value="글 등록"
										onClick="fn_addtoBoard()"> 
										<input type=button
										class="btn btn-secondary" value="목록" onClick='fn_cancel()'>
								</div>



							</div>
					</div>
				</div>
			</div>
		</div>
	</form>
</div>
	


<%-- 


<div>
<div id="fh5co-contact">
		<div class="container">
			<div class="row">
				<div class="col-md-5">
					<div class="fh5co-contact-info">
   
        
            <h2>글쓰기</h2>
            <div>
             <form id="writeForm" name="writeForm" method="post"
             enctype="multipart/form-data" onSubmit="return false;">
              <div class="row form-group">
							<div class="col-md-12">
							<input type="text" class="form-control"
								placeholder="장소명" name="re_title" id = "re_title" maxlength="50"></td>
                   	</div>
						</div>
						<div class="row form-group">
							<div class="col-md-6">
                    <input type="text" class="form-control"
								placeholder="작성자" name="re_author" id = "re_author" maxlength="50"></td>
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
                        <textarea class="form-control" placeholder="글 내용"
									name="re_memo" id= "re_memo" maxlength="2048" style="height: 350px"></textarea></td>
                </div>
                </div>
                
                  
                <div align="right">
				   	<input type=button class="btn btn-secondary"
					value="글 등록" onClick="fn_addtoBoard()"> 
						<input type=button class="btn btn-secondary"
					value="목록" onClick='fn_cancel()'> 
                </div>
            </div>
        </div>
    </form>

 --%>
 
 
 
 
<script type="text/javascript">
//글쓰기
function fn_addtoBoard(){
    var form = document.getElementById("writeForm");
    form.action = "<c:url value='/Rwrite.do'/>";
    form.submit();
}

/*
function readURL(input) {
	 if (input.files && input.files[0]) {
	  var reader = new FileReader();
	  
	  reader.onload = function (e) {
	   $('#mar_img1').attr('src', e.target.result);  
	  }
	  reader.readAsDataURL(input.files[0]);
	  }
	}
	$("#file").change(function(){
	   readURL(this);
	});
*/


 /*
$(document).ready(function(){
	var formObj = $("form[name='writeForm']");
	alert(formObj);
		formObj.attr("action", "/board/write.do");
		formObj.attr("method", "post");
		//formObj.submit();
	});
*/
 
//목록
function fn_cancel(){
    
    var form = document.getElementById("writeForm");
    alert(form);
    form.action = "<c:url value='/reviewList.do'/>";
    form.submit();
    
}
</script>
 
 
 
 
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

		$("#file1").change(function() {
			readURL(this);
		});
	</script>







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
