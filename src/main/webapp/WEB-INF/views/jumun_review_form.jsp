<%@page import="org.apache.ibatis.reflection.SystemMetaObject"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@page import="java.text.DecimalFormat"%>
    <title>주문 다시보기 화면</title>
			<form name="f" method="GET" action="jumun_review_action">
    <table border="0" cellpadding="0" cellspacing="1" width="590"
							bgcolor="BBBBBB">
	<div class="cart_list">

		
		<% 
			DecimalFormat df = new DecimalFormat("#,##0");
			//decimalFormat.applyPattern("#,##0");
		%>
		
		<c:set var = "sum" value = "0" />

			<c:forEach  items="${cartList}" 
						var="cart"  
						begin="0"  
						step="1" 
						end="${cartList.size()}"
						varStatus="status">
				<li>카트 순번 : ${cart.cart_no}</li>
				<li>제품 번호 : ${cart.product_no}</li>
				<li><a href="shop_single.jsp?product_no=${cart.product_no}">
				<img src=IMAGE/${cart.product_image_1} width=100, height=100><br>${cart.product_name}</a></li>
				<li>사이즈 : ${cart.cart_product_size}</li>
				
				<form> 
				  <li>수량 :
				  <select name="cart_qty"  id="cart_qty">
				    <option value=수량 selected>${cart.cart_qty}</option>
				    <option value=1>1</option>
				    <option value=2>2</option>
				    <option value=3>3</option>
				    <option value=4>4</option>
				    <option value=5>5</option>
				    <option value=6>6</option>
				    <option value=7>7</option>
				    <option value=8>8</option>
				    <option value=9>9</option>
				    <option value=10>10</option>
				  </select>
				</form>
					
				<li>금액 : ${cart.cart_tot_price}</li>
				<li><a href="cart_delete_cartNo_action_get?cart_no=${cart.cart_no}">장바구니 지우기 @</a></li>
				
				<li><a href="cart_update_action_get?cart_no=${cart.cart_no}&cart_qty=${cart_qty.option.selected.text}">카트 UPDATE</a></li>
				
				<input type="button" value="카트 UPDATE" class=TXTFLD
				       onclick="location.href = 'cart_update_action_get?cart_no=${cart.cart_no}'" > 
				<p>
				
				<c:set var= "sum" value="(sum + cart.cart_tot_price)"/>

			</c:forEach>
				
				<li>총금액_sum : ${sum}</li>
	</div>
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
