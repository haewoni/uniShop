<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form>
		<input type="text" name="question_no" value="${question.question_no}">
		<input type="text" name="question_date" value="${question.question_date}">
		<input type="text" name="question_category" value="${question.question_category}">
		<input type="text" name="question_status" value="${question.question_status}">
		<input type="text" name="question_content" value="${question.question_content}">
	</form>
</body>
</html>