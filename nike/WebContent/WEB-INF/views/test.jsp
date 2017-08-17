<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="C"  uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ include file="top.jsp" %>
<link rel="stylesheet" href="css/productlist.css" />
<script src="js/productlist.js"></script>

<!--*side menu*-->
<div id="sidebar">


    <form action="">
    
    <h1 class="men">MEN</h1>
    <div class="checklist categories">
       <ul>
           <li><a href="#">신발</a></li>
            <li><a href="#">의류 전체</a></li>
            <li><a href="#">탑 &amp; 티셔츠</a></li>
            <li><a href="#">숏 팬츠</a></li>
            <li><a href="#">나이키 프로</a></li>
            <li><a href="#">후디 &amp; 크루</a></li>
            <li><a href="#">팬츠 &amp; 타이츠</a></li>
            <li><a href="#">재킷 &amp; 베스트</a></li>
            <li><a href="#">가방</a></li>
            <li><a href="#">양말</a></li>
            <li><a href="#">모자 &amp; 용품</a></li>
        </ul>
    </div>
  
    
    <h3>COLOR</h3>
    <div class="colors">
        <ul>
            <li><input type="checkbox" id="Black"/><label for="Black" >Black</label></li>
            <li><input type="checkbox" id="Red"/><label for="Red" style="color:#ee2929">Red</label></li>
            <li><input type="checkbox" id="Yellow"/><label for="Yellow" style="color:#ffe65b">Yellow</label></li>
            <li><input type="checkbox" id="Green"/><label for="Green" style="color:#8cbf58">Green</label></li>
            <li><input type="checkbox" id="Pink"/><label for="Pink" style="color:#fbd9e7">Pink</label></li>
        </ul>
        
        <ul>
            <li><input type="checkbox" id="White" /><label for="White">White</label></li>
            <li><input type="checkbox" id="Gray"/><label for="Gray" style="color:#aaaaaa">Gray</label></li>
            <li><input type="checkbox" id="Orange"/><label for="Orange" style="color:#f79858">Orange</label></li>
            <li><input type="checkbox" id="Purple"/><label for="Purple" style="color:#a37cce">Purple</label></li>
            <li><input type="checkbox" id="Navy"/><label for="Navy" style="color:#404f7c">Navy</label></li>
        </ul>        
    </div>
    
    <h3>SIZES</h3>
    <div class="size">
       <ul>
           <li><input type="checkbox" id="XS"><label for="XS"> XS</label></li>
           <li><input type="checkbox" id="S"><label for="S"> S</label></li>
           <li><input type="checkbox" id="M"><label for="M"> M</label></li>
        </ul>
        
        <ul>
           <li><input type="checkbox" id="L"><label for="L"> L</label></li>
            <li><input type="checkbox" id="XL"><label for="XL"> XL</label></li>
            <li><input type="checkbox" id="XXL"><label for="XXL"> XXL</label></li>
        </ul>        
    </div>
    
     <h3>PRICE RANGE</h3>
     <input type="range" style="width:200px">
     </form>
</div>

 <div id="product_CT">
     <div id="productCenter">
       <div id="Categoryin">
       <h1>MEN 신상품</h1>
       <C:forEach var='product' items='${list}'>
       <C:set var='i' value='${i+1 }'/>
         <ul>
          <li><a href="${path}/nike/detail?code=${product.code}">
          <img id="_NK31093885_AH3378-104_" src="./resources/images/${product.image}" alt="나이키 시티 포토 티 ‘SEOUL’"></a></li>
           <li class="color">
           <a href="#"><span style="background:#222">1</span></a>
           <a href="#"><span style="background:#ee2929">2</span></a>
           <a href="#"><span style="background:#ffe65b">3</span></a>
           </li>
           <li class="product_name"><a href="#"><c:out value='${product.name}'></c:out></a></li>
           <li><c:out value='${product.category}'></c:out></li>
          <li class="price"><c:out value='${product.price}'></c:out></li>
        </ul>
        </C:forEach>
        </div>
      </div>
</div>

<%@ include file="footer.jsp" %>