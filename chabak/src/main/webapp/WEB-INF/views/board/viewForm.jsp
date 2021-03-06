<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" language="java" %>
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
<script>
			//목록
			function fn_cancel() {
				var form = document.getElementById("viewForm");
				form.action = "<c:url value='/boardList.do'/>";
				form.submit();
			}
			//수정
			function fn_update() {
				var form = document.getElementById("viewForm");
				form.action = "<c:url value='/updateboard.do'/>";
				form.submit();
			}
			//삭제
			function fn_delete() {
				var form = document.getElementById("viewForm");
				form.action = "<c:url value='/deleteboard.do'/>";
				form.submit();
			}
			//답변
			function fn_relay() {
				var form = document.getElementById("viewForm");
				form.action = "<c:url value='/relayForm.do'/>";
				form.submit();
			}
			
			//댓글 수정 View
			function reple_modify(id) {
			    var a ='';
			    
			    a += '<form id="form_'+id+'" action="board/commentUpdate.do?cbc_num='+id+'&cb_num='+${result.cb_num}+'" method="post">';
			    a += '<div class="input-group">';
			    a += '<input type="text" class="form-control" name="cbc_memo"/>';
			    a += '<span class="input-group-btn"><input type="submit" value="수정" class="btn btn-default"> </span>';
			    a += '</div>';
			    a += '</form>';
			    
			    $('#reple_modify_'+id).html(a);
			}
		</script>
</head>

<body>
<%@ include file="../../include/navigator.jsp"%>
<div class="container">
    <form id="viewForm" name="viewForm" method="post">
    	<input type='hidden' id='cb_num' name='cb_num' value='${result.cb_num }' />
        <div>
        <form role="form">
        <div class="form-group">
            <label for="title">게시글 상세보기</label>
            <div>
                <table>
                    <tr>
                        <td>제목</td>
                        <td><input class="form-control" style="width: 500px" type="text" id="cb_title" name="cb_title" value="${result.cb_title }"/></td>
                    </tr>
                    <tr>
                        <td>내용</td>
                        <td><textarea class="form-control" style="width: 500px" rows="10" cols="10" id="cb_memo" name="cb_memo"><c:out value="${result.cb_memo }"/></textarea></td>
                    </tr>
                    <tr>
                    <br>
                        <td>작성자</td>
                        <td><input class="form-control" style="width: 500px" type="text" id="cb_author" name="cb_author" value="${result.cb_author }"/></td>
                    </tr>
                </table>
                <div align="right">
                    <a href='#' onClick='fn_update()'>수정</a>
                    <a href='#' onClick='fn_delete()'>삭제</a>
                 <!--    <a href='#' onClick='fn_cancel()'>목록</a>
                    <a href='#' onClick='fn_relay()'>답변</a>      -->               
                </div>
            </div>
            </div>
            </form>
        </div>
  </form>
  <div class="container">
  	<form id="form1" name="form1" action="board/commentInsert.ing" method="post">
	  	<label for="content">댓글</label>
	  	<div class="input-group">
  			<input type="hidden" name="cb_num" value="${result.cb_num}"/>
               <input type="text" class="form-control" id="content" name="cbc_memo" placeholder="내용을 입력하세요." />
               <span class="input-group-btn">
                    <input class="btn btn-default" type="submit" value="등록" />
               </span>
  		</div>
  	</form>
  </div>
		<div class="container">
			<div class="commentList">
				<!-- comment보여지는부분 -->
				<div style="margin-top: 20px">
					<table style="width: 700px">
						<c:forEach var="comm" items="${comment}" varStatus="status">
							<%--      ${comm.cbc_num} 
					${comm.cb_num} --%>
							<tr>
								<td>${comm.cbc_memo} ${comm.cbc_regdate} 
								    <a onclick="reple_modify(${comm.cbc_num})" href="#">수정</a>
									<a href="board/commentDelete.do?cbc_num=${comm.cbc_num}&cb_num=${comm.cb_num}">삭제</a>
									<!-- 				<button type="button" class="btn btn-sm btn-secondary" id="btnDelete">삭제</button> -->
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
		</div>
		
		</div>
</body>
</html>
