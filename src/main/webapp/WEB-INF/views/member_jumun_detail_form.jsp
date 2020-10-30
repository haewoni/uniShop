<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form name="f" method="POST">
		<input type="text" name="jumun_d_no" value="${jumun_detail.jumun_d_no}">
		<input type="text" name="jumun_d_product_name" value="${jumun_detail.jumun_d_product_name}">
		<input type="text" name="jumun_d_product_size" value="${jumun_detail.jumun_d_product_size}">
		<input type="text" name="jumun_d_product_price" value="${jumun_detail.jumun_d_product_price}">
		<input type="text" name="jumun_d_product_qty" value="${jumun_detail.jumun_d_product_qty}">
	</form>
</body>
</html>