<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 
<%request.setCharacterEncoding("UTF-8"); %>
<%@ include file="topmember.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
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
<div id="loginCT">
   <div class="login_div">
    <form name="form1" method="post">
        <table width="360px">
            <tr>
                <td>아이디</td>
                <td><input name="userId" id="userId"></td>
            </tr>
            <tr>
                <td>비밀번호</td>
                <td><input type="password" name="userPw" id="userPw"></td>
            </tr>
            <tr>
        
                 <td  colspan="2" align="center">
                      <c:if test="${msg == 'failure'}">
                    <p style="color: red;margin-top:10px;">
                        아이디 또는 비밀번호가 일치하지 않습니다.
                    </p>
                </c:if>
                <c:if test="${msg == 'logout'}">
                    <p style="color: red;margin-top:10px;">
                        로그아웃되었습니다.
                    </p>
                </c:if>
                 <a id="btnSpace" href="joining">아직 NIKE 회원이 아니세요?</a>
                    <button type="button" id="btnLogin">로그인</button>
                </td>
            </tr>
            
        </table>
        
    </form>
    </div>
</div>  
    
<%@ include file="footermember.jsp"%>