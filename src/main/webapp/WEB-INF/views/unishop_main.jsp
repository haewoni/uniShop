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
	
		
		
	 <div class="product">
		<div>
			<a href="product_ManOuterList">남성 아우터
				<input type="button" value="VIEW COLLECTION"><br>
			</a>
		</div>

		<div>
			<a href="product_ManPantslist">남성 긴바지
				<input type="button" value="VIEW COLLECTION"><br>
			</a>
		</div>

		<div>
			<a href="product_FemaleOuter_list">여성 아우터
				<input type="button" value="VIEW COLLECTION"><br>
			</a>
		</div>
		
		<div>
			<a href="product_FemaleSkirt_list">여성 스커트
				<input type="button" value="VIEW COLLECTION"><br>
			</a>
		</div>
	</div>
	
	<a href="member_login_register_form">로오그으이인</a>
	<a href="jumun_address_form">check out</a>
	
	
	
	
	<div class="sale-item">
		<h1>Featured Products</h1>
		
		<c:forEach  items="${productList}" 
					var="product"  
					begin="0"  
					step="1" 
					end="${productList.size()}"
					varStatus="status">
			<li>
				<a href="shop_product_detail?product_no=${product.product_no}">
					<img src=IMAGE/${product.product_image_1} width=100, height=100>${product.product_name}
				</a>
				<a href="add_wishList">
					<input type="image" src="IMAGE/heart.png" width="20" height="20" 
						   onclick="javascript:alert('찜 목록에 추가 되었습니다 !');">
				</a>
			</li>
		</c:forEach>
		
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