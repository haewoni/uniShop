<%@page import="com.itwill.unishop.domain.Cart"%>
<%@page import="com.itwill.unishop.service.CartServiceImpl"%>
<%@page import="org.apache.ibatis.scripting.xmltags.ForEachSqlNode"%>
<%@page import="org.apache.ibatis.reflection.SystemMetaObject"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@page import="java.text.DecimalFormat"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<script type="text/javascript">
	function cart_update() {

		//location.href = 'cart_update_action_get?cart_no=?${cart.cart_no}&cart_qty=?$(#cart_qty.option:selected).val()';
		
		//alert("수량확인 : "+${cart_qty.option.selected.text()});
	}
</script>

</head>
<body>

	<div class="cart_list">

		<h1>카트 - 리스트</h1><hr>
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
				
			<form method="post" action="cart_update_action_get"> 
				  수량 :
				  <select name="cart_qty">
				    <option value="0" selected="selected">${cart.cart_qty}</option>
				    <option value="1">1</option>
				    <option value="2">2</option>
				    <option value="3">3</option>
				    <option value="4">4</option>
				    <option value="5">5</option>
				    <option value="6">6</option>
				    <option value="7">7</option>
				    <option value="8">8</option>
				    <option value="9">9</option>
				    <option value="10">10</option>
				  </select>
				
					
				<li>금액 : ${cart.cart_tot_price}</li>
				<li><a href="cart_delete_cartNo_action_get?cart_no=${cart.cart_no}">장바구니 지우기 @</a></li>
				<!-- 
				<li><a href="cart_update_action_get?cart_no=${cart.cart_no}&cart_qty=${document.getElementById('cart_qty').options.selectedIndex.value}">카트 UPDATE</a></li>
				 
				<li><a href="cart_update_action_get?cart_no=${cart.cart_no}&cart_qty=${document.getElementById('cart_qty').value}">카트 UPDATE</a></li>
				-->
				<input type="button" value="수량확인" class=TXTFLD 
				   onclick="alert(${document.getElementById('cart_qty').value})" > 
				
				<input type=submit value="카트 UPDATE" class=TXTFLD onclick="카트 UPDATE 성공;" >
			    <input type="hidden" name=cart_no value="${cart.cart_no}">
			</form>
				
				<p>
				
				<c:set var= "sum" value="(sum + cart.cart_tot_price)"/>

			</c:forEach>
				
				<li>총금액_sum : ${sum}</li>
	</div>

	<hr>
	<input type="button" value="계속 쇼핑하기" class=TXTFLD onclick="location.href = 'unishop_main'" >
	
	

	<hr>
	<div>
		<h1>당신은 또한 좋아 할 수 있다</h1><hr>
		
			<c:forEach  items="${productList}" 
						var="product"  
						begin="0"  
						step="1" 
						end="${productList.size()}"
						varStatus="status">
				<li>제품 번호 : ${product.product_no}</li>
				<li><a href="shop_product_detail.jsp?product_no=${product.product_no}">
				<img src=IMAGE/${product.product_image_1} width=100, height=100><br>${product.product_name}</a></li>
				<li>금액 : ${product.product_price}</li>
				<li><a href="shop_add_cart_action.jsp?product_no=${product.product_no}">wish리스트 추가♥</a></li>
				<li><a href="shop_product_detail.jsp?product_no=${product.product_no}">장바구니에 추가(상품상세)</a></li>
				<p>
			</c:forEach>
	</div>
	<li>
	
</body>
<script>

</script>
</html>