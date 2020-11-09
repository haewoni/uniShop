<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
	<jsp:include page="common_top.jsp"/>
    <!-- Off-Canvas Wrapper-->
    <div class="offcanvas-wrapper">
      <!-- Page Title-->
      <div class="page-title">
        <div class="container">
          <div class="column">
            <h1>Contact / Shipping Address</h1>
          </div>
          <div class="column">
            <ul class="breadcrumbs">
              <li><a href="index">Home</a>
              </li>
              <li class="separator">&nbsp;</li>
              <li><a href="member_profile_form">Account</a>
              </li>
              <li class="separator">&nbsp;</li>
              <li>Contact Address</li>
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
				<a class="list-group-item with-badge" href="member_jumun_list"><i class="icon-bag"></i>주문 목록<span class="badge badge-primary badge-pill">6</span></a>
				<a class="list-group-item active" href="member_profile_form"><i class="icon-head"></i>내 정보</a>
				<a class="list-group-item" href="member_address_detail"><i class="icon-map"></i>내 주소</a>
				<a class="list-group-item with-badge" href="member_wishlist_detail"><i class="icon-heart"></i>찜 목록<span class="badge badge-primary badge-pill">3</span></a>
				<a class="list-group-item with-badge" href="member_question_list"><i class="icon-tag"></i>질문 목록<span class="badge badge-primary badge-pill">4</span></a></nav>
			</div>
          <div class="col-lg-8">
            <div class="padding-top-2x mt-2 hidden-lg-up"></div>
            <h4>Contact Address</h4>
            <hr class="padding-bottom-1x">
            <form class="row">
              <div class="col-md-6">
                <div class="form-group">
                  <label for="account-company">Name</label>
                  <input class="form-control" type="text" id="account-company" value="Home">
                </div>
              </div>
              <div class="col-md-6">
                <div class="form-group">
                  <label for="account-country">Country</label>
                  <select class="form-control" id="account-country">
                    <option>Choose country</option>
                    <option>United State</option>
                    <option>Canada</option>
                    <option>France</option>
                    <option>Germany</option>
                    <option>Switzerland</option>
                    <option selected>South Korea</option>
                  </select>
                </div>
              </div>
              <div class="col-md-6">
                <div class="form-group">
                  <label for="account-city">City</label>
                  <select class="form-control" id="account-city">
                    <option>Choose city</option>
                    <option>Amsterdam</option>
                    <option>Berlin</option>
                    <option>Geneve</option>
                    <option selected>Seoul</option>
                    <option>Paris</option>
                  </select>
                </div>
              </div>
              <div class="col-md-6">
                <div class="form-group">
                  <label for="account-zip">ZIP Code</label>
                  <input class="form-control" type="text" id="account-zip" required>
                </div>
              </div>
              <div class="col-md-6">
                <div class="form-group">
                  <label for="account-address1">Address 1</label>
                  <input class="form-control" type="text" id="account-address1" required>
                </div>
              </div>
              <div class="col-md-6">
                <div class="form-group">
                  <label for="account-address2">Address 2</label>
                  <input class="form-control" type="text" id="account-address2">
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
                  <button class="btn btn-primary margin-bottom-none" type="button" data-toast data-toast-position="topRight" data-toast-type="success" data-toast-icon="icon-circle-check" data-toast-title="Success!" data-toast-message="Your address updated successfuly.">Update Address</button>
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