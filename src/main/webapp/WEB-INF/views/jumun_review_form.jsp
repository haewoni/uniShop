<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Checkout</title>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script type="text/javascript">
	function delivery(){
		document.f.action='complete_form';
		document.f.submit();
		}
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
								review</b></td>
					</tr>
				</table> <!-- rewiew write form  -->
				<form name="f" method="post">
					<table border="0" cellpadding="0" cellspacing="1" width="590"
						bgcolor="BBBBBB">
						<tr>
						<td align=right>
						<input type="button" value="수정하기" onclick=""> 
					</tr>
						<tr>
							<td width=100 align=center bgcolor="E6ECDE" height="22">주문내역1</td>
							<td width=490 align="left" bgcolor="ffffff"
								style="padding-left: 10px"><input type="text"
								style="width: 150" name="member_address_name"></td>
						</tr>
						<tr>
							<td width=100 align=center bgcolor="E6ECDE" height="22">주문내역2</td>
							<td width=490 align="left" bgcolor="ffffff"
								style="padding-left: 10px"><input type="text"
								style="width: 150" name="member_address_name"></td>
						</tr>
						<tr>
							<td width=100 align=center bgcolor="E6ECDE" height="22">주문내역3</td>
							<td width=490 align="left" bgcolor="ffffff"
								style="padding-left: 10px"><input type="text"
								style="width: 150" name="member_address_name"></td>
						</tr>
						
					</table>
				</form> <br />
				<table width=590 border=0 cellpadding=0 cellspacing=0>
					<tr>
						<td align=center>
						<input type="button" value="주문완료" onclick="delivery()"> 
					</tr>
				</table>
			</td>
		</tr>
	</table>
</div>

		
	
	<!--container end-->
</body>
</html>
