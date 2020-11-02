<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
			<form name="f" method="POST" action="jumun_review_action">
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
								style="width: 150" name="member_address_name"
								value="${sMemberId.review_no}"></td>
						</tr>
						<tr>
							<td width=100 align=center bgcolor="E6ECDE" height="22">주문내역2</td>
							<td width=490 align="left" bgcolor="ffffff"
								style="padding-left: 10px"><input type="text"
								style="width: 150" name="member_address_name"
								value="${sMemberId.review_no}"></td>
						</tr>
						<tr>
							<td width=100 align=center bgcolor="E6ECDE" height="22">주문내역3</td>
							<td width=490 align="left" bgcolor="ffffff"
								style="padding-left: 10px"><input type="text"
								style="width: 150" name="member_address_name"
								value="${sMemberId.review_no}"></td>
						</tr>
						
					</table>
						<input type="submit">
					</form> <br />


	<!--container end-->
</body>
</html>
