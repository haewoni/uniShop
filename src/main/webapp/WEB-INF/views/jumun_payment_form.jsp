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
          <!-- Checkout Adress-->
          <div class="col-xl-9 col-lg-8">
            <div class="checkout-steps">
            	<a href="jumun_review_form">4. 주문확인</a>
            	<a class="active" href="jumun_payment_form"><span class="angle"></span>3. 결제정보</a>
            	<a href="jumun_delivery_form"><span class="angle"></span>2. 배송확인</a>
            	<a href="jumun_address_form"><span class="angle"></span>1. 주소</a></div>
            <h4>결제방법을 선택하시오</h4>
            <hr class="padding-bottom-1x">
            <div class="accordion" id="accordion" role="tablist">
              <div class="card">
                <div class="card-header" role="tab">
                  <h6><a href="#card" data-toggle="collapse"><i class="icon-columns"></i>신용카드 결제</a></h6>
                </div>
                <div class="collapse show" id="card" data-parent="#accordion" role="tabpanel">
                  <div class="card-body">
                    <p>결제 가능한 신용카드:&nbsp;<img class="d-inline-block align-middle" src="img/credit-cards.png" style="width: 120px;" alt="Cerdit Cards"></p>
                    <div class="card-wrapper"></div>
                    <form class="interactive-credit-card row">
                      <div class="form-group col-sm-6">
                        <input class="form-control" type="text" name="card_no" placeholder="카드 번호" required>
                      </div>
                      <div class="form-group col-sm-6">
                        <input class="form-control" type="text" name="card_member_name" placeholder="이름" required>
                      </div>
                      <div class="form-group col-sm-3">
                        <input class="form-control" type="text" name="card_expire_date" placeholder="MM/YY" required>
                      </div>
                      <div class="form-group col-sm-3">
                        <input class="form-control" type="text" name="card_cvc" placeholder="카드CVC" required>
                      </div>
                      <div class="col-sm-6">
                        <button class="btn btn-outline-primary btn-block margin-top-none" type="submit">계속</button>
                      </div>
                    </form>
                  </div>
                </div>
              </div>
            
            <div class="checkout-footer margin-top-1x">
              <div class="column"><a class="btn btn-outline-secondary" href="jumun_shipping_form.html"><i class="icon-arrow-left"></i><span class="hidden-xs-down">&nbsp;배송으로 돌아가기</span></a></div>
              <div class="column"><a class="btn btn-primary" href="jumun_review_form.html"><span class="hidden-xs-down">계속&nbsp;</span><i class="icon-arrow-right"></i></a></div>
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
    <script src="js/card.min.js"></script>
    <script src="js/scripts.min.js"></script>
  </body>
</html>