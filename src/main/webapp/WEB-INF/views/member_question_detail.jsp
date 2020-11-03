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
	<c:forEach  items="${questionList}" var="question"  begin="0"  step="1" end="${questionList.size()}">
			질문 번호<c:out value="${question.question_no}"/>
			질문 타이틀<c:out value="${question.question_title}"/>
			질문 내용<c:out value="${question.question_content}"/><br/>
		</c:forEach>	
</body>
</html>