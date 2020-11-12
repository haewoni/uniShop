<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="login_check.jspf"%>
<jsp:include page="common_top.jsp" />
<!-- Off-Canvas Wrapper-->
<div class="offcanvas-wrapper">
	<!-- Page Title-->
	<div class="page-title">
		<div class="container">
			<div class="column">
				<h1>결제</h1>
			</div>
			<div class="column">
				<ul class="breadcrumbs">
					<li><a href="unishop_main">Home</a></li>
					<li class="separator">&nbsp;</li>
					<li>Checkout</li>
				</ul>
			</div>
		</div>
	</div>
	<!-- Page Content-->
	<div class="container padding-bottom-3x mb-2">
		<div class="row">
			<!-- Checkout Adress-->
			<form name="jumun_address_form">
				<div class="col-xl-9 col-lg-8">
					<div class="checkout-steps">
						<a href="jumun_review_form">4. 주문확인</a>
						<a href="jumun_payment_form"><span class="angle"></span>3. 결제정보</a>
						<a href="jumun_delivery_form"><span class="angle"></span>2. 배송방법</a>
						<a class="active" href="jumun_address_form"><span class="angle"></span>1.주소</a>
					</div>
					<h4>주소</h4>
					<hr class="padding-bottom-1x">
					<div class="row">
						<div class="col-sm-6">
							<div class="form-group">
								<label for="checkout-fn">주문자 이름</label> <input
									class="form-control" type="text" id="checkout-fn"
									name="member_name" value="${loginMember.member_name}">
							</div>
						</div>
						<div class="col-sm-6">
							<div class="form-group">
								<label for="checkout-ln">전화번호</label> <input
									class="form-control" type="text" id="checkout-ln"
									name="member_phone" value="${loginMember.member_phone}">
							</div>
						</div>
					</div>
					<div class="row">
						<div class="col-sm-6">
							<div class="form-group">
								<label for="checkout-company">주소명</label> <input
									class="form-control" type="text" 
									name="member_address_name"
									value="${loginMember.member_address_name}">
							</div>
						</div>
						<div class="col-sm-6">
							<div class="form-group">
								<label for="checkout-country">국가</label> <select
									class="form-control" id="checkout-country"
									name="member_address_country">
									<option>${loginMember.member_address_country}</option>
									<option value="대한민국">대한민국</option>
									<option value="캐나다">캐나다</option>
									<option value="프랑스">프랑스</option>
									<option value="독일">독일</option>
									<option value="미국">미국</option>
									<option value="뉴질랜드">뉴질랜드</option>
								</select>
							</div>
						</div>
					</div>
					<div class="row">
						<div class="col-sm-6">
							<div class="form-group">
								<label for="checkout-city">도시</label> <select
									class="form-control" id="checkout-city"
									name="member_address_city">
									<option>${loginMember.member_address_city}</option>
									<option value="서울">서울</option>
									<option value="인천">인천</option>
									<option value="부산">부산</option>
									<option value="대전">대전</option>
									<option value="익산">익산</option>
								</select>
							</div>
						</div>
						<div class="col-sm-6">
							<div class="form-group">
								<label for="checkout-zip">우편번호</label> <input
									class="form-control" type="text" id="checkout-zip"
									name="member_address_zipcode"
									value="${loginMember.member_address_zipcode}">
							</div>
						</div>
					</div>
					<div class="row padding-bottom-1x">
						<div class="col-sm-6">
							<div class="form-group">
								<label for="checkout-address1">주소1</label> <input
									class="form-control" type="text" id="checkout-address1"
									name="member_address1" value="${loginMember.member_address1}">
							</div>
						</div>
						<div class="col-sm-6">
							<div class="form-group">
								<label for="checkout-address2">상세주소</label> <input
									class="form-control" type="text" id="checkout-address2"
									name="member_address2" value="${loginMember.member_address2}">
							</div>
						</div>
					</div>
					<h4>배송지 주소</h4>
					<hr class="padding-bottom-1x">
					<div class="form-group">
						<div class="custom-control custom-checkbox">
							<input class="custom-control-input" type="checkbox"
								id="same_address" checked> <label
								class="custom-control-label" for="same_address">회원정보와 동일</label>
						</div>
					</div>
					<div class="checkout-footer">
						<div class="column">
							<a class="btn btn-outline-secondary" href="cart_list"><i
								class="icon-arrow-left"></i><span class="hidden-xs-down">&nbsp;카트로
									돌아가기</span></a>
						</div>
						<div class="column">
							<a class="btn btn-primary"
								href="javascript:jumun_address_form_action();"><span
								class="hidden-xs-down">계속&nbsp;</span><i
								class="icon-arrow-right"></i></a>
						</div>
					</div>
				</div>
			</form>
			<!-- Sidebar          -->
			<div class="col-xl-3 col-lg-4">
				<aside class="sidebar">
					<div class="padding-top-2x hidden-lg-up"></div>
					<!-- Order Summary Widget-->
					<section class="widget widget-order-summary">
						<h3 class="widget-title">주문 요약</h3>
						<table class="table">
							<tr>
								<td>카트 합계:</td>
								<td class="text-medium">${cart_subtotal}</td>
							</tr>
							<tr>
								<td>배송비:</td>
								<td class="text-medium"></td>
							</tr>
							<tr>
								<td>총 금액:</td>
								<td class="text-lg text-medium">${cart_subtotal}</td>
							</tr>
						</table>
					</section>
				</aside>
			</div>
		</div>
	</div>
	<!-- Site Footer-->
	<jsp:include page="common_bottom.jsp" />
</div>
<!-- Back To Top Button-->
<a class="scroll-to-top-btn" href="#"><i class="icon-arrow-up"></i></a>
<!-- Backdrop-->
<div class="site-backdrop"></div>
<!-- JavaScript (jQuery) libraries, plugins and custom scripts-->
<script src="js/vendor.min.js"></script>
<script src="js/scripts.min.js"></script>
<script src="js/common.js"></script>

</body>
</html>