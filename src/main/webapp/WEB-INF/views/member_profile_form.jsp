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
	회원 정보 수정
	<form name="f" action="member_profile_update_action" method="POST">
		<input type="text" name="loginMember" value="${loginMember.member_id}" >
		<input type="text" name="member_name" value="${loginMember.member_name}">
		<input type="text" name="member_password" value="${loginMember.member_password}">
		<input type="text" name="member_confirm_password" value="비밀번호 재확인">
		<input type="text" name="member_email" value="${loginMember.member_email}">
		<input type="text" name="member_phone" value="${loginMember.member_phone}">
		<input type="submit">
	</form>
</body>
</html>