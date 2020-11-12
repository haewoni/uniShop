<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
              <li><a href="unishop_main">Home</a>
              </li>
              <li class="separator">&nbsp;</li>
              <li><a href="shop_main">Shop</a>
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
            <div class="product-gallery">
              <div class="gallery-wrapper">
                <div class="gallery-item video-btn text-center">
                	</div>
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
            <span class="h2 d-block">$ : ${product.product_price}</span>
            <p>
            	${product.product_desc}
            </p>
            <div class="row margin-top-1x">
              <div class="col-sm-4">
                <div class="form-group">
                  <label for="size">Size</label>
                  <form method="post" action="shop_add_cart_action">
                  <select class="cart_product_size" id="cart_product_size" name="cart_product_size">
                    <option>Chooze size</option>
                    <option value="S">S</option>
                    <option value="M">M</option>
			   		<option value="L">L</option>
				  </select>
				  
                   </form>
                   <form method="post" action="shop_add_wishlist_action">
		<input type=submit value="ADD TO WISHLIST" class=TXTFLD > <!-- onclick="javascript:alert('위시리스트 추가 완료');"  -->
		<input type="hidden" name=product_no value="${product.product_no}">
		</form>
		<form method="post" action="shop_delete_wishlist_action">
		<input type=submit value="DELETE FROM WISHLIST" class=TXTFLD  > <!-- onclick="javascript:alert('위시리스트 삭제 완료');" -->
		<input type="hidden" name=product_no value="${product.product_no}">
		</form>
                </div>
              </div>
              <div class="col-sm-3">
                <div class="form-group">
                <form method="post" action="shop_add_cart_action">
                  <label for="cart_qty">Quantity</label>
                  <select class="form_control" name="cart_qty" id="cart_qty">
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
                  <input type=submit value="ADD TO CART" class=TXTFLD > <!-- onclick="javascript:alert('카트 추가 완료');"  -->
				  <input type="hidden" name=product_no value="${product.product_no}">
                  </form>
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
				<a href="shop_add_cart_action?product_no=${product.product_no}">
					<button class="btn btn-outline-primary btn-sm">Add to Cart</button>
				</a>  
				
				
              </div>
            </div>
          </div>
        
        </div>
        
        <!-- Product Tabs-->
        <div class="row padding-top-3x mb-3">
          <div class="col-lg-10 offset-lg-1">
            <ul class="nav nav-tabs" role="tablist">
              <li class="nav-item"><a class="nav-link active" href="#description" data-toggle="tab" role="tab">Description</a></li>
              <li class="nav-item"><a class="nav-link" href="#reviews" data-toggle="tab" role="tab">Reviews (3)</a></li>
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
              <div class="tab-pane fade" id="reviews" role="tabpanel">
                <!-- Review-->
                <div class="comment">
                  <div class="comment-author-ava"><img src="img/reviews/01.jpg" alt="Review author"></div>
                  <div class="comment-body">
                    <div class="comment-header d-flex flex-wrap justify-content-between">
                    <a href="shop_product_review_list?product_no=${product.product_no}">해당 상품 리뷰 리스트</a>
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
                <!-- Review-->
                <div class="comment">
                  <div class="comment-author-ava"><img src="img/reviews/02.jpg" alt="Review author"></div>
                  <div class="comment-body">
                    <div class="comment-header d-flex flex-wrap justify-content-between">
                      <h4 class="comment-title">My husband love his new...</h4>
                      <div class="mb-2">
                          <div class="rating-stars"><i class="icon-star filled"></i><i class="icon-star filled"></i><i class="icon-star filled"></i><i class="icon-star filled"></i><i class="icon-star filled"></i>
                          </div>
                      </div>
                    </div>
                    <p class="comment-text">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>
                    <div class="comment-footer"><span class="comment-meta">Maggie Scott</span></div>
                  </div>
                </div>
                <!-- Review-->
                <div class="comment">
                  <div class="comment-author-ava"><img src="img/reviews/03.jpg" alt="Review author"></div>
                  <div class="comment-body">
                    <div class="comment-header d-flex flex-wrap justify-content-between">
                      <h4 class="comment-title">Soft, comfortable, quite durable...</h4>
                      <div class="mb-2">
                          <div class="rating-stars"><i class="icon-star filled"></i><i class="icon-star filled"></i><i class="icon-star filled"></i><i class="icon-star filled"></i><i class="icon-star"></i>
                          </div>
                      </div>
                    </div>
                    <p class="comment-text">Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt.</p>
                    <div class="comment-footer"><span class="comment-meta">Jacob Hammond</span></div>
                  </div>
                </div>
                <!-- Review Form-->
                <h5 class="mb-30 padding-top-1x">Leave Review</h5>
                <form class="row" method="post">
                  <div class="col-sm-6">
                    <div class="form-group">
                      <label for="review_name">Your Name</label>
                      <input class="form-control form-control-rounded" type="text" id="review_name" required>
                    </div>
                  </div>
                  <div class="col-sm-6">
                    <div class="form-group">
                      <label for="review_email">Your Email</label>
                      <input class="form-control form-control-rounded" type="email" id="review_email" required>
                    </div>
                  </div>
                  <div class="col-sm-6">
                    <div class="form-group">
                      <label for="review_subject">Subject</label>
                      <input class="form-control form-control-rounded" type="text" id="review_subject" required>
                    </div>
                  </div>
                  <div class="col-sm-6">
                    <div class="form-group">
                      <label for="review_rating">Rating</label>
                      <select class="form-control form-control-rounded" id="review_rating">
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
                      <label for="review_text">Review </label>
                      <textarea class="form-control form-control-rounded" id="review_text" rows="8" required></textarea>
                    </div>
                  </div>
                  <div class="col-12 text-right">
                    <button class="btn btn-outline-primary" type="submit">Submit Review</button>
                  </div>
                </form>
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
                <span>$ : ${product.product_price}</span>
              </h4>
              <div class="product-buttons">
				<a href="add_wishlist_action?product_no=${product.product_no}">
					<button class="btn btn-outline-secondary btn-sm btn-wishlist"
						data-toggle="tooltip" title="Whishlist">
						<i class="icon-heart"></i>
					</button>
				</a> 
				<a href="shop_product_detail?product_no=${product.product_no}">
					<button class="btn btn-outline-primary btn-sm">detail</button>
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
    <script src="js/common.js"></script>
  </body>
</html>