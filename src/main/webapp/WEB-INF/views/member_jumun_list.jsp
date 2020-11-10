<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <jsp:include page="common_top.jsp"/>
     <!-- Open Jumun_detail Modal-->
    <div class="modal fade" id="orderDetails" tabindex="-1">
      <div class="modal-dialog modal-lg">
        <div class="modal-content">
          <div class="modal-header">
           
            <h4 class="modal-title">주문 번호  - ${jumun.jumun_no}</h4>
            <button class="close" type="button" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
          </div>
          <div class="modal-body">
            <div class="table-responsive shopping-cart mb-0">
              <table class="table">
                <thead>
                  <tr>
                    <th>제품 이름</th>
                    <th class="text-center">총 가격</th>
                  </tr>
                </thead>
                <tbody>
                <c:forEach items="${jumunList}" var="jumun">
                 <c:forEach items="${jumun.jumun_DetailList}" var="jumun_Detail">
                  <tr>
                    <td>
                      <div class="product-item"><a class="product-thumb" href="shop_product_detail?${jumun_Detail.product_no}"><img src="IMAGE/${jumun_Detail.product_no}_1.png" alt="Product"></a>
                        <div class="product-info">
                          <h4 class="product-title"><a href="shop_product_detail?${jumun_Detail.product_no}">${jumun_Detail.product_name}<small>X${jumun_Detail.jumun_d_product_qty}</small></a></h4><span><em>Size:</em>${jumun_Detail.jumun_d_product_size}</span>
                        </div>
                      </div>
                    </td>
                    <td class="text-center text-lg text-medium">${jumun_Detail.jumun_d_product_price}</td>
                  </tr>
                  </c:forEach>
                 </c:forEach>
                </tbody>
              </table>
            </div>
            <c:choose>
             <c:when test="${jumun.delivery_no eq 'GEN'}">
              <hr class="mb-3">
               <div class="d-flex flex-wrap justify-content-between align-items-center pb-2">
               <div class="px-2 py-1">주문 가격: <span class='text-medium'>${jumun.jumun_tot_price}</span></div>
               <div class="px-2 py-1">배송비: <span class='text-medium'>3000</span></div>
               <div class="text-lg px-2 py-1">총 가격: <span class='text-medium'>${jumun.jumun_tot_price + 3000}</span></div>
              </div>
             </c:when>
            <c:when test="${jumun.delivery_no eq 'EX'}">
             <hr class="mb-3">
               <div class="d-flex flex-wrap justify-content-between align-items-center pb-2">
                <div class="px-2 py-1">주문 가격: <span class='text-medium'>${jumun.jumun_tot_price}</span></div>
                <div class="px-2 py-1">배송비: <span class='text-medium'>6000</span></div>
                <div class="text-lg px-2 py-1">총 가격: <span class='text-medium'>${jumun.jumun_tot_price + 6000}</span></div>
               </div>
              </c:when>
            </c:choose>
          </div>
        </div>
      </div>
    </div>
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
              <li><a href="index.html">Home</a>
              </li>
              <li class="separator">&nbsp;</li>
              <li><a href="account-orders.html">Account</a>
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

                    <td><a class="text-medium navi-link" href="#" data-toggle="modal" data-target="#orderDetails">${jumun.jumun_no}</a></td>
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
  </body>
</html>