<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form name="f" method="POST">
		<a href="member_question_detail_form?member_id=${sMemberId}">${question.question_title}</a>
		<input type="text" name="question_date" value="${question.question_date}">
		<input type="text" name="question_status" value="${question.question_status}">
	</form>
</body>
</html>