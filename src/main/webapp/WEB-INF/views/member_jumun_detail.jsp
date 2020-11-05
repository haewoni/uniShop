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
	<c:forEach items="${jumunList}" var="jumun"  >
			주문 번호<c:out value="${jumun.jumun_no}"/>
			주문 날짜<c:out value="${jumun.jumun_date}"/>
			주문 상태<c:out value="${jumun.jumun_status}"/><br/>
		<c:forEach items="${jumun.jumun_DetailList}" var="jumun_Detail">
			상품 이름 ${jumun_Detail.jumun_d_product_name}
			상품 가격 ${jumun_Detail.jumun_d_product_price}
			상품 사이즈${jumun_Detail.jumun_d_product_size}<br/>			
		</c:forEach>	
	</c:forEach>
</body>
</html>