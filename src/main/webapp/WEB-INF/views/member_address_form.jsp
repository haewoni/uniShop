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
	회원 주소 수정
	<form name="f" action="member_profile_update_action" method="POST">
		<input type="text" name="member_address_name" value="${loginMember.member_address_name}">
		<input type="text" name="member_address_country" value="${loginMember.member_address_country}">
		<input type="text" name="member_address_city" value="${loginMember.member_address_city}">
		<input type="text" name="member_address_zipcode" value="${loginMember.member_address_zipcode}">
		<input type="text" name="member_address1" value="${loginMember.member_address1}">
		<input type="text" name="member_address2" value="${loginMember.member_address2}">
		<input type="submit">
	</form>
</body>
</html>