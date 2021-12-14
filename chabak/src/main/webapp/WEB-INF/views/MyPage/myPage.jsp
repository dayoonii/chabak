<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>마이페이지 메인화면</title>
<%@ include file="../../include/header.jsp" %>


</head>
<body>
<%@ include file="../../include/navigator.jsp" %>

<section class="content-section" id="portfolio">
    <div class="container">
      <div class="content-section-heading text-center">
        <h3 class="text-secondary mb-0">MYPAGE</h3>
      </div>
      <div class="row no-gutters">
        <div class="col-lg-6">
          <a class="portfolio-item" href="myInfo.do">
            <span class="caption">
              <span class="caption-content">
                <h2>Introduction</h2>
                <p class="mb-0">내 정보</p>
              </span>
            </span>
            <img class="img-fluid" alt="" src="resources/Picture/portfolio1.jpg">
          </a>
        </div>
        <div class="col-lg-6">
          <a class="portfolio-item" href="reviewList.do">
            <span class="caption">
              <span class="caption-content">
                <h2>Review</h2>
                <p class="mb-0">작성후기</p>
              </span>
            </span>
            <img class="img-fluid" alt="" src="resources/Picture/portfolio2.jpg">
          </a>
        </div>
        
      </div>
    </div>
  </section>
</body>
</html>