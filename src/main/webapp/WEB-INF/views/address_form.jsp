<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Checkout</title>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script type="text/javascript">
</script>
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
						<td bgcolor="f4f4f4" height="22">&nbsp;&nbsp;<b>
								address</b></td>
					</tr>
				</table> <!-- address write form  -->
				<form name="f" method="post">
					<table border="0" cellpadding="0" cellspacing="1" width="590"
						bgcolor="BBBBBB">
						<tr>
							<td width=100 align=center bgcolor="E6ECDE" height="22">주소이름</td>
							<td width=490 align="left" bgcolor="ffffff"
								style="padding-left: 10px"><input type="text"
								style="width: 150" name="member_address_name"></td>
						</tr>
						<tr>
							<td width=100 align=center bgcolor="E6ECDE" height="22">이름</td>
							<td width=490 align="left" bgcolor="ffffff"
								style="padding-left: 10px"><input type="text"
								style="width: 150" name="member_name"></td>
						</tr>
						<tr>
								<td width=100 align=center bgcolor="E6ECDE" height="22">이메일
								</td>
								<td width=490 align="left" bgcolor="ffffff"
								style="padding-left: 10px"><input type="text"
								style="width: 150" name="member_email"></td>
						</tr>
						<tr>
							<td width=100 align=center bgcolor="E6ECDE" height="22">국가</td>
							<td width=490 align="left" bgcolor="ffffff"
								style="padding-left: 10px"><input type="text"
								style="width: 240" name="member_address_country"></td>
			
						</tr>
						<tr>
							<td width=100 align=center bgcolor="E6ECDE" height="22">도시</td>
							<td width=490 align="left" bgcolor="ffffff"
								style="padding-left: 10px"><input type="text"
								style="width: 240" name="member_address_city"></td>
			
						</tr>
						<tr>
							<td width=100 align=center bgcolor="E6ECDE" height="22">우편번호</td>
							<td width=490 align="left" bgcolor="ffffff"
								style="padding-left: 10px"><input type="text"
								style="width: 240" name="member_address_zipcode"></td>
			
						</tr><tr>
							<td width=100 align=center bgcolor="E6ECDE" height="22">주소1</td>
							<td width=490 align="left" bgcolor="ffffff"
								style="padding-left: 10px"><input type="text"
								style="width: 240" name="member_address1"></td>
			
						</tr><tr>
							<td width=100 align=center bgcolor="E6ECDE" height="22">주소2</td>
							<td width=490 align="left" bgcolor="ffffff"
								style="padding-left: 10px"><input type="text"
								style="width: 240" name="member_address2"></td>
			
						
					</table>
				</form> <br />
				<table width=590 border=0 cellpadding=0 cellspacing=0>
					<tr>
						<td align=center>
						<input type="button" value="다음(배송)" onclick="delivery()"> 
					</tr>
				</table>
			</td>
		</tr>
	</table>
</div>

		
	
	<!--container end-->
</body>
</html>
