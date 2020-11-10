<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="login_check.jspf" %> 
	<jsp:include page="common_top.jsp"/>
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
            <div class="checkout-steps"><a href="jumun_review_form">4. 주문확인</a>
            <a href="jumun_payment_form"><span class="angle"></span>3. 결제정보</a>
            <a class="active" href="jumun_delivery_form"><span class="angle"></span>2. 배송방법</a>
            <a class="completed" href="jumun_address_form"><span class="angle"></span>
            <span class="step-indicator icon-circle-check"></span>1. 주소</a></div>
            <h4>배송방법을 선택하시오</h4>
            <hr class="padding-bottom-1x">
            <div class="table-responsive">
              <table class="table table-hover">
                <thead class="thead-default">
                  <tr>
                    <th></th>
                    <th>배송 방법</th>
                    <th>평균 배송 시간</th>
                    <th>배송료</th>
                  </tr>
                </thead>
                <tbody>
                  <tr>
                    <td class="align-middle">
                      <div class="custom-control custom-radio mb-0">
                        <input class="custom-control-input" type="radio" id="courier" name="shipping-method" checked>
                        <label class="custom-control-label" for="courier"></label>
                      </div>
                    </td>
                    <td class="align-middle"><span class="text-medium">일반배송</span><br><span class="text-muted text-sm">*제주도 및 도서 산간지역은 기본배송료 + 추가운임비</span></td>
                    <td class="align-middle">3 - 4 일</td>
                    <td class="align-middle">3000 원</td>
                  </tr>
                  <tr>
                    <td class="align-middle">
                      <div class="custom-control custom-radio mb-0">
                        <input class="custom-control-input" type="radio" id="local" name="shipping-method">
                        <label class="custom-control-label" for="local"></label>
                      </div>
                    </td>
                    <td class="align-middle"><span class="text-medium">특급배송</span><br><span class="text-muted text-sm">*제주도 및 도서 산간지역은 기본배송료 + 추가운임비</span></td>
                    <td class="align-middle">1 - 2 일</td>
                    <td class="align-middle">6000 원</td>
                  </tr>
                </tbody>
              </table>
            </div>
            <div class="checkout-footer margin-top-1x">
              <div class="column"><a class="btn btn-outline-secondary" href="checkout-address.html"><i class="icon-arrow-left"></i><span class="hidden-xs-down">&nbsp;Back</span></a></div>
              <div class="column"><a class="btn btn-primary" href="jumun_payment_form"><span class="hidden-xs-down">계속&nbsp;</span><i class="icon-arrow-right"></i></a></div>
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
                  </tr>
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