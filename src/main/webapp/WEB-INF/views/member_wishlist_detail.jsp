<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
	<jsp:include page="common_top.jsp"></jsp:include>
    <!-- Off-Canvas Wrapper-->
    <div class="offcanvas-wrapper">
      <!-- Page Title-->
      <div class="page-title">
        <div class="container">
          <div class="column">
            <h1>My Wishlist</h1>
          </div>
          <div class="column">
            <ul class="breadcrumbs">
              <li><a href="unishop_main">Home</a>
              </li>
              <li class="separator">&nbsp;</li>
              <li><a href="member_jumun_list">Account</a>
              </li>
              <li class="separator">&nbsp;</li>
              <li>찜목록</li>
            </ul>
          </div>
        </div>
      </div>
      <!-- Page Content-->
      <div class="container padding-bottom-3x mb-2">
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
				<a class="list-group-item" href="member_address_detail"><i class="icon-map"></i>내 주소</a>
				<a class="list-group-item with-badge active" href="member_wishlist_detail"><i class="icon-heart"></i>찜 목록</a>
				<a class="list-group-item with-badge" href="member_question_list"><i class="icon-tag"></i>질문 목록</a></nav>
			</div>
          <div class="col-lg-8">
            <div class="padding-top-2x mt-2 hidden-lg-up"></div>
            <!-- Wishlist Table-->
            <div class="table-responsive wishlist-table margin-bottom-none">
              <table class="table">
                <thead>
                  <tr>
                    <th>Product Name</th>
                    <th class="text-center"><a class="btn btn-sm btn-outline-danger" href="member_wishlist_delete_all">찜 목록 삭제하기</a></th>
                  </tr>
                </thead>
                <tbody>
                 <c:forEach items="${wishList}" var="wishList">
                  <tr>
                    <td>
                      <div class="product-item"><a class="product-thumb" href="shop_product_detail?product_no= ${wishList.product.product_no}"><img src="IMAGE/${wishList.product.product_image_1}" alt="Product"></a>
                        <div class="product-info">
                          <h4 class="product-title"><a href="shop_product_detail?product_no= ${wishList.product.product_no}">${wishList.product.product_name}</a></h4>
                          <div class="text-lg text-medium text-muted">${wishList.product.product_price}</div>
                          <div>Availability:
                            <div class="d-inline text-success">In Stock</div>
                          </div>
                        </div>
                      </div>
                    </td>
                    <td class="text-center"><a class="remove-from-cart" href="member_wishlist_delete_one?product_no=${wishList.product.product_no}" data-toggle="tooltip" title="찜 삭제하기"><i class="icon-cross"></i></a></td>
                  </tr>               
                 </c:forEach>
                </tbody>
              </table>
            </div>
            <hr class="mb-4">
            <div class="custom-control custom-checkbox">
              <input class="custom-control-input" type="checkbox" id="inform_me" checked>
              <label class="custom-control-label" for="inform_me">Inform me when item from my wishlist is available</label>
            </div>
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