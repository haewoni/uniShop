<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
	<jsp:include page="common_top.jsp"/>
    <!-- Off-Canvas Wrapper-->
    <div class="offcanvas-wrapper">
      <!-- Page Title-->
      <div class="page-title">
        <div class="container">
          <div class="column">
            <h1>회원주소</h1>
          </div>
          <div class="column">
            <ul class="breadcrumbs">
              <li><a href="index">Home</a>
              </li>
              <li class="separator">&nbsp;</li>
              <li><a href="member_profile_form">Account</a>
              </li>
              <li class="separator">&nbsp;</li>
              <li>회원주소</li>
            </ul>
          </div>
        </div>
      </div>
      <!-- Page Content-->
      <div class="container padding-bottom-3x mb-1">
        <div class="row">
          <div class="col-lg-4">
            <aside class="user-info-wrapper">
              <div class="user-cover" style="background-image: url(img/account/user-cover-img.jpg);">
                <div class="info-label" data-toggle="tooltip" title="You currently have 290 Reward Points to spend"><i class="icon-medal"></i>290 points</div>
              </div>
              <div class="user-info">
                <div class="user-avatar"><a class="edit-avatar" href="#"></a><img src="img/account/user-ava.jpg" alt="User"></div>
                <div class="user-data">
				<h4>${loginMember.member_name}</h4><span>${loginMember.member_id}</span>
                </div>
              </div>
            </aside>
			<nav class="list-group">
				<a class="list-group-item with-badge" href="member_jumun_list"><i class="icon-bag"></i>주문 목록</a>
				<a class="list-group-item" href="member_profile_form"><i class="icon-head"></i>내 정보</a>
				<a class="list-group-item active" href="member_address_detail"><i class="icon-map"></i>내 주소</a>
				<a class="list-group-item with-badge" href="member_wishlist_detail"><i class="icon-heart"></i>찜 목록</a>
				<a class="list-group-item with-badge" href="member_question_list"><i class="icon-tag"></i>질문 목록</a></nav>
			</div>
          <div class="col-lg-8">
            <div class="padding-top-2x mt-2 hidden-lg-up"></div>
            <h4>Contact Address</h4>
            <hr class="padding-bottom-1x">
            <form class="row" action="member_address_update_action" method="post">
              <div class="col-md-6">
                <div class="form-group">
                  <label for="account-company">주소명</label>
                  <input class="form-control" type="text" name="member_address_name" value="${loginMember.member_address_name }">
                </div>
              </div>
              <div class="col-md-6">
                <div class="form-group">
                  <label for="account-country">국가</label>
                  <select class="form-control" name="member_address_country">
                    <option>국가 선택</option>
                    <option selected>${loginMember.member_address_country}</option>
                    <option>캐나다</option>
                    <option>프랑스</option>
                    <option>독일</option>
                    <option>미국</option>
                    <option>뉴질랜드</option>
                  </select>
                </div>
              </div>
              <div class="col-md-6">
                <div class="form-group">
                  <label for="account-city">도시</label>
                  <select class="form-control" name="member_address_city">
                    <option>도시 선택</option>
                    <option selected>${loginMember.member_address_city}</option>
                    <option>인천</option>
                    <option>부산</option>
                    <option>대전</option>
                    <option>익산</option>
                  </select>
                </div>
              </div>
              <div class="col-md-6">
                <div class="form-group">
                  <label for="account-zip">우편번호</label>
                  <input class="form-control" type="text" name="member_address_zipcode" value="${loginMember.member_address_zipcode}" required>
                </div>
              </div>
              <div class="col-md-6">
                <div class="form-group">
                  <label for="account-address1">주소1</label>
                  <input class="form-control" type="text" name="member_address1" value="${loginMember.member_address1}" required>
                </div>
              </div>
              <div class="col-md-6">
                <div class="form-group">
                  <label for="account-address2">상세주소</label>
                  <input class="form-control" type="text" name="member_address2" value="${loginMember.member_address2}" required>
                </div>
              </div>
              <div class="col-12 padding-top-1x">
                <h4>Shipping Address</h4>
                <hr class="padding-bottom-1x">
                <div class="custom-control custom-checkbox d-block">
                  <input class="custom-control-input" type="checkbox" id="same_address" checked>
                  <label class="custom-control-label" for="same_address">Same as Contact Address</label>
                </div>
                <hr class="margin-top-1x margin-bottom-1x">
                <div class="text-right">
                  <button class="btn btn-primary margin-bottom-none" type="submit" data-toast data-toast-position="topRight" data-toast-type="success" data-toast-icon="icon-circle-check" data-toast-title="Success!" data-toast-message="Your address updated successfuly.">Update Address</button>
                </div>
              </div>
            </form>
          </div>
        </div>
      </div>
      <!-- Site Footer-->
      <jsp:include page="common_bottom.jsp"/>
    </div>
    <!-- Back To Top Button--><a class="scroll-to-top-btn" href="#"><i class="icon-arrow-up"></i></a>
    <!-- Backdrop-->
    <div class="site-backdrop"></div>
    <!-- JavaScript (jQuery) libraries, plugins and custom scripts-->
    <script src="js/vendor.min.js"></script>
    <script src="js/scripts.min.js"></script>
  </body>
</html>