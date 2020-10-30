<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	주문 목록
	<form name="f" method="POST">
		<a href="member_jumun_detail_form?member_id=${sMemberId}">${jumun.jumun_no}</a>
		<input type="text" name="jumun_date" value="${jumun.jumun_date}" readonly="readonly">
		<input type="text" name="jumun_status" value="${jumun.jumun_status}" readonly="readonly">
		<input type="text" name="jumun_tot_price" value="${jumun.jumun_tot_price}" readonly="readonly">
		
	</form>
</body>
</html>