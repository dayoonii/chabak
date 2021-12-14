<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>포인트구매</title>
<%@ include file="../../include/header.jsp" %>


</head>
<body>
	<%@ include file="../../include/navigator.jsp" %>
    
	<!-- Page Content -->
  <div class="container">
  <!-- 
  <div class="py-5 bg-image" style='background-color:#0000ff'>
  -->
  <!-- 
    <div class="row">
      <div class="col-lg-3">

        <h2 class="my-5"></h2>
        <div class="list-group">
          <a class="list-group-item" href="productList1.do">충전</a>
        </div>
	  </div>
    </div>
    -->
    
    
      <!-- /.col-lg-3 -->
<form name="buypoint" action="./pointUpdate.ing" method="post">
<div class="container">
				<table align="center" border='0'
					class="table table-striped table-bordered table-hover">
					<tr>
						<td align="center" colspan="2">포인트</td>
					</tr>
					<tr>
						<td>현재 내포인트</td>
						<td>${login_result.m_point}&nbsp; p</td>
					</tr>
					<tr>
						<td>구매할 포인트</td>
						<td><select id="pointUpdate" name="pointUpdate"
							class="custom-select">
								<option value="5000"
									<c:if test="${pointUpdate==5000}"> selected </c:if>>5000</option>
								<option value="10000"
									<c:if test="${pointUpdate=='10000'}"> selected </c:if>>10000</option>
								<option value="20000"
									<c:if test="${pointUpdate=='20000'}"> selected </c:if>>20000</option>
								<option value="50000"
									<c:if test="${pointUpdate=='50000'}"> selected </c:if>>50000</option>
								<option value="100000"
									<c:if test="${pointUpdate=='100000'}"> selected </c:if>>100000</option>
								<option value="200000"
									<c:if test="${pointUpdate=='200000'}"> selected </c:if>>200000</option>
								<option value="300000"
									<c:if test="${pointUpdate=='300000'}"> selected </c:if>>300000</option>
						</select></br> 
					<!-- <select name="point">
    				<option value="5000">5000</option>
    				<option value="10000">10000</option>
    				<option value="15000">15000</option>
    				<option value="20000">20000</option>
    				<option value="직접입력">직접입력</option>
  				</select><br> --></td>
					</tr>
				</table>
			</div>

&nbsp;&nbsp;&nbsp;
	<input type="submit" value="충전" class="btn btn-secondary" >
		&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	<input type="submit" value="이전" class="btn btn-secondary" onClick="history.go(-1)">
	</form>
	

	
	<script>
function point() {
	alert("충전완료!");
}
</script>
</body>
</html>