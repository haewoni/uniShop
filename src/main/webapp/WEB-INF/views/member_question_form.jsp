<%@page import="com.itwill.unishop.domain.Member"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

</head>
<body>	
	QnA 등록
	<form name="f" action="member_question_action" method="POST">
		<input type="text" name="member_id" value="${sMemberId}">
		<input type="text" name="question_no" value="1" disabled="disabled">
		제목<input type="text" name="question_title">
		카테고리<input type="text" name="question_category">
		날짜<input type="text" name="question_date" value="sysdate">
		상태<input type="text" name="question_status">
		내용<input type="text" name="question_content">
		<input type="submit">
	</form>
</body>
</html>