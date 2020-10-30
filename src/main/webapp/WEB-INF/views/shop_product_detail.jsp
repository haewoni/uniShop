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
	<a href="shop_product_review_list?product_no=${product.product_no}">해당 상품 리뷰 리스트</a><hr>
	<p>${product.product_no}</p>
	<p>${product.product_name}</p>
	<p>${product.product_desc}</p>
	<p>${product.product_price}</p>
	<p><img src=IMAGE/${product.product_image_1} width=300, height=300></p>
	<p><img src=IMAGE/${product.product_image_2} width=300, height=300></p>
	<p><img src=IMAGE/${product.product_image_3} width=300, height=300></p>
	<p><img src=IMAGE/${product.product_image_4} width=300, height=300></p>
	<p><img src=IMAGE/${product.product_image_5} width=300, height=300></p>
	</body>
</html>