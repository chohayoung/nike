<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ include file="topboard.jsp" %>
<% request.setCharacterEncoding("utf-8");%>
<!DOCTYPE html>
<html>

<div id="ct">
<h2>게시글 작성</h2>
<form name="form1" method="post" action="${path}/nike/board/insert.do">
    <div>
        제목
        <input name="title" id="title" size="80" placeholder="제목을 입력해주세요">
    </div>
    <div>
        내용
        <textarea name="content" id="content" rows="4" cols="80" placeholder="내용을 입력해주세요"></textarea>
    </div>
     <div>
        이름
        <input name="writer" id="writer" placeholder="이름을 입력해주세요" value="${sessionScope.userId}"/>
    </div>
    <div style="width:650px; text-align: center;">
        <button type="button" id="btnSave">확인</button>
        <button type="reset">취소</button>
    </div>
</form>
</div>
<%@ include file="footerboard.jsp"%>
