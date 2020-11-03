<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
			<form name="f" method="POST" action="jumun_review_action">
    <table border="0" cellpadding="0" cellspacing="1" width="590"
							bgcolor="BBBBBB">
  				cart subtotal: <input type="text" name="subtotal" value="${cart_tot_price}"><br>
			   shipping: <input type="text" name="delivery_fee" value="${delivery_fee}"><br>
   				total: <input type="text" name="total_fee" value="${cart_tot_price + delivery_fee}"><br>

   					<tr>
                     	<td width=100 align=center bgcolor="E6ECDE" height="22">이름</td>
                     	<td width=490 align="left" bgcolor="ffffff"
                        	style="padding-left: 10px"><input type="text"
                        	style="width: 150" name="member_name"
                        	value="${member_name}"></td>
                  	</tr>
                  	<tr>
                     	<td width=100 align=center bgcolor="E6ECDE" height="22">주소</td>
                     	<td width=490 align="left" bgcolor="ffffff"
                        	style="padding-left: 10px"><input type="text"
                        	style="width: 150" name="member_address1"
                        	value="${member_address1}"></td>
                  	</tr>
                  	<tr>
                     	<td width=100 align=center bgcolor="E6ECDE" height="22">전화번호</td>
                     	<td width=490 align="left" bgcolor="ffffff"
                        	style="padding-left: 10px"><input type="text"
                        	style="width: 150" name="member_phone"
                        	value="${member_phone}"></td>
                  	</tr>
   					<tr>
                     	<td width=100 align=center bgcolor="E6ECDE" height="22">카드번호</td>
                     	<td width=490 align="left" bgcolor="ffffff"
                        	style="padding-left: 10px"><input type="text"
                        	style="width: 150" name="card_no"
                        	value="${card_no}"></td>
                  	</tr>
                  	
						</form>
			</table>
						<input type="submit">
						
					</form> <br />


	<!--container end-->
</body>
</html>
