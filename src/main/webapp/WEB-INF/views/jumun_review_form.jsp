<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@page import="org.apache.ibatis.scripting.xmltags.ForEachSqlNode"%>
<%@page import="org.apache.ibatis.reflection.SystemMetaObject"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@page import="java.text.DecimalFormat"%>
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
              <li><a href="unishop_main">Home</a>
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
               <a class="completed" href="jumun_payment_form"><span class="angle"></span><span class="step-indicator icon-circle-check"></span>3. 결제정보</a>
               <a class="completed" href="jumun_delivery_form"><span class="angle"></span><span class="step-indicator icon-circle-check"></span>2. 배송확인</a>
               <a class="completed" href="jumun_address_form"><span class="angle"></span><span class="step-indicator icon-circle-check"></span>1. 주소</a>
               </div>
              <h4>주문 확인</h4>
            <hr class="padding-bottom-1x">
            <div class="table-responsive shopping-cart">
              <table class="table">
                <thead>
                  <tr>
                    <th>상품명</th>
                    <th class="text-center">수량</th>
                   <th class="text-center">가격</th>
                    <th class="text-center"></th>
                    <th></th>
                  </tr>
                </thead>
                <tbody>
                 <c:set var = "sum" value = "0" />
          

         <c:forEach  items="${cartList}" 
                  var="cart"  
                  begin="0"  
                  step="1" 
                  end="${cartList.size()}"
                  varStatus="status">


              <tr>
              
                 <td>
                  <div class="product-item"><a class="product-thumb" href="shop-single.jsp?product_no=${cart.product_no}"><img src="IMAGE/${cart.product_image_1}" alt="Product"></a>
                    <div class="product-info">
                      <h4 class="product-title"><a href="shop-single.html">${cart.product_name}</a></h4><span><em>Color:</em>${cart.cart_product_size}</span><span><em>Product No:</em>${cart.product_no}</span>
                    </div>
                  </div>
                 </td>

                 <td class="text-center">
                  <div class="count-input">
                    <select name="cart_qty" class="form-control">
                   <option value="0" selected="selected">${cart.cart_qty}</option>
                   <option value="1">1</option>
                   <option value="2">2</option>
                   <option value="3">3</option>
                   <option value="4">4</option>
                   <option value="5">5</option>
                   <option value="6">6</option>
                   <option value="7">7</option>
                   <option value="8">8</option>
                   <option value="9">9</option>
                   <option value="10">10</option>
                 </select>
                  </div>
                 </td>
                 <td class="text-center text-lg text-medium">${cart.cart_tot_price}</td>
                <td class="text-center"><a class="remove-from-cart" href="cart_delete_cartNo_action_get?cart_no=${cart.cart_no}" data-toggle="tooltip" title="선택상품 삭제"><i class="icon-cross"></i></a></td>
                <td>
                   <input type=submit value="수량" data-toggle="tooltip" title="수량변경" class=TXTFLD onclick="location.href = 'cart_update_action_get'" >
                <input type="hidden" name=cart_no value="${cart.cart_no}">
                </td>
                
              </tr>
                  
         </c:forEach>
                
                </tbody>
              </table>
            </div>
            <div class="shopping-cart-footer">
              <div class="column"></div>
              <div class="column text-lg">카트 합계: <span class="text-medium">${cart_subtotal}</span></div>
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
              <div class="column hidden-xs-down"><a class="btn btn-outline-secondary" href="jumun_payment_form"><i class="icon-arrow-left"></i>&nbsp;결제로 돌아가기</a></div>
              <div class="column"><a class="btn btn-primary" href="jumun_review_action">계속</a></div>
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
                    <td class="text-medium">${delivery_fee}</td>
                  </tr>
                  <tr>
                    <td>총 금액:</td>
                    <td class="text-lg text-medium">${cart_subtotal + delivery_fee}</td>
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