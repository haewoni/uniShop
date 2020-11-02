<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
					<form name="f" method="POST" action="jumun_payment_action">

						<table border="0" cellpadding="0" cellspacing="1" width="590"
							bgcolor="BBBBBB">

				
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