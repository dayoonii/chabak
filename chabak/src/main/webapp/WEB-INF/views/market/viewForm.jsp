<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" language="java" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%@ include file = "../../include/header.jsp" %>
</head>

<body>

<div>
	<form id="viewForm" name="viewForm" method="post">
		<div id="fh5co-contact">
			<div class="container">
				<div class="row">
					<div class="col-md-5">
						<div class="fh5co-contact-info">
						<input type='hidden' id='mar_num' name='mar_num' value='${result.mar_num }' />
							<h3>상품 상세보기</h3>
							<div>
								<c:if test="${result.mar_Img != null && result.mar_Img != ''}">
									<img style="width: 400px; height: 400;"
										src="data:image/jpeg;base64,<c:out value='${result.mar_Img}'/>" />
								</c:if>
							</div>
						</div>
					</div>

					<div class="col-md-6">
						<h3>상품정보</h3>

						<div class="row form-group">
							<div class="col-md-12">
								<input type="text" class="form-control" name="mar_name"
									id="mar_name" value="${result.mar_name }">
							</div>
						</div>

						<div class="row form-group">
							<div class="col-md-6">
								<%-- <fmt:formatNumber value="${result.mar_price}" pattern="###,###,###" /> --%>
								<input type="text" class="form-control"
									value="${result.mar_price}" name="mar_price" id="mar_price"
									maxlength="50">
							</div>

							<div class="row form-group">
								<div class="col-md-6">
									<input type="text" class="form-control" name="mar_count"
										id="mar_count" value="${result.mar_count }">
								</div>
							</div>



							<div class="row form-group">
								<div class="col-md-12">
									<textarea class="form-control" style="height: 250px" id="c"
										name="mar_content">
								<c:out value="${result.mar_content }" /></textarea>
								</div>
							</div>


							<div>
								<a href='#' onClick='fn_update()'>수정</a> <a href='#'
									onClick='fn_delete()'>삭제</a> <a href='#' onClick='fn_cancel()'>목록</a>
								<a href='#' onClick='fn_relay()'>답변</a>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</form>
</div>
	
	
	
	
	<script>
//목록
function fn_cancel(){
    
    var form = document.getElementById("viewForm");
    form.action = "<c:url value='/marketList.do'/>";
    form.submit();
    
}
 
 
//수정
function fn_update(){
    
    var form = document.getElementById("viewForm");
    form.action = "<c:url value='/updatemarket.do'/>";
    form.submit();
}

//삭제
function fn_delete(){
    
    var form = document.getElementById("viewForm");
    form.action = "<c:url value='/deletemarket.do'/>";
    form.submit();
}
 
//답변
function fn_relay(){
    
    var form = document.getElementById("viewForm");
    form.action = "<c:url value='/relayForm.do'/>";
    form.submit();
    
}
</script>





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





</body>
</html>
