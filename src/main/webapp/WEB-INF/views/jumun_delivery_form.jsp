<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>



<form action="jumun_delivery_action" method="post">
	deliveryStr<input type="text" name="deliveryStr"><br>
	<input type="submit" >
</form>

<form action="jumun_address_form" method="get">
	cart subtotal: <input type="text" name="subtotal" value="${cart_subtotal}"><br>
	shipping: <input type="text" name="delivery_fee"><br>
	total: <input type="text" name="total_fee" value="${cart_subtotal}"><br>
</form>




