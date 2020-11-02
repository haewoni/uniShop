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
	<form name="f" action="member_update_action" method="POST">
	
		<input type="text" name="sMemberId" >
		
		<input type="text" name="member_name" value="${loginMember.member_name}">
		<input type="text" name="member_password" value="${loginMember.member_password}">
		<input type="text" name="member_confirm_password" value="비밀번호 재확인">
		<input type="text" name="member_email" value="${loginMember.member_email}">
		<input type="text" name="member_phone" value="${loginMember.member_phone}">
		<input type="submit">
		
		<input type="text" name="member_address1" value="${loginMember.member_address1}">
		<input type="text" name="member_address2" value="${loginMember.member_address2}">
		<input type="text" name="member_address_city" value="${loginMember.member_address_city}">
		<input type="text" name="member_address_country" value="${loginMember.member_address_country}">
		<input type="text" name="member_address_name" value="${loginMember.member_address_name}">
		<input type="text" name="member_address_zipcode" value="${loginMember.member_address_zipcode}">
		<input type="submit">
		
	</form>
	주문 목록
	<form name="f" method="POST">
		<input type="text" name="jumunList" value="${jumunList}">
	</form>
	찜 목록
	<form name="f" method="POST">
		<a href="member_wishlist_detail?member_id=${sMemberId}">찜한 물품 자세히 보기</a>
	</form>
	QnA 목록
	<form name="f" method="POST">
		<input type="text" name="questionList" value="${questionList}">
	</form>
</body>
</html>