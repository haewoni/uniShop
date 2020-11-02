<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Checkout</title>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
</head>
<body bgcolor=#FFFFFF text=#000000 leftmargin=0 topmargin=0
	marginwidth=0 marginheight=0>
<div id="content">
	<table width=0 border=0 cellpadding=0 cellspacing=0>
		<tr>
			<td>
				<!--contents--> <br />
				<table style="padding-left: 10px" border=0 cellpadding=0
					cellspacing=0>
					<tr>
						<td bgcolor="f4f4f4" height="22">&nbsp;&nbsp;<b>payment </b></td>
					</tr>
				</table> <!-- payment write form  -->
				<form name="f" method="post" action="jumun_payment_action">
				<!-- 
					<input type="hidden" name="member_id"  />
					 -->
					<table border="0" cellpadding="0" cellspacing="1" width="590"
						bgcolor="BBBBBB">
=======
	pageEncoding="UTF-8"%>
					<form name="f" method="POST" action="jumun_payment_action">

						<table border="0" cellpadding="0" cellspacing="1" width="590"
							bgcolor="BBBBBB">

				
>>>>>>> refs/heads/cjy
						<tr>
							<td width=100 align=center bgcolor="E6ECDE" height="22">카드 번호</td>
							<td width=490 align="left" bgcolor="ffffff"
								style="padding-left: 10px"><input type="text"
								style="width: 150" name="card_no"></td>
						</tr>
						<tr>
							<td width=100 align=center bgcolor="E6ECDE" height="22">카드 만료날짜</td>
							<td width=490 align="left" bgcolor="ffffff"
								style="padding-left: 10px"><input type="text"
								style="width: 150" name="card_expire_date"></td>
						</tr>
						<tr>
								<td width=100 align=center bgcolor="E6ECDE" height="22">카드 cvc번호</td>
								<td width=490 align="left" bgcolor="ffffff"
								style="padding-left: 10px"><input type="text"
								style="width: 150" name="card_cvc"></td>
						</tr>
						<tr>
							<td width=100 align=center bgcolor="E6ECDE" height="22">카드 소유자 이름</td>
							<td width=490 align="left" bgcolor="ffffff"
								style="padding-left: 10px"><input type="text"
								style="width: 240" name="card_member_name"></td>
			
						</tr>
						<tr>
							<td width=100 align=center bgcolor="E6ECDE" height="22">멤버 아이디</td>
							<td width=490 align="left" bgcolor="ffffff"
								style="padding-left: 10px"><input type="text"
								style="width: 240" name="member_id"></td>
			
						</tr>
						
			
						
					</table>
						<input type="submit">
					</form> <br />


	<!--container end-->
</body>
</html>