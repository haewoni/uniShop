<%@page import="com.itwill.unishop.domain.Cart"%>
<%@page import="com.itwill.unishop.service.CartServiceImpl"%>
<%@page import="org.apache.ibatis.scripting.xmltags.ForEachSqlNode"%>
<%@page import="org.apache.ibatis.reflection.SystemMetaObject"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
            <h1>Cart</h1>
          </div>
          <div class="column">
            <ul class="breadcrumbs">
              <li><a href="index.html">Home</a>
              </li>
              <li class="separator">&nbsp;</li>
              <li>Cart</li>
            </ul>
          </div>
        </div>
      </div>

      <!-- Page Content start------------------------------------------------------------------------------->
      <div class="container padding-bottom-3x mb-1">
        <!-- Alert-->
        <div class="alert alert-info alert-dismissible fade show text-center" style="margin-bottom: 30px;"><span class="alert-close" data-dismiss="alert"></span><img class="d-inline align-center" src="data:image/svg+xml;utf8;base64,PD94bWwgdmVyc2lvbj0iMS4wIiBlbmNvZGluZz0iaXNvLTg4NTktMSI/Pgo8IS0tIEdlbmVyYXRvcjogQWRvYmUgSWxsdXN0cmF0b3IgMTkuMC4wLCBTVkcgRXhwb3J0IFBsdWctSW4gLiBTVkcgVmVyc2lvbjogNi4wMCBCdWlsZCAwKSAgLS0+CjxzdmcgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIiB4bWxuczp4bGluaz0iaHR0cDovL3d3dy53My5vcmcvMTk5OS94bGluayIgdmVyc2lvbj0iMS4xIiBpZD0iTGF5ZXJfMSIgeD0iMHB4IiB5PSIwcHgiIHZpZXdCb3g9IjAgMCA1MTIuMDAzIDUxMi4wMDMiIHN0eWxlPSJlbmFibGUtYmFja2dyb3VuZDpuZXcgMCAwIDUxMi4wMDMgNTEyLjAwMzsiIHhtbDpzcGFjZT0icHJlc2VydmUiIHdpZHRoPSIxNnB4IiBoZWlnaHQ9IjE2cHgiPgo8Zz4KCTxnPgoJCTxnPgoJCQk8cGF0aCBkPSJNMjU2LjAwMSw2NGMtNzAuNTkyLDAtMTI4LDU3LjQwOC0xMjgsMTI4czU3LjQwOCwxMjgsMTI4LDEyOHMxMjgtNTcuNDA4LDEyOC0xMjhTMzI2LjU5Myw2NCwyNTYuMDAxLDY0eiAgICAgIE0yNTYuMDAxLDI5OC42NjdjLTU4LjgxNiwwLTEwNi42NjctNDcuODUxLTEwNi42NjctMTA2LjY2N1MxOTcuMTg1LDg1LjMzMywyNTYuMDAxLDg1LjMzM1MzNjIuNjY4LDEzMy4xODQsMzYyLjY2OCwxOTIgICAgIFMzMTQuODE3LDI5OC42NjcsMjU2LjAwMSwyOTguNjY3eiIgZmlsbD0iIzUwYzZlOSIvPgoJCQk8cGF0aCBkPSJNMzg1LjY0NCwzMzMuMjA1YzM4LjIyOS0zNS4xMzYsNjIuMzU3LTg1LjMzMyw2Mi4zNTctMTQxLjIwNWMwLTEwNS44NTYtODYuMTIzLTE5Mi0xOTItMTkycy0xOTIsODYuMTQ0LTE5MiwxOTIgICAgIGMwLDU1Ljg1MSwyNC4xMjgsMTA2LjA2OSw2Mi4zMzYsMTQxLjE4NEw2NC42ODQsNDk3LjZjLTEuNTM2LDQuMTE3LTAuNDA1LDguNzI1LDIuODM3LDExLjY2OSAgICAgYzIuMDI3LDEuNzkyLDQuNTY1LDIuNzMxLDcuMTQ3LDIuNzMxYzEuNjIxLDAsMy4yNDMtMC4zNjMsNC43NzktMS4xMDlsNzkuNzg3LTM5Ljg5M2w1OC44NTksMzkuMjMyICAgICBjMi42ODgsMS43OTIsNi4xMDEsMi4yNCw5LjE5NSwxLjI4YzMuMDkzLTEuMDAzLDUuNTY4LTMuMzQ5LDYuNjk5LTYuNGwyMy4yOTYtNjIuMTQ0bDIwLjU4Nyw2MS43MzkgICAgIGMxLjA2NywzLjE1NywzLjU0MSw1LjYzMiw2LjY3Nyw2LjcyYzMuMTM2LDEuMDY3LDYuNTkyLDAuNjQsOS4zNjUtMS4yMTZsNTguODU5LTM5LjIzMmw3OS43ODcsMzkuODkzICAgICBjMS41MzYsMC43NjgsMy4xNTcsMS4xMzEsNC43NzksMS4xMzFjMi41ODEsMCw1LjEyLTAuOTM5LDcuMTI1LTIuNzUyYzMuMjY0LTIuOTIzLDQuMzczLTcuNTUyLDIuODM3LTExLjY2OUwzODUuNjQ0LDMzMy4yMDV6ICAgICAgTTI0Ni4wMTcsNDEyLjI2N2wtMjcuMjg1LDcyLjc0N2wtNTIuODIxLTM1LjJjLTMuMi0yLjExMi03LjMxNy0yLjM4OS0xMC42ODgtMC42NjFMOTQuMTg4LDQ3OS42OGw0OS41NzktMTMyLjIyNCAgICAgYzI2Ljg1OSwxOS40MzUsNTguNzk1LDMyLjIxMyw5My41NDcsMzUuNjA1TDI0Ni43LDQxMS4yQzI0Ni40ODcsNDExLjU2MywyNDYuMTY3LDQxMS44NCwyNDYuMDE3LDQxMi4yNjd6IE0yNTYuMDAxLDM2Mi42NjcgICAgIEMxNjEuOSwzNjIuNjY3LDg1LjMzNSwyODYuMTAxLDg1LjMzNSwxOTJTMTYxLjksMjEuMzMzLDI1Ni4wMDEsMjEuMzMzUzQyNi42NjgsOTcuODk5LDQyNi42NjgsMTkyICAgICBTMzUwLjEwMywzNjIuNjY3LDI1Ni4wMDEsMzYyLjY2N3ogTTM1Ni43NTksNDQ5LjEzMWMtMy40MTMtMS43MjgtNy41MDktMS40NzItMTAuNjg4LDAuNjYxbC01Mi4zNzMsMzQuOTIzbC0zMy42NDMtMTAwLjkyOCAgICAgYzQwLjM0MS0wLjg1Myw3Ny41ODktMTQuMTg3LDEwOC4xNi0zNi4zMzFsNDkuNTc5LDEzMi4yMDNMMzU2Ljc1OSw0NDkuMTMxeiIgZmlsbD0iIzUwYzZlOSIvPgoJCTwvZz4KCTwvZz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8L3N2Zz4K" width="18" height="18" alt="Medal icon">&nbsp;&nbsp;With this purchase you will earn <strong>290</strong> Reward Points.</div>
        <!-- Shopping Cart-->
        <div class="table-responsive shopping-cart">
        
        <table class="table">

		  <form method="post" action="cart_update_action_get">   

	            <thead>
	              <tr>
	                <th>상품명</th>
	                <th class="text-center">수량</th>
	                <th class="text-center">상품가격</th>
	                <th class="text-center"><a class="btn btn-sm btn-outline-danger" href="cart_delete_memberId_action_get?member_id=${cart.member_id}" data-toggle="tooltip" title="카트 전체상품 삭제">전체상품 삭제</a></th>
	                <th class="text-center">수량변경</th>
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
                  <div class="product-item"><a class="product-thumb" href="shop_product_detail.jsp?product_no=${cart.product_no}"><img src="IMAGE/${cart.product_image_1}" alt="Product"></a>
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
                <td class="text-center text-lg text-medium"><fmt:formatNumber value="${cart.cart_tot_price}" pattern="###,###,###"/>원</td>
                <td class="text-center"><a class="remove-from-cart" href="cart_delete_cartNo_action_get?cart_no=${cart.cart_no}" data-toggle="tooltip" title="선택상품 삭제"><i class="icon-cross"></i></a></td>
                <td>
	                <input type=submit value="수정" data-toggle="tooltip" title="수량변경" class=TXTFLD onclick="location.href = 'cart_update_action_get'" >
				    <input type="hidden" name=cart_no value="${cart.cart_no}">
                </td>
                
              </tr>
            		
              <c:set var= "sum" value="${sum + cart.cart_tot_price}"/>
			</c:forEach>
			
            </tbody>
          </form>
        </table>
        </div>
        
        <div class="shopping-cart-footer">
          <div class="column">
            <form class="coupon-form" method="post">
              <input class="form-control form-control-sm" type="hidden" placeholder="Coupon code" required>
              <%--<button class="btn btn-outline-primary btn-sm" type="hidden">Apply Coupon</button> --%>
            </form>
          </div>
          <div class="column text-lg">총금액: <span class="text-medium">
          										<fmt:formatNumber value="${sum}" pattern="###,###,###"/>원</span></div>
        </div>
       
         <div class="shopping-cart-footer">
          <div class="column"><a class="btn btn-outline-secondary" href="unishop_main"><i class="icon-arrow-left"></i>&nbsp;쇼핑계속하기</a></div>
          <div class="column">
             				<%--
                              <a class="btn btn-primary" href="#" data-toast data-toast-type="success" 
                                                                  data-toast-position="topRight" 
                                                                  data-toast-icon="icon-circle-check" 
                                                                  data-toast-title="Your cart" 
                                                                  data-toast-message="is updated successfully!">Update Cart</a>
                            --%>
                              <a class="btn btn-success" href="jumun_address_form">주문하기</a></div>
        </div>
        
        <!-- Related Products Carousel-->
        <h3 class="text-center padding-top-2x mt-2 padding-bottom-1x">고객님을 위한 추천상품</h3>

        <!-- Carousel-->
        <div class="owl-carousel" data-owl-carousel="{ &quot;nav&quot;: false, &quot;dots&quot;: true, &quot;margin&quot;: 30, &quot;responsive&quot;: {&quot;0&quot;:{&quot;items&quot;:1},&quot;576&quot;:{&quot;items&quot;:2},&quot;768&quot;:{&quot;items&quot;:3},&quot;991&quot;:{&quot;items&quot;:4},&quot;1200&quot;:{&quot;items&quot;:4}} }">
			<c:forEach  items="${productList}" 
						var="product"  
						begin="0"  
						step="1" 
						end="${productList.size()}"
						varStatus="status">
			
          <!-- Product-->
          <div class="grid-item">
            <div class="product-card">
              <div class="product-badge text-danger">${product.product_no}</div><a class="product-thumb" href="shop_product_detail.jsp?product_no=${product.product_no}"><img src="IMAGE/${product.product_image_1}" alt="Product"></a>
              <h3 class="product-title"><a href="shop_product_detail.jsp?product_no=${product.product_no}">${product.product_name}</a></h3>
              <h4 class="product-price">
                <del></del>${product.product_price}
              </h4>
              
              <%-- 
              <div class="product-buttons">
                <button class="btn btn-outline-secondary btn-sm btn-wishlist" onclick="location.href = 'wishList_insert_action_get?product_no=${product.product_no}'"  data-toggle="tooltip" title="Wishlist"><i class="icon-heart"></i></button>
                <button class="btn btn-outline-primary btn-sm" onclick="location.href = 'cart_insert_action_get?cart_tot_price=${product.product_price}&product_no=${product.product_no}'"  
                                                               data-toast data-toast-type="success" 
                                                               data-toast-position="topRight" 
                                                               data-toast-icon="icon-circle-check" 
                                                               data-toast-title="Product" 
                                                               data-toast-message="successfuly added to cart!">카트 추가</button>
              </div>
              --%>
              <div class="product-buttons">
                <button class="btn btn-outline-secondary btn-sm btn-wishlist" onclick="location.href = 'wishList_insert_action_get?product_no=${product.product_no}'"  data-toggle="tooltip" title="Wishlist"><i class="icon-heart"></i></button>
                <button class="btn btn-outline-primary btn-sm" onclick="location.href = 'shop-single.jsp?product_no=${cart.product_no}'"  
                                                               data-toast data-toast-type="success" 
                                                               data-toast-position="topRight" 
                                                               data-toast-icon="icon-circle-check" 
                                                               data-toast-title="Product" 
                                                               data-toast-message="successfuly Move to Product!">상품상세</button>
              </div>
            </div>
          </div>
          
            </c:forEach>    
        </div>
        </div>
	  <!-- Page Content end------------------------------------------------------------------------------->
 
      <!-- Site Footer-->
      <jsp:include page="common_bottom.jsp"/>
    </div>
    <!-- Back To Top Button--><a class="scroll-to-top-btn" href="#"><i class="icon-arrow-up"></i></a>
    <!-- Backdrop-->
    <div class="쇼핑계속하기"  href="unishop_main"></div>
    <!-- JavaScript (jQuery) libraries, plugins and custom scripts-->
    <script src="js/vendor.min.js"></script>
    <script src="js/scripts.min.js"></script>
  </body>
</html>