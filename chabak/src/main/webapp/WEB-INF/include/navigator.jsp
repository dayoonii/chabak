<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!-- Navigation -->
<nav class="fh5co-nav" role="navigation">
			<div class="container">
				<div class="row">
					<div class="col-md-3 col-xs-2">
						<div id="fh5co-logo">
							<a href="${pageContext.request.contextPath}/main.do"><img src="<c:url value='/resources/Picture/logo.png'/>" alt=""
							 style="width: 80px; height: 50px";>CHABAK</a>
						</div>
					</div>
					<div class="col-md-6 col-xs-6 text-center menu-1">
						<ul>
							<li class="has-dropdown"><a href="${pageContext.request.contextPath}/ChaBak">차박의 묘미</a>
								<ul class="dropdown">
									<li><a href="${pageContext.request.contextPath}/ChaBak">차박소개</a></li>
									<li><a href="${pageContext.request.contextPath}/place">차박추천장소</a></li>
								</ul></li>
							<li class="has-dropdown"><a href="${pageContext.request.contextPath}/boardList.do" id="current">차박커뮤니티</a>
							<ul class="dropdown">
									<li><a href="${pageContext.request.contextPath}/boardList.do">자유게시판</a></li>
									<%-- <li><a href="${pageContext.request.contextPath}/reviewList.do">장소후기게시판</a></li> --%>
								</ul></li>
							
							<li class="has-dropdown"><a href="${pageContext.request.contextPath}/productList.do">차박용품</a>
								<!-- <ul class="dropdown">
									<li><a href="#">.</a></li>
									<li><a href="#">.</a></li>
									<li><a href="#">.</a></li>
								</ul> -->
								</li>
						
					<c:if test="${sessionScope.login_result != null}">
						<li><a href="myPage">${login_result.m_name}님
								차박 <span class="sr-only">(current)</span>
						</a></li>
						<li><span> 
						<a href="${pageContext.request.contextPath}/member_logout.ing">Logout</a></span></li>
					</c:if>

					<c:if test="${sessionScope.login_result == null}">
						<li><a href="${pageContext.request.contextPath}/login.do">Login</a></li>
					</c:if>
						<li class=""><a href="${pageContext.request.contextPath}/admin_login.ing">adminMain</a>
								
						</li>

				</ul>
					</div>
					<div class="col-md-3 col-xs-4 text-right hidden-xs menu-2">
						<ul>
							<li class="search">
								<div class="input-group">
									<input type="text" placeholder="Search.."> <span class="input-group-btn">
										<button class="btn btn-primary" type="button">
											<i class="icon-search"></i>
										</button>
									</span>
								</div>
							</li>
					<li class="shopping-cart"><a href="${pageContext.request.contextPath}/cartList.do" class="cart"><span><small>0</small>
					<i class="icon-shopping-cart"></i></span></a></li>

				</ul>
					</div>
				</div>

			</div>
		</nav>