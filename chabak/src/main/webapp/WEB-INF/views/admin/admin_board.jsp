<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<c:set var="path" value="${pageContext.request.contextPath}"/>

<!doctype html>
<html class="no-js" lang="">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>관리자 페이지</title>
<meta name="description" content="Ela Admin - HTML5 Admin Template">
<meta name="viewport" content="width=device-width, initial-scale=1">

<link rel="apple-touch-icon" href="https://i.imgur.com/QRAUqs9.png">
<link rel="shortcut icon" href="https://i.imgur.com/QRAUqs9.png">

<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/normalize.css@8.0.0/normalize.min.css">
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.1.3/dist/css/bootstrap.min.css">
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/font-awesome@4.7.0/css/font-awesome.min.css">
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/gh/lykmapipo/themify-icons@0.1.2/css/themify-icons.css">
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/pixeden-stroke-7-icon@1.2.3/pe-icon-7-stroke/dist/pe-icon-7-stroke.min.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/flag-icon-css/3.2.0/css/flag-icon.min.css">
<link rel="stylesheet" href="./resources/assets/css/cs-skin-elastic.css">
<link rel="stylesheet" href="./resources/assets/css/style.css">
<!-- <script type="text/javascript" src="https://cdn.jsdelivr.net/html5shiv/3.7.3/html5shiv.min.js"></script> -->
<link
	href="https://cdn.jsdelivr.net/npm/chartist@0.11.0/dist/chartist.min.css"
	rel="stylesheet">
<link
	href="https://cdn.jsdelivr.net/npm/jqvmap@1.5.1/dist/jqvmap.min.css"
	rel="stylesheet">

<link
	href="https://cdn.jsdelivr.net/npm/weathericons@2.1.0/css/weather-icons.css"
	rel="stylesheet" />
<link
	href="https://cdn.jsdelivr.net/npm/fullcalendar@3.9.0/dist/fullcalendar.min.css"
	rel="stylesheet" />
	
	
	

<style>
#weatherWidget .currentDesc {
	color: #ffffff !important;
}

.traffic-chart {
	min-height: 335px;
}

#flotPie1 {
	height: 150px;
}

#flotPie1 td {
	padding: 3px;
}

#flotPie1 table {
	top: 20px !important;
	right: -10px !important;
}

.chart-container {
	display: table;
	min-width: 270px;
	text-align: left;
	padding-top: 10px;
	padding-bottom: 10px;
}

#flotLine5 {
	height: 105px;
}

#flotBarChart {
	height: 150px;
}

#cellPaiChart {
	height: 160px;
}



</style>
</head>

<body>
	<!-- Left Panel -->
	<aside id="left-panel" class="left-panel">
		<nav class="navbar navbar-expand-sm navbar-default">
			<div id="main-menu" class="main-menu collapse navbar-collapse">
				<ul class="nav navbar-nav">
					<a herf="#">
					<li class="menu-title">Admin</li></a>
					<!-- /.menu-title -->
					
  							<li class="menu-item-has-children dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">회원관리</a>
                        <ul class="sub-menu children dropdown-menu">                            
                            <li><i class="ti-bar-chart"></i><a href="admin_member_list">회원조회</a></li>
                        </ul>
                    </li>
                    	
                     <li class="menu-item-has-children dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"> <i class="ui-cards.html"></i>상품관리</a>
                        <ul class="sub-menu children dropdown-menu">
                            <li><i class="ti-face-smile"></i><a href="marketList.do">상품조회</a></li>  
                            <li><i class="ti-face-smile"></i><a href="MwriteForm.do">상품등록</a></li>  
                        </ul>
                    </li>
             
                 
               <li class="menu-item-has-children dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"> <i class="ui-cards.html"></i>장소관리</a>
                        <ul class="sub-menu children dropdown-menu">
                               <li><i class="ti-face-smile"></i><a href="admin_registerPlace">장소등록</a></li>
                        </ul>
                    </li>
                    
                     <li class="menu-item-has-children dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"> <i class="ui-cards.html"></i>기타관리</a>
                        <ul class="sub-menu children dropdown-menu">
                            <li><i class="ti-image"></i> <a href="admin_board"> 커뮤니티 조회</a></li>
                            <li><i class="ti-face-smile"></i><a href="BwriteForm.do">게시글등록</a></li>  
                        </ul>
                    </li>
  				
  			

				</ul>
			</div>
			<!-- /.navbar-collapse -->
		</nav>
	</aside>
	<!-- /#left-panel -->






	<!-- Right Panel -->



	<div id="right-panel" class="right-panel">

		<!-- Header-->
		<header id="header" class="header">
			<a href="adminMain.do">
				<div class="top-left">

					<div class="navbar-header">
						<img class="img-fluid d-block  mx-auto" alt=""
							style="width: 80px; height: 50px"
							;
                 src="https://cdn.crowdpic.net/list-thumb/thumb_l_C08489CD452A6BA0B8131D1BE3B8CC7E.jpg">
					</div>
				</div>
			</a>





			<div class="header-menu">
				<div class="user-area dropdown float-right">
					<c:if test="${sessionScope.login_result1 != null}">
						<button type="button" class="btn btn-secondary">
							<a href="${pageContext.request.contextPath}/admin_logout.ing">Logout</a>
						</button>
					</c:if>

					<c:if test="${sessionScope.login_result1 == null}">
						<button type="button" class="btn btn-secondary">
							<a href="admin_login">Login</a>
						</button>
					</c:if>
				</div>
			</div>




		</header>
		<!-- /header -->

   
   
   
  
    <div class="content">
         <div class="animated fadeIn">
            <div class="row">

     <form id="boardForm" name="boardForm" method="post">
               <div class="col-md-12">
                  <div class="card">
                     <div class="card-header">
                        <strong class="card-title">게시글조회</strong>
                     </div>
                        <div class="card-body">
                           <table id="bootstrap-data-table"
                              class="table table-striped table-bordered">
                              <thead>
                <tr>
       
                    <th>번호</th>
                    <th>제목</th>
                    <th>내용</th>
                    <th>작성자</th>
                    <th>작성일</th>
                 
                </tr>
            </thead>
            <tbody> 
            <c:forEach var="result" items="${list }" varStatus="status"> 
         <tr>
                    	
                        <td ><c:out value="${result.cb_num }"/></td> <!-- onClick='fn_view(${result.cb_num})' -->
                        
                        <td><c:out value="${result.cb_title }"/></td>
                        <td><c:out value="${result.cb_memo }"/></td>
                        <td><c:out value="${result.cb_author }"/></td>
                        <td>${result.cb_regdate}</td>
                    </tr>
                </c:forEach>
            
                       
       
            </tbody>
                           </table>
                        </div>
                  </div>
               </div>
</form>

            </div>
         </div>
         <!-- .animated -->
      </div>
  
  
        <div>            
            
          <!--  <a href="#" onClick="fn_delete()">삭제</a>  삭제할 항목 넣어줘야함 . -->         
        </div>
    </form>

		<!-- ---------------------------------Footer---------------------------- -->

		<div class="clearfix"></div>
		<!-- Footer -->
		<footer class="site-footer">
			<div class="footer-inner bg-white">
				<div class="row">
					<div class="col-sm-6">Copyright &copy;Design by 차박</div>
					<div class="col-sm-6 text-right">
						
					</div>
				</div>
			</div>
		</footer>
		<!-- /.site-footer -->
	</div>
	<!-- /#right-panel -->




	<!-- Scripts -->
	<script
		src="https://cdn.jsdelivr.net/npm/jquery@2.2.4/dist/jquery.min.js"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/popper.js@1.14.4/dist/umd/popper.min.js"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@4.1.3/dist/js/bootstrap.min.js"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/jquery-match-height@0.7.2/dist/jquery.matchHeight.min.js"></script>
	<script src="./resources/assets/js/main.js"></script>


<script>



function fn_view(cb_num){
      
      var form = document.getElementById("boardForm");
      var url = "<c:url value='admin_board_detail.do' />";
      url = url + "?cb_num=" + cb_num;
      fn_view
      form.action = url;    
      form.submit(); 
  }

//글삭제
function fn_delete(cb_num) { 
	var chkbox = document.getElementsByName('chkbox'); 
	var chk = false; 
	for(var i=0 ; i<chkbox.length ; i++) 
	{ 
		if(chkbox[i].checked) { 
			chk = true; 
			var form = document.getElementById(cb_num);
			alert(form + " 삭제?");
			form.action = "<c:url value='/deleteboard.do'/>";
			url = url + "?cb_num=" + cb_num;
		    form.submit();
			} 
		else { chk = false; } } 
	}

	</script>




</body>
</html>