<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	Question Detail<hr>
		질문 번호<c:out value="${question.question_no}"/>
		질문 타이틀<c:out value="${question.question_title}"/>
		질문 내용<c:out value="${question.question_content}"/><br/>
</body>
</html>