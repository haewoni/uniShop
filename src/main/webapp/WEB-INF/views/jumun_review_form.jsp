<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
	<jsp:include page="common_top.jsp"/>
    <!-- Off-Canvas Wrapper-->
    <div class="offcanvas-wrapper">
      <!-- Page Title-->
      <div class="page-title">
        <div class="container">
          <div class="column">
            <h1>Checkout</h1>
          </div>
          <div class="column">
            <ul class="breadcrumbs">
              <li><a href="index.html">Home</a>
              </li>
              <li class="separator">&nbsp;</li>
              <li>Checkout</li>
            </ul>
          </div>
        </div>
      </div>
      <!-- Page Content-->
      <div class="container padding-bottom-3x mb-2">
        <div class="row">
          <!-- Checkout Reviews-->
          <div class="col-xl-9 col-lg-8">
            <div class="checkout-steps">
            	<a class="active" href="jumun_review_form">4. 주문확인</a>
            	<a href="jumun_payment_form"><span class="angle"></span>3. 결제정보</a>
            	<a href="jumun_delivery_form"><span class="angle"></span>2. 배송확인</a>
            	<a href="jumun_address_form"><span class="angle"></span>1. 주소</a></div>
           	<h4>주문 확인</h4>
            <hr class="padding-bottom-1x">
            <div class="table-responsive shopping-cart">
              <table class="table">
                <thead>
                  <tr>
                    <th>상품 이름</th>
                    <th class="text-center">금액</th>
                    <th></th>
                  </tr>
                </thead>
                <tbody>
                  <tr>
                    <td>
                      <div class="product-item"><a class="product-thumb" href="shop-single.html"><img src="img/shop/cart/01.jpg" alt="Product"></a>
                        <div class="product-info">
                          <h4 class="product-title"><a href="shop-single.html"> ${cart.cart_product_name}<small>x ${cart.cart_qty}</small></a></h4><span><em>사이즈:</em> ${cart.cart_product_size}</span>
                        </div>
                      </div>
                    </td>
                    <td class="text-center text-lg text-medium">${cart.cart_tot_price}</td>
                    <td class="text-center"><a class="btn btn-outline-primary btn-sm" href="cart.html">수정</a></td>
                  </tr>
                  <tr>
                    <td>
                      <div class="product-item"><a class="product-thumb" href="shop-single.html"><img src="img/shop/cart/02.jpg" alt="Product"></a>
                        <div class="product-info">
                          <h4 class="product-title"><a href="shop-single.html">Daily Fabric Cap<small>x 2</small></a></h4><span><em>사이즈:</em> XL</span><span><em>색상:</em> Black</span>
                        </div>
                      </div>
                    </td>
                    <td class="text-center text-lg text-medium">$24.89</td>
                    <td class="text-center"><a class="btn btn-outline-primary btn-sm" href="cart.html">수정</a></td>
                  </tr>
                  <tr>
                    <td>
                      <div class="product-item"><a class="product-thumb" href="shop-single.html"><img src="img/shop/cart/03.jpg" alt="Product"></a>
                        <div class="product-info">
                          <h4 class="product-title"><a href="shop-single.html">Cole Haan Crossbody<small>x 1</small></a></h4><span><em>사이즈:</em> -</span><span><em>색상:</em> Turquoise</span>
                        </div>
                      </div>
                    </td>
                    <td class="text-center text-lg text-medium">$200.00</td>
                    <td class="text-center"><a class="btn btn-outline-primary btn-sm" href="cart.html">수정</a></td>
                  </tr>
                </tbody>
              </table>
            </div>
            <div class="shopping-cart-footer">
              <div class="column"></div>
              <div class="column text-lg">카트 합계: <span class="text-medium">$289.68</span></div>
            </div>
            <div class="row padding-top-1x mt-3">
              <div class="col-sm-6">
                <h5>받는분:</h5>
                <ul class="list-unstyled">
                  <li><span class="text-muted">이름:</span>${loginMember.member_name}</li>
                  <li><span class="text-muted">주소:</span>${loginMember.member_address1}</li>
                  <li><span class="text-muted">연락처:</span>${loginMember.member_phone}</li>
                </ul>
              </div>
              <div class="col-sm-6">
                <h5>결제 수단:</h5>
                <ul class="list-unstyled">
                  <li><span class="text-muted">카드 번호:</span>${createJumun.card_no}</li>
                </ul>
              </div>
            </div>
            <div class="checkout-footer margin-top-1x">
              <div class="column hidden-xs-down"><a class="btn btn-outline-secondary" href="jumun_payment_form.html"><i class="icon-arrow-left"></i>&nbsp;결제로 돌아가기</a></div>
              <div class="column"><a class="btn btn-primary" href="jumun_complete_form.html">계속</a></div>
            </div>
          </div>
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
                </table>
              </section>
            </aside>
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