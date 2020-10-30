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
	해당 제품 리뷰 리스트<hr>
	<c:forEach  items="${reviewList}" 
				var="review"  
				begin="0"  
				step="1" 
				end="${reviewList.size()}"
				varStatus="status">
		<li>${reivew.review_no}</li>
		<li>${reivew.review_name}</li>
		<li>${reivew.review_email}</li>
		<li>${reivew.review_title}</li>
		<li>${reivew.review_rating}</li>
		<li>${reivew.review_content}</li>
		<li>${reivew.member_id}</li>
		<li>${reivew.product_no}</li>
	</c:forEach>
</body>
</html>