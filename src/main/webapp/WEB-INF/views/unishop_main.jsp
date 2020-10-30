<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div>
		<a href="">${sMemberId}님 로그아웃</a>
		<a href="">${loginMember.member_phone} 님의 핸드폰</a>
		<a href="">${loginMember.member_address2} 주소상세</a>
		<a href="">${sMemberId}님 로그아웃</a>		
		<a href="member_jumun_list_form?member_id=${sMemberId}">주문 목록</a>
		<a href="member_profile_update_form">수정 폼</a>
		<a href="member_wishlist_form?member_id=${sMemberId}">찜 목록</a>
		<a href="member_question_form?member_id=${sMemberId}">QnA 목록</a>		
	</div>
	<div>
		<a href="unishop_main">Main</a>
	</div>
	<a href="maleTopProduct_list">남성 상의</a>
	<a href="maleBottomProduct_list">남성 하의</a>
	<a href="femaleTopProduct_list">여성 상의</a>
	<a href="femaleBottomProduct_list">여성 하의</a>

</body>
</html>