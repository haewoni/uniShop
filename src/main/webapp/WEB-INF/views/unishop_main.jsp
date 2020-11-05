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

		<a href="member_logout_action">${sMemberId}님 로그아웃</a><br>
		<a href="">${sMemberId} 님의 핸드폰: ${loginMember.member_phone}</a><br>
		<a href="">${loginMember.member_address2} 님의 주소상세</a><br>
		<a href="">${sMemberId}님 로그아웃</a>		<br>
		<a href="member_detail">멤버 정보 수정, 주문 목록, 찜 목록, QnA 목록</a><br>
	</div>
	<div>
		<a href="unishop_main">Main</a><br>
		<a href="member_login_register_form">로그인</a><br>
		<a href="shop_main">Shop</a><br>
		<a href="cart_list">Cart</a><br>
		<a href="jumun_address_form">check out</a>
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
				<a href="add_wishlist_action?product_no=${product.product_no}">
					<input type="image" src="IMAGE/heart.png" width="20" height="20">
				</a>
					<span style="size: 5px">$ : ${product.product_price}</span>
			</li>
		</c:forEach>
		
    </div>
	
	
	<div class="productAll">
		<a href="product_All_List">
			<input type="button" value="VIEW ALL PRODUCTS">
		</a>
	</div>
	
	
	
	
	<h1>Staff Picks</h1>
		<p id="PICK">
			<span>TOP SELLERS</span>	
			
			<ol>	
			
				<li>
					<a href="shop_product_detail?product_no=429067">
						<img src=IMAGE/429067_1.png width=100, height=100>EFM터틀넥스웨터(긴팔)
					</a>
					<a href="add_wishlist_action?product_no=${product.product_no}">
						<input type="image" src="IMAGE/heart.png" width="20" height="20">
					</a>
				</li>
				<li>
					<a href="shop_product_detail?product_no=432324">
						<img src=IMAGE/432324_1.png width=100, height=100>JWA로우게이지크루넥스웨터(긴팔)
					</a>
					<a href="add_wishlist_action?product_no=${product.product_no}">
						<input type="image" src="IMAGE/heart.png" width="20" height="20">
					</a>
				</li>
				<li>
					<a href="shop_product_detail?product_no=429461">
						<img src=IMAGE/429461_1.png width=100, height=100>하이브리드다운코트
					</a>
					<a href="add_wishlist_action?product_no=${product.product_no}">
						<input type="image" src="IMAGE/heart.png" width="20" height="20">
					</a>
				</li>
			</ol>
		
		
			<div class="productAll">
				<a href="product_All_List">
					<input type="button" value="VIEW MORE">
				</a>
			</div>
		
		
			<br>
			<span >NEW ARRIVALS</span>
				<ol>	
					<li>
						<a href="shop_product_detail?product_no=432710">
							<img src=IMAGE/432710_1.png width=100, height=100>JWA스텐칼라코트
						</a>
						<a href="add_wishlist_action?product_no=${product.product_no}">
							<input type="image" src="IMAGE/heart.png" width="20" height="20">
						</a>
					</li>
					<li>
						<a href="shop_product_detail?product_no=428856">
							<img src=IMAGE/428856_1.png width=100, height=100>EFM V넥스웨터(긴팔)
						</a>
						<a href="add_wishlist_action?product_no=${product.product_no}">
							<input type="image" src="IMAGE/heart.png" width="20" height="20">
						</a>
					</li>
					<li>
						<a href="shop_product_detail?product_no=428867">
							<img src=IMAGE/428867_1.png width=100, height=100>수플레얀하이넥스웨터(긴팔)
						</a>
						<a href="add_wishlist_action?product_no=${product.product_no}">
							<input type="image" src="IMAGE/heart.png" width="20" height="20">
						</a>
					</li>
				</ol>
				<div class="productAll">
					<a href="product_All_List">
						<input type="button" value="VIEW MORE">
					</a>
				</div>
			
			
			<br>
			<span>BEST RATED</span>
				<ol>	
					<li>
						<a href="shop_product_detail?product_no=430929">
							<img src=IMAGE/430929_1.png width=100, height=100>U메리노블렌드V넥가디건(긴팔)
						</a>
						<a href="add_wishlist_action?product_no=${product.product_no}">
							<input type="image" src="IMAGE/heart.png" width="20" height="20">
						</a>
					</li>
					<li>
						<a href="shop_product_detail?product_no=432729">
							<img src=IMAGE/432729_1.png width=100, height=100>U메리노블렌드크루넥스웨터(긴팔)
						</a>
						<a href="add_wishlist_action?product_no=${product.product_no}">
							<input type="image" src="IMAGE/heart.png" width="20" height="20">
						</a>
					</li>
					<li>
						<a href="shop_product_detail?product_no=429128">
							<img src=IMAGE/429128_1.png width=100, height=100>스마트앵클팬츠
						</a>
						<a href="add_wishlist_action?product_no=${product.product_no}">
							<input type="image" src="IMAGE/heart.png" width="20" height="20">
						</a>
					</li>
				</ol>
				<div class="productAll">
					<a href="product_All_List">
						<input type="button" value="VIEW MORE">
					</a>
				</div>
		</p>
	
	
	
	
	
	
	
	
	
	
	
	
	
	

	
	
	
	
		<%@include file= "include_common_bottom.jspf" %>
 </div>





















</body>
</html>