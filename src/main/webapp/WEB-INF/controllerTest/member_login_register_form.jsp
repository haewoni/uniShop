<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

</head>
<body>
	<form name="f" action="member_login_action" method="POST">
		<input type="text" name="member_id">
		<input type="text" name="member_password">
		<input type="submit">
	</form>
	
	<form name="f" action="member_register_action" method="POST">
		<input type="text" name="member_id">
		<input type="text" name="member_password">
		<input type="text" name="member_name">
		<input type="text" name="member_phone">
		<input type="text" name="member_email">
		<input type="text" name="member_pass">
		<input type="submit">
	</form>
</body>
</html>