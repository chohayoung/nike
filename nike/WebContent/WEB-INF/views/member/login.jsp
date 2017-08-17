<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
    <link rel="stylesheet" href="../css/common.css">
    <link rel="stylesheet" href="../css/nike.css">
    <link rel="stylesheet" href="../css/jquery.bxslider.css">
    <link rel="stylesheet" href="../css/style.css">
    <link rel="stylesheet" href="../css/board.css">
    <script src="../js/jquery-1.12.1.min.js"></script>
    <script src="../js/nike.js"></script>
    <script src="../js/jquery.bxslider.js"></script>
    <script src="../js/modernizr.custom.63321.js"></script>
    <script src="../js/jquery.catslider.js"></script>
<script>
    $(function(){
    	$("#btnLogin").click(function(){
        
            // 태크.val() : 태그에 입력된 값
            // 태크.val("값") : 태그의 값을 변경 
            var userId = $("#userId").val();
            var userPw = $("#userPw").val();
            if(userId == ""){
                alert("아이디를 입력하세요.");
                $("#userId").focus(); // 입력포커스 이동
                return; // 함수 종료
            }
            if(userPw == ""){
                alert("비밀번호를 입력하세요.");
                $("#userPw").focus();
                return;
            }
            //  폼 내부의 데이터를 전송할 주소
            document.form1.action="${path}/nike/member/loginCheck.do";
            // 제출
            document.form1.submit();
        });
    });
</script>
</head>
<body>

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
        <li><a href="#">로그인</a></li>
        <li><a href="../member/joining">회원가입</a></li>
        <li><a href="#">고객센터</a></li>
        <li><a href="#"><img src="../images/shop_icon.png" alt="장바구니"></a></li>
    </ul>
</div>
</div>
<div id="hWrap">
<header>
<h1 class="logo"><a href="../index"><img src="../images/logo.png" alt="나이키로고"></a></h1>
<div>
    <p class="all"><a href="#"><img src="../images/allmenu_icon.png" alt="전체메뉴아이콘"></a></p>
    <ul id="nav">
        <li><a href="#">게시판</a></li>
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
<!--    <p class="ad"><img src="images/headBanner.jpg" alt="헤더로고"></p>-->
</div>
</header>
</div>

   <h2>로그인</h2>
    <form name="form1" method="post">
        <table border="1" width="400px">
            <tr>
                <td>아이디</td>
                <td><input name="userId" id="userId"></td>
            </tr>
            <tr>
                <td>비밀번호</td>
                <td><input type="password" name="userPw" id="userPw"></td>
            </tr>
            <tr>
                <td colspan="2" align="center">
                    <button type="button" id="btnLogin">로그인</button>
                <c:if test="${msg == 'failure'}">
                    <div style="color: red">
                        아이디 또는 비밀번호가 일치하지 않습니다.
                    </div>
                </c:if>
                <c:if test="${msg == 'logout'}">
                    <div style="color: red">
                        로그아웃되었습니다.
                    </div>
                </c:if>
                </td>
            </tr>
        </table>
    </form>
    
    
<%@ include file="footermember.jsp"%>