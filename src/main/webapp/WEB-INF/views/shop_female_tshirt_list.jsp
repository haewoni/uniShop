<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	여성 티셔츠 리스트<hr>
	<a href="shop_product_detail?product_no=${productList[1].product_no}">${productList[1].product_no} : 상품 상세보기</a><hr>
	${productList}
</body>
</html>