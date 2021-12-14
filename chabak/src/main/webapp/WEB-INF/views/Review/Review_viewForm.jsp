<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" language="java" %>
<% request.setCharacterEncoding("UTF-8"); %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%@ include file="../../include/header.jsp"%>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

</head>

<body>
<%@ include file="../../include/navigator.jsp"%>









<div>
	<form id="reviewForm" name="reviewForm" method="post">
		<div id="fh5co-contact">
			<div class="container">
				<div class="row">
					<div class="col-md-5">
						<div class="fh5co-contact-info">
						<input type='hidden' id='re_title' name='re_title' value='${result.re_title }' />
							<h3>장소 후기</h3>
							<div>
								<c:if test="${result.re_Img != null && result.re_Img != ''}">
									<img style="width: 400px; height: 400;"
										src="data:image/jpeg;base64,<c:out value='${result.re_Img}'/>" />
								</c:if>
							</div>
						</div>
					</div>

					<div class="col-md-6">
						<h3>장소 후기</h3>


						<div class="row form-group">
							<div class="col-md-6">
								<input type="text" class="form-control" name="re_title"
									id="re_title" value="${result.re_title }">
							</div>
						
						
						<div class="row form-group">
							<div class="col-md-6">
								<input type="text" class="form-control" name="re_regdate"
									id="re_regdate" value="${result.re_regdate}">
							</div>
						</div>
						

						<div class="row form-group">
							<div class="col-md-12">
								<%-- <fmt:formatNumber value="${result.mar_price}" pattern="###,###,###" /> --%>
								<input type="text" class="form-control"
									value="${result.re_author}" name="re_author" id="re_author"
									maxlength="50">
							</div>
							</div>


							<div class="row form-group">
								<div class="col-md-12">
									<textarea class="form-control" style="height: 250px" id="re_memo"
										name="re_memo"  maxlength="2048">
								<c:out value="${result.re_memo}" /></textarea>
								</div>
							</div>


							 <div>
                    <a href='#' onClick='fn_update()'>수정</a>
                    <a href='#' onClick='fn_delete()'>삭제</a>
                    <a href='#' onClick='fn_cancel()'>목록</a>
                </div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</form>
</div>
	
	
<!-- 댓글 -->
 <%--  <div class="container">
  	<form id="form1" name="form1" action="board/commentInsert.ing" method="post">
	  	<label for="content">댓글</label>
	  	<div class="input-group">
  			<input type="hidden" name="cb_num" value="${result.re_num}"/>
               <input type="text" class="form-control" id="content" name="cbc_memo" placeholder="내용을 입력하세요." />
               <span class="input-group-btn">
                    <input class="btn btn-default" type="submit" value="등록" />
               </span>
  		</div>
  	</form>
  </div>
		<div class="container">
			<div class="commentList">
				<div style="margin-top: 20px">
					<table style="width: 700px">
						<c:forEach var="comm" items="${comment}" varStatus="status">
							     ${comm.cbc_num} 
					${comm.cb_num}
							<tr>
								<td>${comm.cbc_memo} ${comm.cbc_regdate} 
								    <a onclick="reple_modify(${comm.cbc_num})" href="#">수정</a>
									<a href="board/commentDelete.do?cbc_num=${comm.cbc_num}&cb_num=${comm.cb_num}">삭제</a>
									 				<button type="button" class="btn btn-sm btn-secondary" id="btnDelete">삭제</button> 
								</td>
							</tr>
							<tr>
							<td id="reple_modify_${comm.cbc_num}">
							</td>
							</tr>
						</c:forEach>
					</table>
				</div>
			</div>
		</div> --%>
	
	
	
	<script>
/* alert('${result.re_num}'); */

			//목록
			function fn_cancel() {
				var form = document.getElementById("reviewForm");
				form.action = "<c:url value='/reviewList.do'/>";
				form.submit();
			}
			//수정
			function fn_update() {
				var form = document.getElementById("reviewForm");
				form.action = "<c:url value='/updatereview.do'/>";
				form.submit();
			}
			//삭제
			function fn_delete() {
				var form = document.getElementById("reviewForm");
				form.action = "<c:url value='/deletereview.do'/>";
				form.submit();
			}
			/*
			//답변
			function fn_relay() {
				var form = document.getElementById("reviewForm");
				form.action = "<c:url value='/relayForm.do'/>";
				form.submit();
			}
			*/
			//댓글 수정 View
			/* 	function reple_modify(id){
			    var a ='';
			    
			    a += '<form id="form_'+id+'" action="commentUpdate.do?cbc_num='+id+'&cb_num='+${result.cbc_num}+'" method="post">';
			    a += '<div class="input-group">';
			    a += '<input type="text" class="form-control" name="cbc_memo"/>';
			    a += '<span class="input-group-btn"><input type="submit" value="수정" class="btn btn-default"> </span>';
			    a += '</div>';
			    a += '</form>';
			    
			    $('#reple_modify_'+id).html(a);
			} */
			
		</script>
</body>
</html>
