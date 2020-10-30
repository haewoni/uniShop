<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	샵 메인. 랜덤으로 제품 30개 게시<hr>
	<div>
		<a href="shop_male_outer_list">남성 아우터</a>
		<a href="shop_male_cardigan_list">남성 가디건</a>
		<a href="shop_male_tshirt_list">남성 티셔츠</a>
		<a href="shop_male_longpants_list">남성 긴바지</a>
		<a href="shop_male_shortpants_list">남성 반바지</a>
		<br><br>
		<a href="shop_female_outer_list">여성 아우터</a>
		<a href="shop_female_cardigan_list">여성 가디건</a>
		<a href="shop_female_tshirt_list">여성 티셔츠</a>
		<a href="shop_female_longpants_list">여성 긴바지</a>
		<a href="shop_female_skirt_list">여성 스커트</a>
	</div>
	<hr>
	${productList}
	
</body>
</html>