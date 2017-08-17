<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>회원 수정</title>
<meta charset="EUC-KR">
<link rel="stylesheet" href="../css/common.css" />
<link rel="stylesheet" href="../css/nike.css">
<link rel="stylesheet" href="../css/jquery.bxslider.css">
<link rel="stylesheet" href="../css/style.css">
<script src="../js/jquery-1.12.1.min.js"></script>
<script src="../js/nike.js"></script>
<script src="../js/jquery.bxslider.js"></script>
<script src="../js/modernizr.custom.63321.js"></script>
<script src="../js/jquery.catslider.js"></script>
</head>
<body>

	<!--탑메뉴-->
	<div id="top">
		<dl>
			<dt class="blind">site</dt>
			<dd class="site1">
				<a href="#">NIKE</a>
			</dd>
			<dd>
				<a href="#">NIKE+</a>
			</dd>
		</dl>
		<div>

			<ul id="topMenu">
				<li id="login_info">${sessionScope.userId}님환영합니다.</li>
				<li><a href="../logout.do">로그아웃</a></li>
				<li><a href="#">고객센터</a></li>
				<li><a href="#"><img src="images/shop_icon.png" alt="장바구니"></a></li>
			</ul>
		</div>
	</div>
	<div id="hWrap">
		<header>
		<h1 class="logo">
			<a href="../index"><img src="../images/logo.png" alt="나이키로고"></a>
		</h1>

		<!--메인메뉴-->
		<div>
			<p class="all">
				<a href="#"><img src="../images/allmenu_icon.png" alt="전체메뉴아이콘"></a>
			</p>
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
			<form id="search" method="get" action="search">
				<input type="text" size="20" placeholder="THE DRAW">
			</form>
			<!--    <p class="ad"><img src="images/headBanner.jpg" alt="헤더로고"></p>-->
		</div>
		</header>
	</div>

	<center>
		<h1>회원정보 수정 페이지</h1>

		<form action="memberUpdate.do">
			<table>
				<tr>
					<td>아이디</td>
					<td><input type="text" name="id" value="${userId }"></td>
				</tr>
				<tr>
					<td>비밀번호</td>
					<td><input type="password" name="pw"></td>
				</tr>
				<tr>
					<td>비밀번호 확인</td>
					<td><input type="password" name="repw"></td>
				</tr>
				<tr>
					<td>이름</td>
					<td><input type="text" name="name" value="${userName }"></td>
				</tr>
				<tr>
					<td>연락처</td>
					<td><input type="text" name="tel" value="${userTel }"></td>
				</tr>
				<tr>
					<td>이메일</td>
					<td><input type="text" name="email" value="${userEmail }"></td>
				</tr>
				<tr>
					<td>주소</td>
					<td><input type="text" name="address" value="${userAddress }"></td>
				</tr>

				<tr>
					<td colspan="2" align="center"><input type="submit"
						value="수정하기"><input type="reset" value="다시작성"></td>
				</tr>
			</table>

		</form>
	</center>

</body>
</html>
<%@ include file="footermember.jsp"%>