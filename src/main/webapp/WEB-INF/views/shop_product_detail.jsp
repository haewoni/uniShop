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
	제품 디테일<hr>
	<a href="shop_product_review_list?product_no=${product.product_no}">해당 상품 리뷰 리스트</a>
	<hr>
		<form method="post" action="shop_add_cart_action">
			Quantity :
			<select name="cart_qty">
				<option value="1" selected="selected">1</option>
				<option value="2">2</option>
				<option value="3">3</option>
				<option value="4">4</option>
				<option value="5">5</option>
				<option value="6">6</option>
				<option value="7">7</option>
				<option value="8">8</option>
				<option value="9">9</option>
				<option value="10">10</option>
			</select>
			<br />
			Size : 		
			<select name="cart_product_size">
			    <option value="S">S</option>
			    <option value="M" selected="selected">M</option>
			    <option value="L">L</option>
			</select>
			
	<br>
			<input type=submit value="ADD TO CART" class=TXTFLD onclick="javascript:alert('카트 추가 완료');" >
			<input type="hidden" name=product_no value="${product.product_no}">
		</form>
		<form method="post" action="shop_add_cart_action">
		<input type=submit value="ADD TO WISHLIST" class=TXTFLD onclick="javascript:alert('위시리스트 추가 완료');" >
		<input type="hidden" name=product_no value="${product.product_no}">
		</form>
	<hr>
	<br />
	<p>제품명 : ${product.product_name}</p>
	<p>제품번호 : ${product.product_no}</p>
		
	<p>제품 설명 : ${product.product_desc}</p>
	<p>제품 가격 : ${product.product_price}</p>
	<p><img src=IMAGE/${product.product_image_1} width=300, height=300></p>
	<p><img src=IMAGE/${product.product_image_2} width=300, height=300></p>
	<p><img src=IMAGE/${product.product_image_3} width=300, height=300></p>
	<p><img src=IMAGE/${product.product_image_4} width=300, height=300></p>
	<p><img src=IMAGE/${product.product_image_5} width=300, height=300></p>
	<hr>
	추천상품
	<hr>
	<c:forEach  items="${recommendedProductList}" 
				var="product"  
				begin="0"  
				step="1" 
				end="${recommendedProductList.size()}"
				varStatus="status">
		<li><a href="shop_product_detail?product_no=${product.product_no}">
		<img src=IMAGE/${product.product_image_1} width=100, height=100><br>${product.product_name}</a></li>
	</c:forEach>
	</body>
</html>