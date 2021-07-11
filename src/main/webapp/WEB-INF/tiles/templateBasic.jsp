<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>HireHigher</title>
	
	<link href="${pageContext.request.contextPath }/resources/css/bootstrap.css" rel="stylesheet">
    <script src="${pageContext.request.contextPath }/resources/js/jquery.js"></script>
    <script src="${pageContext.request.contextPath }/resources/js/bootstrap.js"></script>
      
    <!-- Masonry -핀터레스트형식 게시판 라이브러리 -->
    <script src="https://unpkg.com/masonry-layout@4/dist/masonry.pkgd.min.js"></script> 
    <script src="https://unpkg.com/imagesloaded@4/imagesloaded.pkgd.js"></script>
    
    <!-- jcrop 이미지 편집기(사용고려)-->
    <link rel="stylesheet" href="https://unpkg.com/jcrop/dist/jcrop.css">
    <script src="https://unpkg.com/jcrop"></script>
    
    <!-- Font Awesome -->
    <link rel="stylesheet" href="https://pro.fontawesome.com/releases/v5.10.0/css/all.css"/>
      
    <!-- 스타일시트(개인 css)는 아래에 추가해주세요 (src/webapp/resources/css에 필요한 css파일 추가하고 이곳에 선언해줍니다.)-->
  	<script src="${ pageContext.request.contextPath }/resources/js/main-chart.js"/></script>
  	<!-- 기본선언 css,사이드바 -->
  	<link href="${pageContext.request.contextPath }/resources/css/Basic.css" rel="stylesheet">
  	<link href="${pageContext.request.contextPath }/resources/css/sideBar.css" rel="stylesheet">
    <!-- 준명 -->
    <link href="${pageContext.request.contextPath }/resources/css/createBoard.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath }/resources/css/creator.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath }/resources/css/mypage.css?1" rel="stylesheet">
    <!-- 우현이형 -->
    <link href="${pageContext.request.contextPath }/resources/css/userJoin.css?2" rel="stylesheet">
    <link href="${pageContext.request.contextPath }/resources/css/userLogin.css?1" rel="stylesheet">
    <link href="${pageContext.request.contextPath }/resources/css/creatorApply.css?1" rel="stylesheet">
    <link href="${pageContext.request.contextPath }/resources/css/jobBoard.css?1" rel="stylesheet">
    <link href="${pageContext.request.contextPath }/resources/css/jobDetail.css?1" rel="stylesheet">
     
</head>
<body>
	<!-- 헤더영역 -->
	<tiles:insertAttribute name="header"/>
	<!-- 사이드바 -->
	<tiles:insertAttribute name="side"/>
	<!-- 본문영역 -->
	<tiles:insertAttribute name="body"/>
	<!-- 푸터영역 -->
	<tiles:insertAttribute name="footer"/>
</body>
</html>