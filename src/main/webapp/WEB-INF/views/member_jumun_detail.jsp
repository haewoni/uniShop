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
	<c:forEach items="${jumunList}" var="jumun" begin="0" step="1" end="${jumunList.size()}">
			주문 번호<c:out value="${jumun.jumun_no}"/>
			주문 날짜<c:out value="${jumun.jumun_date}"/>
			주문 상태<c:out value="${jumun.jumun_status}"/>
			상품 번호<c:out value="${jumun.jumun_d_product_no}"/>
			상품 이름<c:out value="${jumun.jumun_d_product_name}"/>
			상품 가격<c:out value="${jumun.jumun_d_product_price}"/>
	</c:forEach>
</body>
</html>