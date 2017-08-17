<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ include file="top.jsp" %>

<!DOCTYPE html>
<html lang="ko">

<!--*  2. visual  *-->
<div id="wrap"> 
<div id="visual"> 
    <div class="mainBanner">
        <li><a href="#"><img src="images/mainBanner_01.jpg" alt="���ι��1"></a></li>
        <div class="mainBar">
            <p>누구도 예상치 못한 주인공,  JUST DO IT</p>
            <div class="button"></div>
            <div class="go"><a href="#"><img src="images/bar_button.png" alt="메인배너1"></a></div>
        </div>
    </div>
    <div class="Sbanner">
        <ul id="s_u">
            <li><a href="#"><img src="images/sBanner_01.jpg" alt="rise above">
            <p>자세히보기</p>
            </a></li>
            <li class="sb2"><a href="#"><img src="images/sBanner_02.jpg" alt="jordan breackfast club">
            <p>자세히보기</p>
            </a></li>
        </ul>
        <div class="sb3"><p><img src="images/CR7.jpg" alt="ixCR7"><span><a href="#">자세히 보기</a></span></p></div>
    </div>
</div>
<!--*  3. container  *-->
<div id="container">
    <div class="CT1">
     <p class="styleTT"><img src="images/styleGuide_tt.png" alt=""></p>
<div class="slider1">
    <div class="slider"><img src="images/downJacketAD.jpg"  alt="다운재킷"></div>
    <div class="slider"><a href="#"><img src="images/downJacket01.jpg" alt=""></a></div>
    <div class="slider"><a href="#"><img src="images/downJacket02.jpg"  alt=""></a></div>
    <div class="slider"><img src="images/downJacketEND.jpg"  alt=""></div>
    <div class="slider"><img src="images/trainingAD.jpg" alt="트레이닝"></div>
    <div class="slider"><a href="#"><img src="images/training01.jpg"  alt=""></a></div>
     <div class="slider"><a href="#"><img src="images/training02.jpg"  alt=""></a></div>
    <div class="slider"><img src="images/trainingEND.jpg"  alt=""></div>
</div>
</div>
<!--신상품-->
<div class="CT2">
<p class="styleTT"><img src="images/newArrival_tt.png" alt=""></p>
<div id="mi-slider" class="mi-slider">
					<ul>
						<li><a href="#"><img src="images/shoes01.jpg" alt="img01"><h4>에어 모어 업템포</h4></a></li>
						<li><a href="#"><img src="images/shoes02.jpg" alt="img02"><h4>조던 슈퍼.플라이 5</h4></a></li>
						<li><a href="#"><img src="images/shoes03.jpg" alt="img03"><h4>카이리 2</h4></a></li>
						<li><a href="#"><img src="images/shoes04.jpg" alt="img04"><h4>루나 볼리스텍 1.5</h4></a></li>
					</ul>
					<ul>
						<li><a href="#"><img src="images/clothes01.jpg" alt="img05"><h4>스커트</h4></a></li>
						<li><a href="#"><img src="images/clothes02.jpg" alt="img06"><h4>팬츠</h4></a></li>
						<li><a href="#"><img src="images/clothes03.jpg" alt="img07"><h4>후디</h4></a></li>
						<li><a href="#"><img src="images/clothes04.jpg" alt="img08"><h4>재킷</h4></a></li>
					</ul>
					<ul>
						<li><a href="#"><img src="images/acc01.jpg" alt="img09"><h4>글로브</h4></a></li>
						<li><a href="#"><img src="images/acc02.jpg" alt="img10"><h4>가방</h4></a></li>
						<li><a href="#"><img src="images/acc03.jpg" alt="img10"><h4>모자</h4></a></li>
						<li><a href="#"><img src="images/acc04.jpg" alt="img11"><h4>헤드밴드</h4></a></li>
					</ul>
					<ul>
						<li><a href="#"><img src="images/sport01.jpg" alt="img12"><h4>푸쉬-업 그립 2.0</h4></a></li>
						<li><a href="#"><img src="images/sport02.jpg" alt="img13"><h4>레지스턴스 밴드</h4></a></li>
						<li><a href="#"><img src="images/sport03.jpg" alt="img14"><h4>스트라이크 리그 라운드볼</h4></a></li>
						<li><a href="#"><img src="images/sport04.jpg" alt="img15"><h4>조던 미니볼</h4></a></li>
					</ul>
					<nav>
						<a href="#">SHOSE</a>
						<a href="#">CLOTHES</a>
						<a href="#">ACC</a>
						<a href="#">SPORTS</a>
					</nav>
				</div>
			</div>
<!--bottom-->
<div class="bottom">
    <div class="serviceCenter">
        <p class="title"><img src="images/serviceCenter_tt.png" alt="서비스센터"></p>
        <div class="text">직접 입어보고 신어본 후 결정하세요! <br> <span class="red">전 제품 교환/반품 무료 배송 서비스</span></div>
        <div class="serviceBtn"><a href="#">서비스 바로가기</a></div>
    </div>
    <div class="lotation">
        <p><a href="#"></a></p>
        <span>매장위치</span>
        <form action="">
        <input type="search" size="21" placeholder="나이키 매장을 찾아보세요.">
        <button>go</button>
        </form>
    </div>
    <div class="sns">
        <p class="title"><img src="images/sns_tt.png" alt="sns"></p>
        <ul>
            <li class="sns1"><a href="#"></a></li>
            <li class="sns2"><a href="#"></a></li>
            <li class="sns3"><a href="#"></a></li>
            <li class="sns4"><a href="#"></a></li>
        </ul>
    </div>
</div>
</div>
</div>
<!--/container 끝-->
<%@ include file="footer.jsp" %>
