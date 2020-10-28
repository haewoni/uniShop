<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
   function login() {
		document.f.action='main';
		
		document.f.submit();
	   } 
</script>
</head>
<body>
	<form name="f" action="member_login_action" method="POST">
		<input type="text" name="id">
		<input type="text" name="password">
		<input type="submit">
	</form>
</body>
</html>