<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<form name="f" method="POST" action="jumun_address_action">

	<table border="0" cellpadding="0" cellspacing="1" width="590"
		bgcolor="BBBBBB">


		<tr>
			<td width=100 align=center bgcolor="E6ECDE" height="22">이름</td>
			<td width=490 align="left" bgcolor="ffffff"
				style="padding-left: 10px"><input type="text"
				style="width: 150" name="member_name" value="${loginMember.member_name}"></td>
		</tr>
		<tr>
			<td width=100 align=center bgcolor="E6ECDE" height="22">전화번호</td>
			<td width=490 align="left" bgcolor="ffffff"
				style="padding-left: 10px"><input type="text"
				style="width: 150" name="member_phone" value="${loginMember.member_phone}"></td>
		</tr>


		<tr>
			<td width=100 align=center bgcolor="E6ECDE" height="22">주소이름</td>
			<td width=490 align="left" bgcolor="ffffff"
				style="padding-left: 10px"><input type="text"
				style="width: 150" name="member_address_name" value="${loginMember.member_address_name}"></td>
		</tr>

		<tr>
			<td width=100 align=center bgcolor="E6ECDE" height="22">국가</td>
			<td width=490 align="left" bgcolor="ffffff"
				style="padding-left: 10px"><input type="text"
				style="width: 240" name="member_address_country"value="${loginMember.member_address_country}"></td>

		</tr>
		<tr>
			<td width=100 align=center bgcolor="E6ECDE" height="22">도시</td>
			<td width=490 align="left" bgcolor="ffffff"
				style="padding-left: 10px"><input type="text"
				style="width: 240" name="member_address_city" value="${loginMember.member_address_city}"></td>

		</tr>
		<tr>
			<td width=100 align=center bgcolor="E6ECDE" height="22">우편번호</td>
			<td width=490 align="left" bgcolor="ffffff"
				style="padding-left: 10px"><input type="text"
				style="width: 240" name="member_address_zipcode" value="${loginMember.member_address_zipcode}"></td>

		</tr>
		<tr>
			<td width=100 align=center bgcolor="E6ECDE" height="22">주소1</td>
			<td width=490 align="left" bgcolor="ffffff"
				style="padding-left: 10px"><input type="text"
				style="width: 240" name="member_address1" value="${loginMember.member_address1}"></td>

		</tr>
		<tr>
			<td width=100 align=center bgcolor="E6ECDE" height="22">주소2</td>
			<td width=490 align="left" bgcolor="ffffff"
				style="padding-left: 10px"><input type="text"
				style="width: 240" name="member_address2" value="${loginMember.member_address2}"></td>
	</table>
	<input type="submit">
</form>

<form action="jumun_address_form" method="get">
	cart subtotal: <input type="text" name="subtotal" value="${cart_subtotal}"><br>
	shipping: <input type="text" name="delivery_fee"><br>
	total: <input type="text" name="total_fee" value="${cart_subtotal}"><br>
</form>
<br />


<!--container end-->
</body>
</html>
