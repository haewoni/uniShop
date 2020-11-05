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
	주문 목록
	<form name="f" method="POST">
		<c:forEach items="${jumunList}" var="jumun" begin="0" step="1" end="${jumunList.size()}">
			주문 번호<c:out value="${jumun.jumun_no}"/>
			주문 날짜<c:out value="${jumun.jumun_date}"/>
			주문 상태<c:out value="${jumun.jumun_status}"/>
			<a href="member_jumun_detail?jumun_no=${jumun.jumun_no}">주문 디테일 보기</a><br/>
		</c:forEach>
	</form>
</body>
</html>