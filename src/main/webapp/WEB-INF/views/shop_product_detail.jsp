<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

	<jsp:include page="common_top.jsp"/>
    <!-- Off-Canvas Wrapper-->
    <div class="offcanvas-wrapper">
      <!-- Page Title-->
      <div class="page-title">
        <div class="container">
          <div class="column">
            <h1>Single Product</h1>
          </div>
          <div class="column">
            <ul class="breadcrumbs">
              <li><a href="index.html">Home</a>
              </li>
              <li class="separator">&nbsp;</li>
              <li><a href="shop-grid-ls.html">Shop</a>
              </li>
              <li class="separator">&nbsp;</li>
              <li>Single Product</li>
            </ul>
          </div>
        </div>
      </div>
      <!-- Page Content-->
      <div class="container padding-bottom-3x mb-1">

        <div class="row">
          <!-- Poduct Gallery-->
          <div class="col-md-6">
            <div class="product-gallery"><span class="product-badge text-danger">30% Off</span>
              <div class="gallery-wrapper">
                <div class="gallery-item video-btn text-center"><a href="#" data-toggle="tooltip" data-type="video" data-video="&lt;div class=&quot;wrapper&quot;&gt;&lt;div class=&quot;video-wrapper&quot;&gt;&lt;iframe class=&quot;pswp__video&quot; width=&quot;960&quot; height=&quot;640&quot; src=&quot;//www.youtube.com/embed/B81qd2v6alw?rel=0&quot; frameborder=&quot;0&quot; allowfullscreen&gt;&lt;/iframe&gt;&lt;/div&gt;&lt;/div&gt;" title="Watch video"></a></div>
              </div>
              <div class="product-carousel owl-carousel gallery-wrapper">
                <div class="gallery-item" data-hash="one"><a href="IMAGE/${product.product_image_1}" data-size="1000x667"><img src="IMAGE/${product.product_image_1}" alt="Product"></a></div>
                <div class="gallery-item" data-hash="two"><a href="IMAGE/${product.product_image_2}" data-size="1000x667"><img src="IMAGE/${product.product_image_2}" alt="Product"></a></div>
                <div class="gallery-item" data-hash="three"><a href="IMAGE/${product.product_image_3}" data-size="1000x667"><img src="IMAGE/${product.product_image_3}" alt="Product"></a></div>
                <div class="gallery-item" data-hash="four"><a href="IMAGE/${product.product_image_4}" data-size="1000x667"><img src="IMAGE/${product.product_image_4}" alt="Product"></a></div>
                <div class="gallery-item" data-hash="five"><a href="IMAGE/${product.product_image_5}" data-size="1000x667"><img src="IMAGE/${product.product_image_5}" alt="Product"></a></div>
              </div>
              <ul class="product-thumbnails">
                <li class="active"><a href="#one"><img src="IMAGE/${product.product_image_1}" alt="Product"></a></li>
                <li><a href="#two"><img src="IMAGE/${product.product_image_2}" alt="Product"></a></li>
                <li><a href="#three"><img src="IMAGE/${product.product_image_3}" alt="Product"></a></li>
                <li><a href="#four"><img src="IMAGE/${product.product_image_4}" alt="Product"></a></li>
                <li><a href="#five"><img src="IMAGE/${product.product_image_5}" alt="Product"></a></li>
              </ul>
            </div>
          </div>
          <!-- Product Info-->
          <div class="col-md-6">
            <div class="padding-top-2x mt-2 hidden-md-up"></div>
              <div class="rating-stars"><i class="icon-star filled"></i><i class="icon-star filled"></i><i class="icon-star filled"></i><i class="icon-star filled"></i><i class="icon-star"></i>
              </div><span class="text-muted align-middle">&nbsp;&nbsp;4.2 | 3 customer reviews</span>
            <h2 class="padding-top-1x text-normal">${product.product_name}</h2>
            <span class="h2 d-block"><fmt:formatNumber value="${product.product_price}" pattern="###,###,###"/>원</span>
            <p>
            	${product.product_desc}
            </p>
            <div class="row margin-top-1x">
              <div class="col-sm-4">
                <div class="form-group">
                  <label for="size">Size</label>
                  
                  <%--<select class="cart_product_size" id="cart_product_size" name="cart_product_size" onChange="getSelectSize(size);"> --%>
                  <select class="cart_product_size" id="cart_product_size" name="cart_product_size" >
                    <option>size선택</option>
                    <option value="S">S</option>
                    <option value="M">M</option>
			   		<option value="L">L</option>
				  </select>
                </div>
              </div>

              <!--
              <div class="col-sm-5">
                <div class="form-group">
                  <label for="color">Choose color</label>
                  <select class="form-control" id="color">
                    <option>White/Red/Blue</option>
                    <option>Black/Orange/Green</option>
                    <option>Gray/Purple/White</option>
                  </select>
                </div>
              </div>
               -->
              
              <div class="col-sm-3">
                <div class="form-group">
                  <label for="quantity">Quantity</label>
                  <%--<select class="cart_qty" id="cart_qty" name="cart_qty"  onChange="getSelectQty(qty);"> --%>
                  <select class="cart_qty" id="cart_qty" name="cart_qty">
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
              </div>
            </div>
            <div class="pt-1 mb-2"><span class="text-medium">제품번호:</span> #${product.product_no}</div>
            <div class="padding-bottom-1x mb-2"><span class="text-medium">Categories:&nbsp;</span><a class="navi-link" href="#">Men’s shoes,</a><a class="navi-link" href="#"> Snickers,</a><a class="navi-link" href="#"> Sport shoes</a></div>
            <hr class="mb-3">
            <div class="d-flex flex-wrap justify-content-between">
              <div class="entry-share mt-2 mb-2"><span class="text-muted">Share:</span>
                <div class="share-links"><a class="social-button shape-circle sb-facebook" href="#" data-toggle="tooltip" data-placement="top" title="Facebook"><i class="socicon-facebook"></i></a><a class="social-button shape-circle sb-twitter" href="#" data-toggle="tooltip" data-placement="top" title="Twitter"><i class="socicon-twitter"></i></a><a class="social-button shape-circle sb-instagram" href="#" data-toggle="tooltip" data-placement="top" title="Instagram"><i class="socicon-instagram"></i></a><a class="social-button shape-circle sb-google-plus" href="#" data-toggle="tooltip" data-placement="top" title="Google +"><i class="socicon-googleplus"></i></a></div>
              </div>
              <div class="sp-buttons mt-2 mb-2">
				 
              	<span>
	              	<a href="shop_add_wishlist_action?product_no=${product.product_no}">
						<button class="btn btn-outline-secondary btn-sm btn-wishlist"
							data-toggle="tooltip" title="Whishlist">
							<i class="icon-heart"></i>
						</button>
					</a>
				</span> 
				<a href="shop_delete_wishlist_action?product_no=${product.product_no}">
					<button class="btn btn-outline-primary btn-sm">DELETE FROM WISHLIST</button>
				</a>

				<a  href="#">
					<button id="rest_add_cart_button" class="btn btn-outline-primary btn-sm" product_no="${product.product_no}" >Add to Cart</button>
				</a>
				
              </div>
            </div>
          </div>
        </div>

        <!-- Product Tabs-->
        <div class="row padding-top-3x mb-3">
          <div class="col-lg-10 offset-lg-1">
            <ul class="nav nav-tabs" role="tablist">
              <li class="nav-item"><a class="nav-link active" href="#description" data-toggle="tab" role="tab" product_no="${product.product_no}">Description</a></li>
              <li class="nav-item"><a class="nav-link" href="#reviews" data-toggle="tab" role="tab" product_no="${product.product_no}">Reviews (3)</a></li>
            </ul>
            <div class="tab-content">
              <div class="tab-pane fade show active" id="description" role="tabpanel">
                <p>제품 설명 : ${product.product_desc}</p>
                <div class="row">
                  <div class="col-sm-6">
                    <dl>
                      <dt>Materials:</dt>
                      <dd>Leather, Cotton, Rubber, Foam</dd>
                      <dt>Available Sizes:</dt>
                      <dd>8.5, 9.0, 9.5, 10.0, 10.5, 11.0, 11.5</dd>
                      <dt>Available Colors:</dt>
                      <dd>White/Red/Blue, Black/Orange/Green</dd>
                    </dl>
                  </div>
                  <div class="col-sm-6">
                    <dl>
                      <dt>Model Year:</dt>
                      <dd>2016</dd>
                      <dt>Manufacturer:</dt>
                      <dd>Reebok Inc.</dd>
                      <dt>Made In:</dt>
                      <dd>Taiwan</dd>
                    </dl>
                  </div>
                </div>
              </div>
              <div class="tab-pane fade" data-target="reviews" id="reviews" role="tabpanel">
                <!-- Review
                <div class="comment">
                  <div class="comment-author-ava"><img src="img/reviews/01.jpg" alt="Review author"></div>
                  <div class="comment-body">
                    <div class="comment-header d-flex flex-wrap justify-content-between"><a href="shop_product_review_list?product_no=${product.product_no}">해당 상품 리뷰 리스트</a>
                      <h4 class="comment-title">Average quality for the price</h4>
                      <div class="mb-2">
                          <div class="rating-stars"><i class="icon-star filled"></i><i class="icon-star filled"></i><i class="icon-star filled"></i><i class="icon-star"></i><i class="icon-star"></i>
                          </div>
                      </div>
                    </div>
                    <p class="comment-text">At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga.</p>
                    <div class="comment-footer"><span class="comment-meta">Francis Burton</span></div>
                  </div>
                </div>
                -->
                <!-- Review Form
                <h5 class="mb-30 padding-top-1x">제품 후기</h5>
                <form class="row" name = "review_form" id = "review_form" method="post">
                  <div class="col-sm-6">
                    <div class="form-group">
                      <label for="review_name">성명</label>
                      <input class="form-control form-control-rounded" type="text" name="review_name" id="review_name"  value="${loginMember.member_name}" required>
                    </div>
                  </div>
                  <div class="col-sm-6">
                    <div class="form-group">
                      <label for="review_email">이메일</label>
                      <input class="form-control form-control-rounded" type="text" name = "review_email" id="review_email" required>
                    </div>
                  </div>
                  <div class="col-sm-6">
                    <div class="form-group">
                      <label for="review_subject">제목</label>
                      <input class="form-control form-control-rounded" type="text" name="review_title" id="review_subject" required>
                    </div>
                  </div>
                  <div class="col-sm-6">
                    <div class="form-group">
                      <label for="review_rating">별점</label>
                      <select class="form-control form-control-rounded" name = "review_rating" id="review_rating">
                        <option>5 Stars</option>
                        <option>4 Stars</option>
                        <option>3 Stars</option>
                        <option>2 Stars</option>
                        <option>1 Star</option>
                      </select>
                    </div>
                  </div>
                  <div class="col-12">
                    <div class="form-group">
                      <label for="review_text">제품 후기</label>
                      <textarea class="form-control form-control-rounded" name = "review_content" id="review_text" rows="8" required></textarea>
                    </div>
                  </div>
                  <div class="col-12 text-right">
                    <button class="btn btn-outline-primary" id="add_review_button" >후기 작성</button>
                  </div>
                </form>
                -->
              </div>
            </div>
          </div>
        </div>
        <!-- Related Products Carousel-->
        <h3 class="text-center padding-top-2x mt-2 padding-bottom-1x">You May Also Like</h3>
        <!-- Carousel-->
        <div class="owl-carousel" data-owl-carousel="{ &quot;nav&quot;: false, &quot;dots&quot;: true, &quot;margin&quot;: 30, &quot;responsive&quot;: {&quot;0&quot;:{&quot;items&quot;:1},&quot;576&quot;:{&quot;items&quot;:2},&quot;768&quot;:{&quot;items&quot;:3},&quot;991&quot;:{&quot;items&quot;:4},&quot;1200&quot;:{&quot;items&quot;:4}} }">

			<c:forEach  items="${recommendedProductList}" 
				var="product"  
				begin="0"  
				step="1" 
				end="${recommendedProductList.size()}"
				varStatus="status">

          <!-- Product-->
            <div class="grid-item">
            <div class="product-card">
              <a class="product-thumb" href="shop_product_detail?product_no=${product.product_no}">
              	<img src="IMAGE/${product.product_image_1}" alt="Product">
              </a>
              <h3 class="product-title"><a href="shop_product_detail?product_no=${product.product_no}">${product.product_name}</a></h3>
              <h4 class="product-price">
                <span><fmt:formatNumber value="${product.product_price}" pattern="###,###,###"/>원</span>
              </h4>
              <div class="product-buttons">
				<a href="shop_add_wishlist_action?product_no=${product.product_no}">
					<button class="btn btn-outline-secondary btn-sm btn-wishlist"
						data-toggle="tooltip" title="Whishlist">
						<i class="icon-heart"></i>
					</button>
				</a> 
				<a href="shop_product_detail?product_no=${product.product_no}">
					<button class="btn btn-outline-primary btn-sm">상품상세</button>
				</a>

			  </div>
            </div>
            
          </div>
          
         </c:forEach>

      <!-- Site Footer-->

      <jsp:include page="common_bottom.jsp"/>

    </div>
    <!-- Photoswipe container-->
    <div class="pswp" tabindex="-1" role="dialog" aria-hidden="true">
      <div class="pswp__bg"></div>
      <div class="pswp__scroll-wrap">
        <div class="pswp__container">
          <div class="pswp__item"></div>
          <div class="pswp__item"></div>
          <div class="pswp__item"></div>
        </div>
        <div class="pswp__ui pswp__ui--hidden">
          <div class="pswp__top-bar">
            <div class="pswp__counter"></div>
            <button class="pswp__button pswp__button--close" title="Close (Esc)"></button>
            <button class="pswp__button pswp__button--share" title="Share"></button>
            <button class="pswp__button pswp__button--fs" title="Toggle fullscreen"></button>
            <button class="pswp__button pswp__button--zoom" title="Zoom in/out"></button>
            <div class="pswp__preloader">
              <div class="pswp__preloader__icn">
                <div class="pswp__preloader__cut">
                  <div class="pswp__preloader__donut"></div>
                </div>
              </div>
            </div>
          </div>
          <div class="pswp__share-modal pswp__share-modal--hidden pswp__single-tap">
            <div class="pswp__share-tooltip"></div>
          </div>
          <button class="pswp__button pswp__button--arrow--left" title="Previous (arrow left)"></button>
          <button class="pswp__button pswp__button--arrow--right" title="Next (arrow right)"></button>
          <div class="pswp__caption">
            <div class="pswp__caption__center"></div>
          </div>
        </div>
      </div>
    </div>
    <!-- Back To Top Button--><a class="scroll-to-top-btn" href="#"><i class="icon-arrow-up"></i></a>
    <!-- Backdrop-->
    <div class="site-backdrop"></div>
    <!-- JavaScript (jQuery) libraries, plugins and custom scripts-->
    <script src="js/vendor.min.js"></script>
    <script src="js/scripts.min.js"></script>
    <script src="js/cart.js"></script>
  </body>
</html>