<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

 <div>
  <jsp:include page="include_common_top.jsp"/>


	<div>
		<a href="">${sMemberId}님 로그아웃</a>
		<a href="">${loginMember.member_phone} 님의 핸드폰</a>
		<a href="">${loginMember.member_address2} 주소상세</a>
		<a href="">${sMemberId}님 로그아웃</a>		
		<a href="member_detail">멤버 정보 수정, 주문 목록, 찜 목록, QnA 목록</a>
	</div>
	<div>
		<a href="unishop_main">Main</a>
		<a href="shop_main">Shop</a>
	</div>
	<a href="product_M_T_list">남성 상의</a>
	<a href="product_M_B_list">남성 하의</a>
	<a href="product_F_T_list">여성 상의</a>
	<a href="product_F_B_list">여성 하의</a>
	<a href="member_login_register_form">로오그으이인</a>
	<a href="jumun_address_form">check out</a>
	
	
	
	
	<div class="sale-item">
		<h1>Featured Products</h1>
           <div class="product-card">
             <div class="product-badge text-danger" style="color: red">50% Off</div>
             	<a class="product-image" href="product_detail?product_no=429284">
             		<img src="IMAGE/429284_1.png" width="200" height="120">
             	</a>
             <h3 class="product-title">
             	<a href="product_detail?product_no=429284">울트라라이트다운컴팩트재킷</a><br>
	             	<a href="product_wishList">
		             	<img src="IMAGE/heart.png" width="30" height="30">
	             	</a>
             	<a href="product_cart">
             		<input type="button" value="ADD TO CART">
				</a>             		
             </h3>
           </div>
           
           <div class="product-card">
           		<a class="product-image" href="product_detail?product_no=429290">
            		<img src="IMAGE/429290_1.png" width="200" height="120">
            	</a>
             <h3 class="product-title"><a href="product_detail?product_no=429290">하이브리드다운파카</a></h3>
           </div>

           <div class="product-card">
           		<a class="product-image" href="product_detail?product_no=429292">
            		<img src="IMAGE/429292_1.png" width="200" height="120">
            	</a>
             <h3 class="product-title"><a href="product_detail?product_no=429292">하이브리드다운코트</a></h3>
           </div>
    </div>
	
	
	<div class="productAll">
		<a href="product_All_List">
			<input type="button" value="VIEW ALL PRODUCTS">
		</a>
	</div>
	<%@include file= "include_common_bottom.jspf" %>
 </div>

</body>
</html>