<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	WishList<hr>
	<c:forEach  items="${wishList}" 
				var="wishList"  
				begin="0"  
				step="1" 
				end="${wishList.size()}">
			<a href="shop_product_detail?product_no='${wishList.product_no}'">상품 번호</a><c:out value="${wishList.product_no}"/>
			상품 이름<c:out value="${wishList.product.product_name}"/>
			찜 번호<c:out value="${wishList.wish_no}"/><br/>
		</c:forEach>		

</body>
</html>