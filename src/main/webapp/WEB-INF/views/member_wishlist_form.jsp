<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	찜 목록
	<form name="f" method="POST">
		<input type="text" name="wish_no" value="${wishlist.wish_no}">
		<input type="text" name="product_no" value="${wishlist.product_no}">
	</form>
</body>
</html>