<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
   function login() {
		document.f.action='unishop_main';
		alert('짜잔');
		document.f.submit();
	   }
   function register(){
		document.f.action="member_login_register_form";
		alert('회원가입 성공');
		document.f.submit();
	   } 
</script>
</head>
<body>
	<form name="f" action="member_login_action" method="POST">
		<input type="text" name="id">
		<input type="text" name="password">
		<input type="submit" onclick="login()">
		<input type="text" name="id">
		<input type="text" name="password">
		<input type="text" name="name">
		<input type="text" name="email">
		<input type="text" name="phone">
		<input type="text" name="passwordcheck">
		<input type="submit" onclick="register()">
	</form>
</body>
</html>