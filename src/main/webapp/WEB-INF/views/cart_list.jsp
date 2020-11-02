<%@page import="org.apache.ibatis.reflection.SystemMetaObject"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@page import="java.text.DecimalFormat"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<div class="cart_list">

		<h1>카트 - 리스트</h1><hr>
		<% 
			DecimalFormat df = new DecimalFormat("#,##0");
			//decimalFormat.applyPattern("#,##0");
		%>
		
		<c:set var = "sum" value = "0" />

			<c:forEach  items="${cartList}" 
						var="cart"  
						begin="0"  
						step="1" 
						end="${cartList.size()}"
						varStatus="status">
				<li>카트 순번 : ${cart.cart_no}</li>
				<li>제품 번호 : ${cart.product_no}</li>
				<li><a href="shop_single.jsp?product_no=${cart.product_no}">
				<img src=IMAGE/${cart.product_image_1} width=100, height=100><br>${cart.product_name}</a></li>
				<li>사이즈 : ${cart.cart_product_size}</li>
				<li>수량 : ${cart.cart_qty}</li>
				<li>금액 : ${cart.cart_tot_price}</li>
				<p>
				
				<c:set var= "sum" value="${sum + cart.cart_tot_price}"/>

			</c:forEach>
				
				<li>총금액_sum : ${sum}</li>

	</div>
</body>
</html>