<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%> 
<%@ include file="topboard.jsp" %>
<% request.setCharacterEncoding("utf-8");%>
<!DOCTYPE html>
<html>

<h2>게시글 보기</h2>
<div id="ct">
<form name="form1" method="post">
   <table border='1'>
    <tr>
    <td><label for="">게시글 번호</label></td>
   	<td>${dto.bno}</td>
    </tr>
    <tr>
    <td><label for="">작성일자 :</label></td><td><fmt:formatDate value="${dto.regdate}" pattern="yyyy-MM-dd a HH:mm:ss"/></td>
   	</tr>
   	<tr><td><label for="">조회수 :</label></td><td>${dto.viewcnt}</td>	</tr>
   	<tr><td><label for="">제목:</label></td><td>${dto.title}</td>	</tr>
   	<tr><td><label for="">내용:</label></td><td>${dto.content}</td></tr>
   	<tr><td><label for="">작성자:</label></td><td>${dto.writer}</td></tr>

   </table>
</form>
<div>
<c:choose>
	<c:when test="${sessionScope.userId == dto.writer}">
	<input type="button" value="수정" id="update"/>
    <input type="button" value="삭제" id="delete"/>
    </c:when>
	<c:otherwise>
	</c:otherwise>
</c:choose>

</div>
</div>
<%@ include file="footerboard.jsp"%>
