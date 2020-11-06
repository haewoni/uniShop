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
	<jsp:include page="include_common_top.jsp"/>
	샵 메인
	<hr>
	<input type="button" value="Back to Main" class=TXTFLD onclick="location.href = 'unishop_main'" >
	<hr>
	<div>
		<a href="shop_male_outer_list">남성 아우터</a>
		<a href="shop_male_cardigan_list">남성 가디건</a>
		<a href="shop_male_tshirt_list">남성 티셔츠</a>
		<a href="shop_male_longpants_list">남성 긴바지</a>
		<a href="shop_male_shortpants_list">남성 반바지</a>
		<br><br>
		<a href="shop_female_outer_list">여성 아우터</a>
		<a href="shop_female_cardigan_list">여성 가디건</a>
		<a href="shop_female_tshirt_list">여성 티셔츠</a>
		<a href="shop_female_longpants_list">여성 긴바지</a>
		<a href="shop_female_skirt_list">여성 스커트</a>
	</div>
	<hr>
	랜덤으로 제품 30개 게시<hr>
	<c:forEach  items="${productList}" 
				var="product"  
				begin="0"  
				step="1" 
				end="${productList.size()}"
				varStatus="status">
		<li><a href="shop_product_detail?product_no=${product.product_no}">
		<img src=IMAGE/${product.product_image_1} width=100, height=100><br>${product.product_name}</a></li>
	</c:forEach>
	
</body>
</html>