<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>NIKE</title>
    <link rel="stylesheet" href="css/common.css" />
    <link rel="stylesheet" href="css/nike.css">
    <link rel="stylesheet" href="css/login.css" />
    <link rel="stylesheet" href="css/jquery.bxslider.css">
    <link rel="stylesheet" href="css/style.css">
    <script src="js/jquery-1.12.1.min.js"></script>
    <script src="js/nike.js"></script>
    <script src="js/login.js"></script>
    <script src="js/jquery.bxslider.js"></script>
    <script src="js/modernizr.custom.63321.js"></script>
    <script src="js/jquery.catslider.js"></script>
    
</head> 
<body>
<!--    wrap   -->

<!--*  1. header  *-->
<!--탑메뉴-->
<div id="top">
    <dl>
    <dt class="blind">site</dt>
    <dd class="site1"><a href="#">NIKE</a></dd>
    <dd><a href="#">NIKE+</a></dd>
    </dl>
<c:choose>
<c:when test="${empty userId}">
    <ul id="topMenu">
        <li><a href="member/login.do">로그인</a></li>
        <li><a href="member/joining">회원가입</a></li>

        <li><a href="#">고객센터</a></li>
        <li><a href="#"><img src="images/shop_icon.png" alt="장바구니"></a></li>
    </ul>
</c:when>
<c:otherwise>
    <ul id="topMenu">
        <li id="login_info">${sessionScope.userId}님 환영합니다.</li>
        <li><a href="member/memberUpdateForm.do">회원정보수정</a></li>
        <li><a href="logout.do">로그아웃</a></li>
        
        <li><a href="#">고객센터</a></li>
        <li><a href="#"><img src="images/shop_icon.png" alt="장바구니"></a></li>
    </ul>
</c:otherwise>
</c:choose>
</div>
<div id="hWrap">
<header>
<h1 class="logo"><a href="#"><img src="images/logo.png" alt="나이키로고"></a></h1>

<!--메인메뉴-->
<div>
    <p class="all"><a href="#"><img src="images/allmenu_icon.png" alt="전체메뉴아이콘"></a></p>
    <ul id="nav">

        <li><a href="board/list.do">게시판</a></li>
        <li><a href="product">상품 목록</a></li>
        <li><a href="test">test</a></li>
        <li><a href="#">임시메뉴3</a></li>  
    </ul>
    <ul class="mainMenu">
       <li><a href="#">MEN</a></li>
       <li><a href="#">WOMEN</a></li>
       <li><a href="#">BOYS</a></li>
       <li><a href="#">GIRLS</a></li> 
    </ul>
 
    <p class="ad"><img src="images/headBanner.jpg" alt="헤더로고"></p>
</div>
</header>
</div>

