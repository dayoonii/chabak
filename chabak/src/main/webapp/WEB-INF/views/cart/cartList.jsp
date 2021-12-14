<%@ page language="java" 
    pageEncoding="UTF-8"%>
    <% request.setCharacterEncoding("UTF-8"); %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">
<script src="<c:url value='./resources/js/jquery-3.4.0.min.js'/>"></script>


<%@ include file="../../include/header.jsp" %>
<!-- Custom styles for this template -->
<link rel="stylesheet" href="<c:url value='resources/css/full-width-pics.css'/>">
<title>장바구니목록</title>
</head>
<body>
<%@ include file="../../include/navigator.jsp" %>


<%-- 
<c:choose>
 <c:when test="${map.count == 0}">
 장바구니가 비어있습니다.
 </c:when>
 <c:otherwise>
 <form name = "form1" id = "form1" method="post" action="${path}/shop/cart/update.do">
 <table boarder="1">
 <tr>
 
 <!-- <th>상품사진</th> -->
 <th>상품명</th>
 <th>가격</th>
 <th>취소</th>
 </tr>
<c:forEach var="cart" items="${list }" varStatus="status">
 <tr>
 <td>${cart.mar_name}</td>
 <td style = "width : 80px" align = "right">
 <fmt:formatNumber pattern="###,###,###" values="${cart.mar_price}"/>
 </td>
   <td>
   <a href="${path}/shop/cart/delete.do?cartId=${cart.cartId}">삭제</a>
   </td>
 </tr>
 </c:forEach>
   <tr>
   <td colspan = "3" align = "right">
    장바구니 금액 합계 : <fmt:formatNumber pattern="###,###,###" values="${map.sumprice}"/>
   </td>
   </tr>
   <table>
   <input type = "hidden" name = "count" value = "${map.count}">
   <button type="submit" id = "btnUpdate">수정</button>
   </table>
 </table>
 </form>
 </c:otherwise>
</c:choose>
 --%>

<p>나의 장바구니</p>
<button onclick="fn_alldelete()">모든상품삭제</button>
<button onclick="fn_seldelete()">선택상품삭제</button><br>
	<table class="table table-striped table-bordered table-hover" border=1>
		<tr>
			<td>&nbsp;&nbsp;</td>
			<td>제품사진</td>
			<td>제품명</td>
			<td>상품가격</td>
			<td>수량</td>
			<td>구매액</td>
		</tr> 
		<c:forEach var="cart" items="${list}" varStatus="status">
		<tr>
			<td><input class='chkbox' value='${cart.cart_id}' type="checkbox" name="chkbox"></td>
			<td><img style="height:80px; width:auto;" src="data:image/png;base64,${cart.mar_Img}" /></td>
			<td><c:out value="${cart.mar_name }"/></td>
			<td class='price'><c:out value="${cart.mar_price }"/></td>
			<td><c:out value="${cart.cart_count }"/></td>
			<td><c:out value="${cart.mar_price * cart.cart_count}"/></td>
		</tr>
		</c:forEach>
	</table>
	<br>
	<hr>
	
	
<h3 class='totalPrice'>총 구매액 : </h3>

<hr>
<p>현재 나의 포인트 : ${login_result.m_point}&nbsp; p</p>
<button class="button"><a href="#" onClick="fn_order()">주문하기</a></button>
<input class="button" type="button" value="이전페이지"   onClick="history.go(-1)">
<button class="button"><a href="#" onClick="fn_main()">메인 페이지로 가기</a></button><br>



<script>
window.onload = function(){
	var totalprice = 0;
	$(".price").each(function(){
		console.log(this.innerHTML);
		totalprice = totalprice + Number(this.innerHTML);
	});
	
	$('.totalPrice')[0].innerHTML = '총 구매액 : ' + totalprice + '원';
}

function fn_alldelete() {
	$(".chkbox").each(function() {
		console.log(this.value);
		$.ajax({
			url: './cartDelete.ing?cart_id=' + this.value + '&m_num=${m_num}'
			,dataType: 'text'
			,success: function(data) {
				console.log('called', data);
			}
		});
    });
	
	location.href='./cartList.do';
}

function fn_seldelete() {
	$(".chkbox:checked").each(function() {
		console.log(this.value);
		$.ajax({
			url: './cartDelete.ing?cart_id=' + this.value + '&m_num=${m_num}'
			,dataType: 'text'
			,success: function(data) {
				console.log('called', data);
			}
		});
    });
	location.href='./cartList.do';
}

//주문
function fn_order(cart_num) { 
	var chkbox = document.getElementsByName('chkbox'); 
	var chk = false; 
	var form = document.getElementById("cartForm");
	
	for(var i=0 ; i<chkbox.length ; i++) 
	{ 
		if(chkbox[i].checked) { 
			chk = true; 
			
			alert(form + " 주문?");
			url = "<c:url value='/order.do'/>";
			url = url + "?cart_num=" + cart_num;
			form.action = url;
		    form.submit();
			} 
		else { 
			chk = false; 
		} 
	} 
}


function fn_main(){
    
    var form = document.getElementById("cartForm");
    
    form.action = "<c:url value='/main.do'/>";
    form.submit();
    
}
</script>
</body>
</html>