<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:include page="common_top.jsp"/>
   
     <!-- Open Jumun_detail Modal start-->
   <div class="modal fade" id="orderDetails" tabindex="-1">
      <div class="modal-dialog modal-lg">
        <div class="modal-content">
          <div class="modal-header">
            <h4 class="modal-title">주문 정보</h4>
            <button class="close" type="button" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
          </div>
          <div class="modal-body">
            <div class="table-responsive shopping-cart mb-0">
              <table class="table">
                <thead>
                  <tr>
                    <th>상품 상세</th>
                    <th class="text-center">상품 가격</th>
                  </tr>
                </thead>
                <tbody>
                <!-- 
                  <tr>
                    <td>
                      <div class="product-item"><a class="product-thumb" href="shop-single.html"><img src="img/shop/cart/01.jpg" alt="Product"></a>
                        <div class="product-info">
                          <h4 class="product-title"><a href="shop-single.html">Unionbay Park<small>x 1</small></a></h4><span><em>Size:</em> 10.5</span><span><em>Color:</em> Dark Blue</span>
                        </div>
                      </div>
                    </td>
                    <td class="text-center text-lg text-medium">$43.90</td>
                  </tr>
                   -->
                          
                </tbody>
              </table>
            </div>
            <hr class="mb-3">
            <div class="d-flex flex-wrap justify-content-between align-items-center pb-2">
              <div class="px-2 py-1">상품 가격: <span id='tot_price' class='text-medium'>$289.68</span></div>
              <div class="px-2 py-1">배송비: <span id='delivery_fee' class='text-medium'>$22.50</span></div>
              <div class="text-lg px-2 py-1">총 가격: <span id='jumun_tot_price' class='text-medium'>$315.60</span></div>
            </div>
          </div>
        </div>
      </div>
    </div>
   <!-- Open Jumun_detail Modal end-->
	<!-- Off-Canvas Wrapper-->
    <div class="offcanvas-wrapper">
      <!-- Page Title-->
      <div class="page-title">
        <div class="container">
          <div class="column">
            <h1>주문 내역</h1>
          </div>
          <div class="column">
            <ul class="breadcrumbs">
              <li><a href="unishop_main">Home</a>
              </li>
              <li class="separator">&nbsp;</li>
              <li><a href="member_profile_form">Account</a>
              </li>
              <li class="separator">&nbsp;</li>
              <li>주문내역</li>
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
				<a class="list-group-item with-badge active" href="member_jumun_list"><i class="icon-bag"></i>주문 목록</a>
				<a class="list-group-item" href="member_profile_form"><i class="icon-head"></i>내 정보</a>
				<a class="list-group-item" href="member_address_detail"><i class="icon-map"></i>내 주소</a>
				<a class="list-group-item with-badge" href="member_wishlist_detail"><i class="icon-heart"></i>찜 목록</a>
				<a class="list-group-item with-badge" href="member_question_list"><i class="icon-tag"></i>질문 목록</a></nav>
			</div>
          <div class="col-lg-8">
            <div class="padding-top-2x mt-2 hidden-lg-up"></div>
            <div class="table-responsive">
              <table class="table table-hover margin-bottom-none">
                <thead>
                  <tr>
                    <th>주문 번호</th>
                    <th>주문 날짜</th>
                    <th>주문 상태</th>
                    <th>총 가격</th>
                  </tr>
                </thead>
                <tbody>
                <c:forEach items="${jumunList}" var="jumun">
                  <tr>

                    <td><a class="text-medium navi-link" href="#" data-toggle="modal" data-target="#orderDetails"  delivery_no="${jumun.delivery_no}">${jumun.jumun_no}</a></td>
                    <td>${jumun.jumun_date}</td>
                    <td><span class="text-danger">${jumun.jumun_status}</span></td>
                    <td><span class="text-medium">${jumun.jumun_tot_price}</span></td>

                  </tr>
                 </c:forEach>
                </tbody>
              </table>
            </div>
            <hr>
            <div class="text-right"><a class="btn btn-link-primary margin-bottom-none" href="#"><i class="icon-download"></i>&nbsp;Order Details</a></div>
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
    <script src="js/common.js"></script>
    <script src="js/custom_member.js"></script>
  </body>
</html>