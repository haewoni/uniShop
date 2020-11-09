<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <jsp:include page="common_top.jsp"/>
     <!-- Open Jumun_detail Modal-->
    <div class="modal fade" id="orderDetails" tabindex="-1">
      <div class="modal-dialog modal-lg">
        <div class="modal-content">
          <div class="modal-header">
          
            <h4 class="modal-title">Order No  - 34VB5540K83</h4>
            <button class="close" type="button" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
          </div>
          <div class="modal-body">
            <div class="table-responsive shopping-cart mb-0">
              <table class="table">
                <thead>
                  <tr>
                    <th>Product Name</th>
                    <th class="text-center">Subtotal</th>
                  </tr>
                </thead>
                <tbody>
                  <tr>
                    <td>
                      <div class="product-item"><a class="product-thumb" href="shop_product_detail?${jumunList.jumun_detail.product_no}"><img src="img/shop/cart/01.jpg" alt="Product"></a>
                        <div class="product-info">
                          <h4 class="product-title"><a href="shop_product_detail?${jumunList.jumun_detail.product_no}">Unionbay Park<small>x 1</small></a></h4><span><em>Size:</em> 10.5</span><span><em>Color:</em> Dark Blue</span>
                        </div>
                      </div>
                    </td>
                    <td class="text-center text-lg text-medium">$43.90</td>
                  </tr>
                  <tr>
                    <td>
                      <div class="product-item"><a class="product-thumb" href="shop_product_detail?${jumunList.jumun_detail.product_no}"><img src="img/shop/cart/02.jpg" alt="Product"></a>
                        <div class="product-info">
                          <h4 class="product-title"><a href="shop_product_detail?${jumunList.jumun_detail.product_no}">Daily Fabric Cap<small>x 2</small></a></h4><span><em>Size:</em> XL</span><span><em>Color:</em> Black</span>
                        </div>
                      </div>
                    </td>
                    <td class="text-center text-lg text-medium">$24.89</td>
                  </tr>
                  <tr>
                    <td>
                      <div class="product-item"><a class="product-thumb" href="shop_product_detail?${jumunList.jumun_detail.product_no}"><img src="img/shop/cart/03.jpg" alt="Product"></a>
                        <div class="product-info">
                          <h4 class="product-title"><a href="shop_product_detail?${jumunList.jumun_detail.product_no}">Cole Haan Crossbody<small>x 1</small></a></h4><span><em>Size:</em> -</span><span><em>Color:</em> Turquoise</span>
                        </div>
                      </div>
                    </td>
                    <td class="text-center text-lg text-medium">$200.00</td>
                  </tr>
                </tbody>
              </table>
            </div>
            <hr class="mb-3">
            <div class="d-flex flex-wrap justify-content-between align-items-center pb-2">
              <div class="px-2 py-1">Subtotal: <span class='text-medium'>$289.68</span></div>
              <div class="px-2 py-1">Shipping: <span class='text-medium'>$22.50</span></div>
              <div class="px-2 py-1">Tax: <span class='text-medium'>$3.42</span></div>
              <div class="text-lg px-2 py-1">Total: <span class='text-medium'>$315.60</span></div>
            </div>
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
            <h1>My Orders</h1>
          </div>
          <div class="column">
            <ul class="breadcrumbs">
              <li><a href="index.html">Home</a>
              </li>
              <li class="separator">&nbsp;</li>
              <li><a href="account-orders.html">Account</a>
              </li>
              <li class="separator">&nbsp;</li>
              <li>My Orders</li>
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
                  <h4>Daniel Adams</h4><span>Joined February 06, 2017</span>
                </div>
              </div>
            </aside>

			<nav class="list-group"><a class="list-group-item with-badge" href="member_jumun_list"><i class="icon-bag"></i>주문 목록<span class="badge badge-primary badge-pill">6</span></a><a class="list-group-item" href="member_profile_form"><i class="icon-head"></i>내 정보</a><a class="list-group-item active" href="member_address_detail"><i class="icon-map"></i>내 주소</a><a class="list-group-item with-badge" href="member_wishlist_detail"><i class="icon-heart"></i>찜 목록<span class="badge badge-primary badge-pill">3</span></a><a class="list-group-item with-badge" href="member_qna_list"><i class="icon-tag"></i>질문 목록<span class="badge badge-primary badge-pill">4</span></a></nav>          </div>

          </div>
          <div class="col-lg-8">
            <div class="padding-top-2x mt-2 hidden-lg-up"></div>
            <div class="table-responsive">
              <table class="table table-hover margin-bottom-none">
                <thead>
                  <tr>
                    <th>Order #</th>
                    <th>Date Purchased</th>
                    <th>Status</th>
                    <th>Total</th>
                  </tr>
                </thead>
                <tbody>
                  <tr>
                    <td><a class="text-medium navi-link" href="#;" data-toggle="modal" data-target="#orderDetails">78A643CD409</a></td>
                    <td>August 08, 2017</td>
                    <td><span class="text-danger">${jumunList.jumun_detail.jumun_status}</span></td>
                    <td><span class="text-medium">$760.50</span></td>
                  </tr>
                  <tr>
                    <td><a class="text-medium navi-link" href="#" data-toggle="modal" data-target="#orderDetails">34VB5540K83</a></td>
                    <td>July 21, 2017</td>
                    <td><span class="text-info">In Progress</span></td>
                    <td><span class="text-medium">$315.20</span></td>
                  </tr>
                  <tr>
                    <td><a class="text-medium navi-link" href="#" data-toggle="modal" data-target="#orderDetails">112P45A90V2</a></td>
                    <td>June 15, 2017</td>
                    <td><span class="text-warning">Delayed</span></td>
                    <td><span class="text-medium">$1,264.00</span></td>
                  </tr>
                  <tr>
                    <td><a class="text-medium navi-link" href="#" data-toggle="modal" data-target="#orderDetails">28BA67U0981</a></td>
                    <td>May 19, 2017</td>
                    <td><span class="text-success">Delivered</span></td>
                    <td><span class="text-medium">$198.35</span></td>
                  </tr>
                  <tr>
                    <td><a class="text-medium navi-link" href="#" data-toggle="modal" data-target="#orderDetails">502TR872W2</a></td>
                    <td>April 04, 2017</td>
                    <td><span class="text-success">Delivered</span></td>
                    <td><span class="text-medium">$2,133.90</span></td>
                  </tr>
                  <tr>
                    <td><a class="text-medium navi-link" href="#" data-toggle="modal" data-target="#orderDetails">47H76G09F33</a></td>
                    <td>March 30, 2017</td>
                    <td><span class="text-success">Delivered</span></td>
                    <td><span class="text-medium">$86.40</span></td>
                  </tr>
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