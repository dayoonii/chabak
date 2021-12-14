<%@ page language="java" pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("UTF-8"); %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<!DOCTYPE HTML>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>ChaBak</title>


<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
<style>
.foo img {
   margin: 200px 0;
}
</style>

</head>
<%@include file="../../include/header.jsp"%>
<%@ include file="../../include/navigator.jsp" %>
<body>


               <!-- 
                    <tr>
                        <td colspan="2">
                  <form name="form1" method="post" action="${path }/clist.do">
                                <input type="hidden" name="mar_num"
                                    value="${dto.mar_num }">
                                <select name="amount">
                                    <c:forEach begin="1" end="10" var="i">
                                        <option value="${i}">${i}</option>
                                    </c:forEach>
                                </select>&nbsp;개 <input type="submit" value="장바구니에 담기">
                  </form> <a href="${path}/list.do">상품목록</a>
                        </td>
                    </tr>
                    -->

	<div id="fh5co-contact">
		<div class="container">
			<div class="row">
				<div class="col-md-5">
	              
					<div class="fh5co-contact-info">
						<h3>상품 정보</h3>
						<div>
							<img src="data:image/jpeg;base64,<c:out value='${dto.mar_Img}'/>" width="300px"
								height="300px">
						</div>
					</div>

				</div>
				<div class="col-md-6">
					<div class="row form-group">
					
						<div class="col-md-12">상품이름 : ${dto.mar_name }</div>
					</div>

					<div class="row form-group">
						<div class="col-md-6">
							<span class="price">가격 : ${dto.mar_price }</span>
						</div>

					</div>
					<div class="row form-group">
						<div class="col-md-6">
							<span class="price">상품내용 :  ${dto.mar_content }</span>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div class="col-md-8 col-md-offset-2 text-center fh5co-heading">
		<h2>${dto.mar_name }</h2>
		<p>
			<a href="/ex/cartList.do?num=${dto.mar_num }" class="btn btn-primary btn-outline btn-lg">Add to Cart</a> <!-- ds -->
		
		</p>
	</div>



	<div id="fh5co-product">
      <div class="row">
         <div class="container">
            <div class="col-md-10 col-md-offset-1">
               <div class="fh5co-tabs animate-box fadeInUp animated-fast">
                  <ul class="fh5co-tab-nav">
                     <li class="active"><a href="#" data-tab="1"><span
                           class="icon visible-xs"><i class="icon-file"></i></span><span
                           class="hidden-xs">상품 후기</span></a></li>
                     <li class=""><a href="#" data-tab="2"><span
                           class="icon visible-xs"><i class="icon-bar-graph"></i></span><span
                           class="hidden-xs">상품 상세내용</span></a></li>
                     <li class=""><a href="#" data-tab="3"><span
                           class="icon visible-xs"><i class="icon-star"></i></span><span
                           class="hidden-xs">주의사항</span></a></li>
                  </ul>

                  <!-- Tabs -->
                  <div class="fh5co-tab-content-wrap" style="height: 633px;">
                     <div
                        class="fh5co-tab-content tab-content active animated-fast fadeIn fadeOutDown"
                        data-tab-content="1">
                        <div class="col-md-10 col-md-offset-1">

                           <h2>정다윤 화이링</h2>
                           <p>Paragraph placeat quis fugiat provident veritatis quia
                              iure a debitis adipisci dignissimos consectetur magni quas
                              eius nobis reprehenderit soluta eligendi quo reiciendis fugit?
                              Veritatis tenetur odio delectus quibusdam officiis est.</p>

                           <p>Ullam dolorum iure dolore dicta fuga ipsa velit
                              veritatis molestias totam fugiat soluta accusantium omnis quod
                              similique placeat at. Dolorum ducimus libero fuga molestiae
                              asperiores obcaecati corporis sint illo facilis.</p>

                           <div class="row">
                              <div class="col-md-6">
                                 <h2 class="uppercase">Keep it simple</h2>
                                 <p>Ullam dolorum iure dolore dicta fuga ipsa velit
                                    veritatis</p>
                              </div>
                              <div class="col-md-6">
                                 <h2 class="uppercase">Less is more</h2>
                                 <p>Ullam dolorum iure dolore dicta fuga ipsa velit
                                    veritatis</p>
                              </div>
                           </div>

                        </div>
                     </div>

                     <div
                        class="fh5co-tab-content tab-content active fadeIn animated-fast fadeOutDown"
                        data-tab-content="2">
                        <div class="col-md-10 col-md-offset-1">
                           <h3>Product Specification</h3>
                           <ul>
                              <li>Paragraph placeat quis fugiat provident veritatis
                                 quia iure a debitis adipisci dignissimos consectetur magni
                                 quas eius</li>
                              <li>adipisci dignissimos consectetur magni quas eius
                                 nobis reprehenderit soluta eligendi</li>
                              <li>Veritatis tenetur odio delectus quibusdam officiis
                                 est.</li>
                              <li>Magni quas eius nobis reprehenderit soluta eligendi
                                 quo reiciendis fugit? Veritatis tenetur odio delectus
                                 quibusdam officiis est.</li>
                           </ul>
                           <ul>
                              <li>Paragraph placeat quis fugiat provident veritatis
                                 quia iure a debitis adipisci dignissimos consectetur magni
                                 quas eius</li>
                              <li>adipisci dignissimos consectetur magni quas eius
                                 nobis reprehenderit soluta eligendi</li>
                              <li>Veritatis tenetur odio delectus quibusdam officiis
                                 est.</li>
                              <li>Magni quas eius nobis reprehenderit soluta eligendi
                                 quo reiciendis fugit? Veritatis tenetur odio delectus
                                 quibusdam officiis est.</li>
                           </ul>
                        </div>
                     </div>

                     <div
                        class="fh5co-tab-content tab-content active fadeIn animated-fast"
                        data-tab-content="3">
                        <div class="col-md-10 col-md-offset-1">
                           <h3>Review</h3>
                           <div class="feed">
                              <div>
                                 <blockquote>
                                    <p>재구매의사 완전!!</p>
                                 </blockquote>
                                 <h3>— 1234**</h3>
                                 <span class="rate"> <i class="icon-star2"></i> <i
                                    class="icon-star2"></i> <i class="icon-star2"></i> <i
                                    class="icon-star2"></i> <i class="icon-star2"></i>
                                 </span>
                              </div>
                              <div>
                                 <blockquote>
                                    <p>써봤더니 넘 좋아여</p>
                                 </blockquote>
                                 <h3>— jung**</h3>
                                 <span class="rate"> <i class="icon-star2"></i> <i
                                    class="icon-star2"></i> <i class="icon-star2"></i> <i
                                    class="icon-star2"></i> <i class="icon-star2"></i>
                                 </span>
                              </div>
                           </div>
                        </div>
                     </div>
                  </div>

               </div>
            </div>
         </div>
      </div>
   </div>
   
   
   
   
   
   	<!----------------------- footer ------------------------------------->
	<footer id="fh5co-footer" role="contentinfo">
		<div class="container">
			<div class="row row-pb-md">
				<div class="col-md-4 fh5co-widget">
					<h3>CHABAK</h3>
					<p>VanLife</p>
				</div>
				<div class="col-md-4 col-sm-6 col-xs-8 col-md-push-1">
					<ul class="fh5co-footer-links">
						<li>경기도 융합소프트웨어과 사회맞춤형</li>
						<li>
							<!-- <a href="#"> -->개인정보 처리방침 | 이용와관 | 사업자 등록
						</li>
						<li>고객센터</li>
						<li>운영시간 : 08:00~09:00</li>
						<li>Tel:070-1234-4567</li>
					</ul>
				</div>
			</div>

			<div class="row copyright">
				<div class="col-md-12 text-center">
					<p>
						<small class="block">&copy;All Rights Reserved.</small> 
						<small class="block">Designed by CHABAK </small>
					</p>
					<p>
					<ul class="fh5co-social-icons">
						<li><a href="#"><i class="icon-instagram"></i></a></li>
						<li><a href="#"><i class="icon-facebook"></i></a></li>
						<li><a href="#"><i class="icon-twitter"></i></a></li>
					</ul>
				</div>
			</div>
		</div>
	</footer>


	<div class="gototop js-top">
		<a href="#" class="js-gotop"><i class="icon-arrow-up"></i></a>
	</div>











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