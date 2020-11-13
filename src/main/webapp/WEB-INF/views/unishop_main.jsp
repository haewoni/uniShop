<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
	<jsp:include page="common_top.jsp"/>
    <!-- Off-Canvas Wrapper-->
    <div class="offcanvas-wrapper">
      <!-- Page Content-->
      <!-- Category-->
      <div class="container-fluid px-0">
        <div class="row mx-0">
          <!-- Category-->
          <div class="category-card col-md-6 col-sm-12 fw-section padding-top-7x padding-bottom-7x" style="background-image: url(img/banners/home05.jpg);"><span class="overlay" style="background-color: #000; opacity: .5;"></span>
            <div class="d-flex justify-content-center">
              <div class="px-3 text-center">
                <h2 class="display-4 text-white text-shadow">Male Outer</h2>
                <h5 class="text-white text-normal mb-3 opacity-60 text-shadow">Starting from $56.00</h5>
                <div class="view-button"><a class="btn btn-primary" href=product_ManOuterList>View Collection</a></div>
              </div>
            </div>
          </div>
          <!-- Category-->
          <div class="category-card col-md-6 col-sm-12 fw-section padding-top-7x padding-bottom-7x" style="background-image: url(img/banners/home04.jpg);"><span class="overlay" style="background-color: #000; opacity: .5;"></span>
            <div class="d-flex justify-content-center">
              <div class="px-3 text-center">
                <h2 class="display-4 text-white text-shadow">Female Outer</h2>
                <h5 class="text-white text-normal mb-3 opacity-60 text-shadow">Starting from $27.00</h5>
                <div class="view-button"><a class="btn btn-primary" href="product_FemaleOuter_list">View Collection</a></div>
              </div>
            </div>
          </div>
        </div>
        <div class="row mx-0">
          <!-- Category-->
          <div class="category-card col-md-6 col-sm-12 fw-section padding-top-7x padding-bottom-7x" style="background-image: url(img/banners/home01.jpg);"><span class="overlay" style="background-color: #000; opacity: .5;"></span>
            <div class="d-flex justify-content-center">
              <div class="px-3 text-center">
                <h2 class="display-4 text-white text-shadow">Male Pants</h2>
                <h5 class="text-white text-normal mb-3 opacity-60 text-shadow">Starting from $35.99</h5>
                <div class="view-button"><a class="btn btn-primary" href="product_ManPantslist">View Collection</a></div>
              </div>
            </div>
          </div>
          <!-- Category-->
          <div class="category-card col-md-6 col-sm-12 fw-section padding-top-7x padding-bottom-7x" style="background-image: url(img/banners/home06.jpg);"><span class="overlay" style="background-color: #000; opacity: .5;"></span>
            <div class="d-flex justify-content-center">
              <div class="px-3 text-center">
                <h2 class="display-4 text-white text-shadow">Female Skirts</h2>
                <h5 class="text-white text-normal mb-3 opacity-60 text-shadow">Starting from $79.99.00</h5>
                <div class="view-button"><a class="btn btn-primary" href="product_FemaleSkirt_list">View Collection</a></div>
              </div>
            </div>
          </div>
        </div>
      </div>
       <!-- Featured Products (Grid)-->
       
      <section class="container padding-top-3x padding-bottom-3x">
        <h3 class="text-center mb-30">Featured Products</h3>
        <div class="isotope-grid cols-4 mb-2">
          <div class="gutter-sizer"></div>
          <div class="grid-sizer"></div>
			
		<!-- Product-->
		
          <div class="grid-item">
            <div class="product-card">
	            <c:forEach  items="${productList}" 
						var="product"  
						begin="0"  
						step="1" 
						end="${productList.size()-8}"
						varStatus="status">
							<form id="product_detail_cart" name= "product_detail_cart" method="post">
		            		<input type="hidden" name="product_no" value="${product.product_no}">
		              <a class="product-thumb" href="shop_product_detail?product_no=${product.product_no}">
		              	<img src="IMAGE/${product.product_image_1}" width=100, height=100" alt="Product">
		              </a>
	              <h3 class="product-title"><a href="shop_product_detail?product_no=${product.product_no}">${product.product_name}</a></h3>
	              <h4 class="product-price">
	              	<span style="size: 1px">$ : ${product.product_price}</span>
	              </h4>
	              
	              <div class="product-buttons">
	                 <button class="btn btn-outline-secondary btn-sm btn-wishlist" 
	                		 data-toggle="tooltip" 
	                		 title="" 
	                		 data-original-title="Whishlist">
	                		<i class="icon-heart" id="add_wishlist_button"></i>
	                 </button>
	                <a href="shop_product_detail?product_no=${product.product_no}">
	                	<button class="btn btn-outline-primary btn-sm">detail</button>	
	                </a>
	              </div>
	              </form>
	            </c:forEach>  
            </div>
          </div>
         
          
         
          <!-- Product -->
          <div class="grid-item">
            <div class="product-card">
	            <c:forEach  items="${productList}" 
						var="product"  
						begin="1"  
						step="1" 
						end="${productList.size()-7}"
						varStatus="status">
							<form id="product_detail_cart1" name= "product_detail_cart1" method="post">
		            		<input type="hidden" name="product_no" value="${product.product_no}">
		              <a class="product-thumb" href="shop_product_detail?product_no=${product.product_no}">
		              	<img src="IMAGE/${product.product_image_1}" width=100, height=100" alt="Product">
		              </a>
	              <h3 class="product-title"><a href="shop_product_detail?product_no=${product.product_no}">${product.product_name}</a></h3>
	              <h4 class="product-price">
	              	<span style="size: 1px">$ : ${product.product_price}</span>
	              </h4>
	              
	              <div class="product-buttons">
	                 <button class="btn btn-outline-secondary btn-sm btn-wishlist" 
	                		 data-toggle="tooltip" 
	                		 title="" 
	                		 data-original-title="Whishlist">
	                		<i class="icon-heart" id="add_wishlist_button1"></i>
	                 </button>
	                <a href="shop_product_detail?product_no=${product.product_no}">
	                	<button class="btn btn-outline-primary btn-sm">detail</button>	
	                </a>
	              </div>
	              </form>
	            </c:forEach>  
            </div>
          </div>
         
          
          <!-- Product -->
          <div class="grid-item">
            <div class="product-card">
            <c:forEach  items="${productList}" 
					var="product"  
					begin="2"  
					step="1" 
					end="${productList.size()-6}"
					varStatus="status">
							
	              <a class="product-thumb" href="shop_product_detail?product_no=${product.product_no}">
	              	<img src="IMAGE/${product.product_image_1}" width=100, height=100" alt="Product">
	              </a>
              <h3 class="product-title"><a href="shop_product_detail?product_no=${product.product_no}">${product.product_name}</a></h3>
              <h4 class="product-price">
              	<span style="size: 1px">$ : ${product.product_price}</span>
              </h4>
              <div class="product-buttons">
                <button class="btn btn-outline-secondary btn-sm btn-wishlist" 
                		data-toggle="tooltip" title="" data-original-title="Whishlist">
                		<i class="icon-heart"
                		id="add_wishlist_button"></i></button>
                <a href="shop_product_detail?product_no=${product.product_no}">
                	<button class="btn btn-outline-primary btn-sm">detail</button>	
                </a>
              </div>
            </c:forEach>  
            </div>
          </div>

          <!-- Product -->
          <div class="grid-item">
            <div class="product-card">
            <c:forEach  items="${productList}" 
					var="product"  
					begin="3"  
					step="1" 
					end="${productList.size()-5}"
					varStatus="status">
	              <a class="product-thumb" href="shop_product_detail?product_no=${product.product_no}">
	              	<img src="IMAGE/${product.product_image_1}" width=100, height=100" alt="Product">
	              </a>
              <h3 class="product-title"><a href="shop_product_detail?product_no=${product.product_no}">${product.product_name}</a></h3>
              <h4 class="product-price">
              	<span style="size: 1px">$ : ${product.product_price}</span>
              </h4>
              <div class="product-buttons">
                <a href="add_wishlist_action?product_no=${product.product_no}">
	                <button class="btn btn-outline-secondary btn-sm btn-wishlist" data-toggle="tooltip" title="Whishlist">
	                	<i class="icon-heart"></i>
	                </button>
                </a>
                <a href="shop_product_detail?product_no=${product.product_no}">
                	<button class="btn btn-outline-primary btn-sm">detail</button>	
                </a>
              </div>
            </c:forEach>  
            </div>
          </div>
          
          <!-- Product -->
          <div class="grid-item">
            <div class="product-card">
            <c:forEach  items="${productList}" 
					var="product"  
					begin="4"  
					step="1" 
					end="${productList.size()-4}"
					varStatus="status">
	              <a class="product-thumb" href="shop_product_detail?product_no=${product.product_no}">
	              	<img src="IMAGE/${product.product_image_1}" width=100, height=100" alt="Product">
	              </a>
              <h3 class="product-title"><a href="shop_product_detail?product_no=${product.product_no}">${product.product_name}</a></h3>
              <h4 class="product-price">
              	<span style="size: 1px">$ : ${product.product_price}</span>
              </h4>
              <div class="product-buttons">
                <a href="add_wishlist_action?product_no=${product.product_no}">
	                <button class="btn btn-outline-secondary btn-sm btn-wishlist" data-toggle="tooltip" title="Whishlist">
	                	<i class="icon-heart"></i>
	                </button>
                </a>
                <a href="shop_product_detail?product_no=${product.product_no}">
                	<button class="btn btn-outline-primary btn-sm">detail</button>	
                </a>
              </div>
            </c:forEach>  
            </div>
          </div>
          
          <!-- Product -->
          <div class="grid-item">
            <div class="product-card">
            <c:forEach  items="${productList}" 
					var="product"  
					begin="5"  
					step="1" 
					end="${productList.size()-3}"
					varStatus="status">
	              <a class="product-thumb" href="shop_product_detail?product_no=${product.product_no}">
	              	<img src="IMAGE/${product.product_image_1}" width=100, height=100" alt="Product">
	              </a>
              <h3 class="product-title"><a href="shop_product_detail?product_no=${product.product_no}">${product.product_name}</a></h3>
              <h4 class="product-price">
              	<span style="size: 1px">$ : ${product.product_price}</span>
              </h4>
              <div class="product-buttons">
                <a href="add_wishlist_action?product_no=${product.product_no}">
	                <button class="btn btn-outline-secondary btn-sm btn-wishlist" data-toggle="tooltip" title="Whishlist">
	                	<i class="icon-heart"></i>
	                </button>
                </a>
                <a href="shop_product_detail?product_no=${product.product_no}">
                	<button class="btn btn-outline-primary btn-sm">detail</button>	
                </a>
              </div>
            </c:forEach>  
            </div>
          </div>
          
          <!-- Product -->
          <div class="grid-item">
            <div class="product-card">
            <c:forEach  items="${productList}" 
					var="product"  
					begin="6"  
					step="1" 
					end="${productList.size()-2}"
					varStatus="status">
	              <a class="product-thumb" href="shop_product_detail?product_no=${product.product_no}">
	              	<img src="IMAGE/${product.product_image_1}" width=100, height=100" alt="Product">
	              </a>
              <h3 class="product-title"><a href="shop_product_detail?product_no=${product.product_no}">${product.product_name}</a></h3>
              <h4 class="product-price">
              	<span style="size: 1px">$ : ${product.product_price}</span>
              </h4>
              <div class="product-buttons">
                <a href="add_wishlist_action?product_no=${product.product_no}">
	                <button class="btn btn-outline-secondary btn-sm btn-wishlist" data-toggle="tooltip" title="Whishlist">
	                	<i class="icon-heart"></i>
	                </button>
                </a>
                <a href="shop_product_detail?product_no=${product.product_no}">
                	<button class="btn btn-outline-primary btn-sm">detail</button>	
                </a>
              </div>
            </c:forEach>  
            </div>
          </div>
          
          <!-- Product -->
          <div class="grid-item">
            <div class="product-card">
            <c:forEach  items="${productList}" 
					var="product"  
					begin="7"  
					step="1" 
					end="${productList.size()-1}"
					varStatus="status">
	              <a class="product-thumb" href="shop_product_detail?product_no=${product.product_no}">
	              	<img src="IMAGE/${product.product_image_1}" width=100, height=100 alt="Product">
	              </a>
              <h3 class="product-title"><a href="shop_product_detail?product_no=${product.product_no}">${product.product_name}</a></h3>
              <h4 class="product-price">
              	<span style="size: 1px">$ : ${product.product_price}</span>
              </h4>
              <div class="product-buttons">
                <a href="add_wishlist_action?product_no=${product.product_no}">
	                <button class="btn btn-outline-secondary btn-sm btn-wishlist" data-toggle="tooltip" title="Whishlist">
	                	<i class="icon-heart"></i>
	                </button>
                </a>
                <a href="shop_product_detail?product_no=${product.product_no}">
                	<button class="btn btn-outline-primary btn-sm">detail</button>	
                </a>
              </div>
            </c:forEach>  
            </div>
          </div>
          
         
          
        </div>
        <div class="text-center"><a class="btn btn-outline-secondary margin-top-none" href=product_All_List>View All Products</a></div>
      </section>
      <!-- Promo-->
      <section class="fw-section" style="background-image: url(img/banners/home03.jpg);"><span class="overlay" style="background-color: #374250; opacity: .55;"></span>
        <div class="container text-center padding-top-4x padding-bottom-4x">
          <h3 class="display-4 text-normal text-white text-shadow mb-1">Old Collection</h3>
          <h2 class="display-2 text-bold text-white text-shadow">HUGE SALE!</h2>
          <h4 class="d-inline-block h2 text-normal text-white text-shadow border-default border-left-0 border-right-0 mb-4">at our outlet stores</h4><br><a class="btn btn-primary" href="contacts.html">Locate Stores</a>
        </div>
      </section>
      <!-- Product Widgets-->
      <section class="container padding-top-3x padding-bottom-2x">
        <h3 class="text-center mb-30">Staff Picks</h3>
        <div class="row pt-1">
          <div class="col-md-4 col-sm-6">
            <div class="widget widget-featured-products">
              <h3 class="widget-title">Top Sellers</h3>
              <!-- Entry-->
              <div class="entry">
                <div class="entry-thumb"><a href="shop_product_detail?product_no=431466"><img src="IMAGE/431466_1.png" alt="Product"></a></div>
                <div class="entry-content">
                  <h4 class="entry-title"><a href="shop_product_detail?product_no=431466">U새틴미디스커트</a></h4><span class="entry-meta">$39900</span>
                </div>
              </div>
              <!-- Entry-->
              <div class="entry">
                <div class="entry-thumb"><a href="shop_product_detail?product_no=430501"><img src="IMAGE/430501_1.png" alt="Product"></a></div>
                <div class="entry-content">
                  <h4 class="entry-title"><a href="shop_product_detail?product_no=430501">트위스트플리츠롱스커트</a></h4><span class="entry-meta">$39900</span>
                </div>
              </div>
              <!-- Entry-->
              <div class="entry">
                <div class="entry-thumb"><a href="shop_product_detail?product_no=430134"><img src="IMAGE/430134_1.png" alt="Product"></a></div>
                <div class="entry-content">
                  <h4 class="entry-title"><a href="shop_product_detail?product_no=430134">슬라우치테이퍼드앵클진</a></h4><span class="entry-meta">$49900</span>
                </div>
              </div><a class="btn btn-outline-secondary btn-sm mb-0" href="product_All_List">View More</a>
            </div>
          </div>
          <div class="col-md-4 col-sm-6">
            <div class="widget widget-featured-products">
              <h3 class="widget-title">New Arrivals</h3>
              <!-- Entry-->
              <div class="entry">
                <div class="entry-thumb"><a href="shop_product_detail?product_no=431463"><img src="IMAGE/431463_1.png" alt="Product"></a></div>
                <div class="entry-content">
                  <h4 class="entry-title"><a href="shop_product_detail?product_no=431463">U플레어진</a></h4><span class="entry-meta">$49900</span>
                </div>
              </div>
              <!-- Entry-->
              <div class="entry">
                <div class="entry-thumb"><a href="shop_product_detail?product_no=429204"><img src="IMAGE/429204_1.png" alt="Product"></a></div>
                <div class="entry-content">
                  <h4 class="entry-title"><a href="shop_product_detail?product_no=429204">하이웨이스트기모와이드팬츠</a></h4><span class="entry-meta">$39900</span>
                </div>
              </div>
              <!-- Entry-->
              <div class="entry">
                <div class="entry-thumb"><a href="shop_product_detail?product_no=418249"><img src="IMAGE/418249_1.png" alt="Product"></a></div>
                <div class="entry-content">
                  <h4 class="entry-title"><a href="shop_product_detail?product_no=418249">보아스웨트팬츠</a></h4><span class="entry-meta">$29900</span>
                </div>
              </div><a class="btn btn-outline-secondary btn-sm mb-0" href="product_All_List">View More</a>
            </div>
          </div>
          <div class="col-md-4 col-sm-6">
            <div class="widget widget-featured-products">
              <h3 class="widget-title">Best Rated</h3>
              <!-- Entry-->
              <div class="entry">
                <div class="entry-thumb"><a href="shop_product_detail?product_no=430460"><img src="IMAGE/430460_1.png" alt="Product"></a></div>
                <div class="entry-content">
                  <h4 class="entry-title"><a href="shop_product_detail?product_no=430460">스키니플레어앵클진</a></h4><span class="entry-meta">$49900</span>
                </div>
              </div>
              <!-- Entry-->
              <div class="entry">
                <div class="entry-thumb"><a href="shop_product_detail?product_no=421379"><img src="IMAGE/421379_1.png" alt="Product"></a></div>
                <div class="entry-content">
                  <h4 class="entry-title"><a href="shop_product_detail?product_no=421379">하이라이즈스키니앵클진</a></h4><span class="entry-meta">$39900</span>
                </div>
              </div>
              <!-- Entry-->
              <div class="entry">
                <div class="entry-thumb"><a href="shop_product_detail?product_no=429212"><img src="IMAGE/429212_1.png" alt="Product"></a></div>
                <div class="entry-content">
                  <h4 class="entry-title"><a href="shop_product_detail?product_no=429212">개더롱스커트</a></h4><span class="entry-meta">$29900</span>
                </div>
              </div><a class="btn btn-outline-secondary btn-sm mb-0" href="product_All_List">View More</a>
            </div>
          </div>
        </div>
      </section>
      <!-- Popular Brands-->
      <section class="bg-faded padding-top-3x padding-bottom-3x">
        <div class="container">
          <h3 class="text-center mb-30 pb-2">Popular Brands</h3>
          <div class="owl-carousel" data-owl-carousel="{ &quot;nav&quot;: false, &quot;dots&quot;: false, &quot;loop&quot;: true, &quot;autoplay&quot;: true, &quot;autoplayTimeout&quot;: 4000, &quot;responsive&quot;: {&quot;0&quot;:{&quot;items&quot;:2}, &quot;470&quot;:{&quot;items&quot;:3},&quot;630&quot;:{&quot;items&quot;:4},&quot;991&quot;:{&quot;items&quot;:5},&quot;1200&quot;:{&quot;items&quot;:6}} }"><img class="d-block w-110 opacity-75 m-auto" src="img/brands/01.png" alt="Adidas"><img class="d-block w-110 opacity-75 m-auto" src="img/brands/02.png" alt="Brooks"><img class="d-block w-110 opacity-75 m-auto" src="img/brands/03.png" alt="Valentino"><img class="d-block w-110 opacity-75 m-auto" src="img/brands/04.png" alt="Nike"><img class="d-block w-110 opacity-75 m-auto" src="img/brands/05.png" alt="Puma"><img class="d-block w-110 opacity-75 m-auto" src="img/brands/06.png" alt="New Balance"><img class="d-block w-110 opacity-75 m-auto" src="img/brands/07.png" alt="Dior"></div>
        </div>
      </section>
      <!-- Services-->
      <section class="container padding-top-3x padding-bottom-2x">
        <div class="row">
          <div class="col-md-3 col-sm-6 text-center mb-30"><img class="d-block w-90 img-thumbnail rounded-circle mx-auto mb-3" src="img/services/01.png" alt="Shipping">
            <h6>Free Worldwide Shipping</h6>
            <p class="text-muted margin-bottom-none">Free shipping for all orders over $100</p>
          </div>
          <div class="col-md-3 col-sm-6 text-center mb-30"><img class="d-block w-90 img-thumbnail rounded-circle mx-auto mb-3" src="img/services/02.png" alt="Money Back">
            <h6>Money Back Guarantee</h6>
            <p class="text-muted margin-bottom-none">We return money within 30 days</p>
          </div>
          <div class="col-md-3 col-sm-6 text-center mb-30"><img class="d-block w-90 img-thumbnail rounded-circle mx-auto mb-3" src="img/services/03.png" alt="Support">
            <h6>24/7 Customer Support</h6>
            <p class="text-muted margin-bottom-none">Friendly 24/7 customer support</p>
          </div>
          <div class="col-md-3 col-sm-6 text-center mb-30"><img class="d-block w-90 img-thumbnail rounded-circle mx-auto mb-3" src="img/services/04.png" alt="Payment">
            <h6>Secure Online Payment</h6>
            <p class="text-muted margin-bottom-none">We posess SSL / Secure Certificate</p>
          </div>
        </div>
      </section>
      <!-- Site Footer-->
      <jsp:include page="common_bottom.jsp"/>
    </div>
    <!-- Back To Top Button--><a class="scroll-to-top-btn" href="#"><i class="icon-arrow-up"></i></a>
    <!-- Backdrop-->
    <div class="site-backdrop"></div>
    <!-- JavaScript (jQuery) libraries, plugins and custom scripts-->
    <script src="js/vendor.min.js"></script>
    <script src="js/scripts.min.js"></script>
    <script src="js/custom_product.js"></script>
  </body>
</html>