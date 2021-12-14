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
<%@include file ="../../include/header.jsp" %>
<%@ include file="../../include/navigator.jsp"%>
<link rel="stylesheet" href="resource/css/bootstrap.min.css">
<link rel="stylesheet" href="resource/css/mdb.min.css">

<style> /* uploadResult.jsp 표시할 부분 iframe으로 설정 */
iframe1 {
    width : 400px;
    height : 200px;
    border : 1px;
    border-style : solid;
}
</style>
</head>
    
<body>

<form id="writeForm" name="writeForm" method="get">
	<div class="container">
		<div class="row">
			<form method="post" action="FileSave" enctype="multipart/form-data">
				<table class="table table-striped"
					style="text-align: center; border: 1px; width: 1100px;">
					<thead>
						<th colspan="1" style="background-color: #eeeeee; text-align: center;"> 글쓰기 </th>
					</thead>
					<tbody>
						<tr>
							<td><input type="text" class="form-control"
								placeholder="글제목" name="cb_title" id = "cb_title" maxlength="50"></td>
							<br>
						</tr>
						<tr>
							<td><input type="text" class="form-control"
								placeholder="작성자" name="cb_author" id = "cb_author" maxlength="50"></td>
						</tr>
						<tr>
							<td>
								<!-- <div class="input-group">
									<div class="input-group-prepend">
										<span class="input-group-text" id="inputGroupFileAddon01">Upload</span>
									</div> -->
									<div class="custom-file">
										<input type="file" class="custom-file-input"
											id="imgInp" name="FileName"
											aria-describedby="imgInp"> 
											<label>Choose file</label>
									</div>
								</div>
							</td>
						</tr>
						<tr>

							<td><textarea class="form-control" placeholder="글 내용"
									name="cb_memo" id= "cb_memo" maxlength="2048" style="height: 350px"></textarea>
							</td>

						</tr>
					</tbody>
				</table>
				   <div align="right">
				   	<input type=button class="btn btn-secondary"
					value="글 등록" onClick="fn_addtoBoard()"> 
						<input type=button class="btn btn-secondary"
					value="목록" onClick='fn_cancel()'> 
                </div>

			</form>

		</div>

	</div>
	</form>
	
	<br><br><br><br><br><br>
<%-- <div>
    <form id="writeForm" name="writeForm" method="get">
        <div>
            <h2>글쓰기</h2>
            <div>
                <table>
                    <tr>
                        <th>제목</th>
                        <td><input style="width: 500px" type="text" id="cb_title" name="cb_title" /></td>
                    </tr>
                     <tr>
                        <th>작성자</th>
                        <td><input style="width: 500px" type="text" id="cb_author" name="cb_author" /></td>
                    </tr>
                    <tr>
                        <th>내용</th>
                        <td><textarea style="width: 500px" rows="10" cols="10" id="cb_memo" name="cb_memo"></textarea></td>
                    </tr>
                   
                    <tr>
                    <!-- 파일부분
                    <td><div class="form-group">
							<input type="file" name="FileName" id="imgInp">
						</div>

						<div>
							<img id="foo" style="width: 300px; height: 300px;" />
						</div>
						-->
                    <!-- 
								<div class="input-group">
									<div class="input-group-prepend">
										<span class="input-group-text" id="inputGroupFileAddon01">Upload</span>
									</div>
									<div class="custom-file">
										<input type="file" class="custom-file-input"
											id="inputGroupFile01" name="image"
											aria-describedby="inputGroupFileAddon01"> <label
											class="custom-file-label" for="inputGroupFile01">Choose
											file</label>
									</div>
								</div> -->
								</td>
							</tr>
                </table>
                <div>
                    <a href='#' onClick="fn_addtoBoard()">글 등록</a>
                    <a href='#' onClick='fn_cancel()'>목록</a>
                </div>
            </div>
        </div>
    </form>
 --%>
 
 
 
 
 
<script type="text/javascript">
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
//글쓰기
function fn_addtoBoard(){
    var form = document.getElementById("writeForm");
    form.action = "<c:url value='/Bwrite.do'/>";
    form.submit();
}
 
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
    form.action = "<c:url value='/boardList.do'/>";
    form.submit();
    
}
</script>
</div>





	<script type="text/javascript" src="resource/js/jquery-3.4.0.min.js"></script>
	<script type="text/javascript" src="resource/js/bootstrap.js"></script>
	<script type="text/javascript" src="resource/js/mdb.min.js"></script>
	
	
	
	
	
</body>
</html>
