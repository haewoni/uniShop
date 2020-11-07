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
	QnA 목록
	<form name="f" method="POST">
		<c:forEach items="${questionList}" var="question" begin="0" step="1" end="${questionList.size()}">
			질문 번호<c:out value="${question.question_no}"/>
			질문 타이틀<c:out value="${question.question_title}"/>
			질문 상태<c:out value="${question.question_status}"/>
			<a href="member_question_detail?question_no=${question.question_no}">QnA 디테일 보기</a><br/>
		</c:forEach>
	
	<a href="member_question_form">QnA 등록</a><br>
	</form>
</body>
</html>