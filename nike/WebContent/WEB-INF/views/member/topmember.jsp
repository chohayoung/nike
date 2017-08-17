<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<head>
    <meta charset="UTF-8">
    <title>NIKE</title>
    <link rel="stylesheet" href="../css/common.css" />
    <link rel="stylesheet" href="../css/nike.css">
    <link rel="stylesheet" href="../css/joining.css">
    <link rel="stylesheet" href="../css/jquery.bxslider.css">
    <link rel="stylesheet" href="../css/style.css">
    <script src="../js/jquery-1.12.1.min.js"></script>
    <script src="../js/nike.js"></script>
    <script src="../js/jquery.bxslider.js"></script>
    <script src="../js/modernizr.custom.63321.js"></script>
    <script src="../js/jquery.catslider.js"></script>
    <script src="../js/joining.js"></script>
</head>
<style>
/*  유효성검사 오류메세지  */
.join-form p{
	position: relative;
}
.inp-error {
	position :absolute;
	bottom:6px;
	left:382px;
	display: none;
	color: red;
}

.join-form1 p{
	position: relative;
}
.inp-error1 {
	position:absolute;
	bottom:6px;
	left:382px;
	display: none;
	color: red;
}
</style>

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
<div>
    <ul id="topMenu">
        <li><a href="login.do">로그인</a></li>
        <li><a href="joining">회원가입</a></li>
        <li><a href="#">고객센터</a></li>
        <li><a href="#"><img src="../images/shop_icon.png" alt="장바구니"></a></li>
    </ul>
</div>
</div>
<div id="hWrap">
<header>
<h1 class="logo"><a href="../index"><img src="../images/logo.png" alt="나이키로고"></a></h1>

<!--메인메뉴-->
<div>
    <p class="all"><a href="#"><img src="../images/allmenu_icon.png" alt="전체메뉴아이콘"></a></p>
    <ul id="nav">
        <li><a href="../board/list.do">게시판</a></li>
        <li><a href="#">임시메뉴1</a></li>
        <li><a href="#">임시메뉴2</a></li>
        <li><a href="#">임시메뉴3</a></li>  
    </ul>
    <ul class="mainMenu">
       <li><a href="#">MEN</a></li>
       <li><a href="#">WOMEN</a></li>
       <li><a href="#">BOYS</a></li>
       <li><a href="#">GIRLS</a></li> 
    </ul>
    <form  id="search" method="get" action="search">
    <input type="text" size="20" placeholder="THE DRAW">
    </form>
</div>
</header>
</div>
