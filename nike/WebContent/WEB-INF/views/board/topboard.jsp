<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>게시글 목록</title>

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
        $("#btnWrite").on("click",function(){
            // 페이지 주소 변경(이동)
            location.href = "${path}/nike/board/write.do";
           
        });
    }); 
     function list(page){
         location.href="${path}/nike/board/list.do?curPage="+page+"&searchOption-${map.searchOption}"+"&keyword=${map.keyword}";
     }
   
     /* writeForm Script */
       $(document).ready(function(){
        $("#btnSave").click(function(){
            //var title = document.form1.title.value; ==> name속성으로 처리할 경우
            //var content = document.form1.content.value;
            //var writer = document.form1.writer.value;
            var title = $("#title").val();
            var content = $("#content").val();
            //var writer = $("#writer").val();
            if(title == ""){
                alert("제목을 입력하세요");
                document.form1.title.focus();
                return;
            }
            if(content == ""){
                alert("내용을 입력하세요");
                document.form1.content.focus();
                return;
            }
            /* if(writer == ""){
                alert("이름을 입력하세요");
                document.form1.writer.focus();
                return;
            } */
            // 폼에 입력한 데이터를 서버로 전송
            document.form1.submit();
        });
    });
     /* view */
       $(document).ready(function(){
           $("#btnDelete").click(function(){
               if(confirm("삭제하시겠습니까?")){
                   document.form1.action = "${path}/board/delete.do";
                   document.form1.submit();
               }
           });
           
           $("#btnUpdete").click(function(){
               //var title = document.form1.title.value; ==> name속성으로 처리할 경우
               //var content = document.form1.content.value;
               //var writer = document.form1.writer.value;
               var title = $("#title").val();
               var content = $("#content").val();
               //var writer = $("#writer").val();
               if(title == ""){
                   alert("제목을 입력하세요");
                   document.form1.title.focus();
                   return;
               }
               if(content == ""){
                   alert("내용을 입력하세요");
                   document.form1.content.focus();
                   return;
               }
               /* if(writer == ""){
                   alert("이름을 입력하세요");
                   document.form1.writer.focus();
                   return;
               } */
               document.form1.action="${path}/board/update.do"
               // 폼에 입력한 데이터를 서버로 전송
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
<c:choose>
<c:when test="${empty userId}">
    <ul id="topMenu">
        <li><a href="../member/login.do">로그인</a></li>
        <li><a href="../member/joining">회원가입</a></li>

        <li><a href="#">고객센터</a></li>
        <li><a href="#"><img src="../images/shop_icon.png" alt="장바구니"></a></li>
    </ul>
</c:when>
<c:otherwise>
    <ul id="topMenu">
        <li id="login_info">${sessionScope.userId}님 환영합니다.</li>
        <li><a href="../logout.do">로그아웃</a></li>
        
        <li><a href="#">고객센터</a></li>
        <li><a href="#"><img src="../images/shop_icon.png" alt="장바구니"></a></li>
    </ul>
</c:otherwise>
</c:choose>
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