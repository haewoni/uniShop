<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
	<jsp:include page="common_top.jsp"/>
    <!-- Shop Filters Modal-->
    <div class="modal fade" id="modalShopFilters" tabindex="-1">
      <div class="modal-dialog">
        <div class="modal-content">
          <div class="modal-header">
            <h4 class="modal-title">Shop Filters</h4>
            <button class="close" type="button" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
          </div>
          <div class="modal-body">
            <!-- Widget Categories-->
            <section class="widget widget-categories">
              <h3 class="widget-title">Shop Categories</h3>
              <ul>
                <li class="has-children expanded"><a href="#">Shoes</a><span>(1138)</span>
                  <ul>
                    <li><a href="#">Women's</a><span>(508)</span>
                      <ul>
                        <li><a href="#">Sneakers</a></li>
                        <li><a href="#">Heels</a></li>
                        <li><a href="#">Loafers</a></li>
                        <li><a href="#">Sandals</a></li>
                      </ul>
                    </li>
                    <li><a href="#">Men's</a><span>(423)</span>
                      <ul>
                        <li><a href="#">Boots</a></li>
                        <li><a href="#">Oxfords</a></li>
                        <li><a href="#">Loafers</a></li>
                        <li><a href="#">Sandals</a></li>
                      </ul>
                    </li>
                    <li><a href="#">Boy's Shoes</a><span>(97)</span></li>
                    <li><a href="#">Girl's Shoes</a><span>(110)</span></li>
                  </ul>
                </li>
                <li class="has-children"><a href="#">Clothing</a><span>(2356)</span>
                  <ul>
                    <li><a href="#">Women's</a><span>(1032)</span>
                      <ul>
                        <li><a href="#">Dresses</a></li>
                        <li><a href="#">Shirts &amp; Tops</a></li>
                        <li><a href="#">Swimwear</a></li>
                        <li><a href="#">Shorts</a></li>
                      </ul>
                    </li>
                    <li><a href="#">Men's</a><span>(937)</span>
                      <ul>
                        <li><a href="#">Shirts &amp; Tops</a></li>
                        <li><a href="#">Shorts</a></li>
                        <li><a href="#">Swimwear</a></li>
                        <li><a href="#">Pants</a></li>
                      </ul>
                    </li>
                    <li><a href="#">Kid's Clothing</a><span>(386)</span></li>
                  </ul>
                </li>
                <li class="has-children"><a href="#">Bags</a><span>(420)</span>
                  <ul>
                    <li><a href="#">Handbags</a><span>(180)</span></li>
                    <li><a href="#">Backpacks</a><span>(132)</span></li>
                    <li><a href="#">Wallets &amp; Accessories</a><span>(47)</span></li>
                    <li><a href="#">Luggage</a><span>(61)</span></li>
                  </ul>
                </li>
                <li class="has-children"><a href="#">Accessories</a><span>(874)</span>
                  <ul>
                    <li><a href="#">Sunglasses</a><span>(211)</span></li>
                    <li><a href="#">Hats</a><span>(195)</span></li>
                    <li><a href="#">Watches</a><span>(159)</span></li>
                    <li><a href="#">Jewelry</a><span>(203)</span></li>
                    <li><a href="#">Belts</a><span>(106)</span></li>
                  </ul>
                </li>
              </ul>
            </section>
            <!-- Widget Price Range-->
            <section class="widget widget-categories">
              <h3 class="widget-title">Price Range</h3>
              <form class="price-range-slider" method="post" data-start-min="250" data-start-max="650" data-min="0" data-max="1000" data-step="1">
                <div class="ui-range-slider"></div>
                <footer class="ui-range-slider-footer">
                  <div class="column">
                    <button class="btn btn-outline-primary btn-sm" type="submit">Filter</button>
                  </div>
                  <div class="column">
                    <div class="ui-range-values">
                      <div class="ui-range-value-min">$<span></span>
                        <input type="hidden">
                      </div>&nbsp;-&nbsp;
                      <div class="ui-range-value-max">$<span></span>
                        <input type="hidden">
                      </div>
                    </div>
                  </div>
                </footer>
              </form>
            </section>
            <!-- Widget Brand Filter-->
            <section class="widget">
              <h3 class="widget-title">Filter by Brand</h3>
              <div class="custom-control custom-checkbox">
                <input class="custom-control-input" type="checkbox" id="adidas2">
                <label class="custom-control-label" for="adidas2">Adidas&nbsp;<span class="text-muted">(254)</span></label>
              </div>
              <div class="custom-control custom-checkbox">
                <input class="custom-control-input" type="checkbox" id="bilabong2">
                <label class="custom-control-label" for="bilabong2">Bilabong&nbsp;<span class="text-muted">(39)</span></label>
              </div>
              <div class="custom-control custom-checkbox">
                <input class="custom-control-input" type="checkbox" id="klein2">
                <label class="custom-control-label" for="klein2">Calvin Klein&nbsp;<span class="text-muted">(128)</span></label>
              </div>
              <div class="custom-control custom-checkbox">
                <input class="custom-control-input" type="checkbox" id="nike2">
                <label class="custom-control-label" for="nike2">Nike&nbsp;<span class="text-muted">(310)</span></label>
              </div>
              <div class="custom-control custom-checkbox">
                <input class="custom-control-input" type="checkbox" id="bahama2">
                <label class="custom-control-label" for="bahama2">Tommy Bahama&nbsp;<span class="text-muted">(42)</span></label>
              </div>
            </section>
            <!-- Widget Size Filter-->
            <section class="widget">
              <h3 class="widget-title">Filter by Size</h3>
              <div class="custom-control custom-checkbox">
                <input class="custom-control-input" type="checkbox" id="xl2">
                <label class="custom-control-label" for="xl2">XL&nbsp;<span class="text-muted">(208)</span></label>
              </div>
              <div class="custom-control custom-checkbox">
                <input class="custom-control-input" type="checkbox" id="l2">
                <label class="custom-control-label" for="l2">L&nbsp;<span class="text-muted">(311)</span></label>
              </div>
              <div class="custom-control custom-checkbox">
                <input class="custom-control-input" type="checkbox" id="m2">
                <label class="custom-control-label" for="m2">M&nbsp;<span class="text-muted">(485)</span></label>
              </div>
              <div class="custom-control custom-checkbox">
                <input class="custom-control-input" type="checkbox" id="s2">
                <label class="custom-control-label" for="s2">S&nbsp;<span class="text-muted">(213)</span></label>
              </div>
            </section>
            <!-- Promo Banner
              <section class="promo-box" style="background-image: url(img/banners/02.jpg);"> -->
                <!-- Choose between .overlay-dark (#000) or .overlay-light (#fff) with default opacity of 50%. You can overrride default color and opacity values via 'style' attribute.<span class="overlay-dark" style="opacity: .45;"></span>
                <div class="promo-box-content text-center padding-top-3x padding-bottom-2x">
                  <h4 class="text-light text-thin text-shadow">New Collection of</h4>
                  <h3 class="text-bold text-light text-shadow">Sunglassess</h3><a class="btn btn-sm btn-primary" href="#">Shop Now</a>
                </div>
              </section> -->
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
            <h1>상품 목록</h1>
          </div>
          <div class="column">
            <ul class="breadcrumbs">
              <li><a href="unishop_main">Home</a>
              </li>
              <li class="separator">&nbsp;</li>
              <li>남성 반바지</li>
            </ul>
          </div>
        </div>
      </div>
      <!-- Page Content-->
      <div class="container padding-bottom-3x mb-1">
        <div class="row">
          <!-- Products-->
          <div class="col-xl-9 col-lg-8 order-lg-2">
            <!-- Shop Toolbar-->
            <div class="shop-toolbar padding-bottom-1x mb-2">
              <div class="column">
                <div class="shop-sorting">
                  <!-- <label for="sorting">Sort by:</label>
                  <select class="form-control" id="sorting">
                    <option>Popularity</option>
                    <option>Low - High Price</option>
                    <option>High - Low Price</option>
                    <option>Avarage Rating</option>
                    <option>A - Z Order</option>
                    <option>Z - A Order</option>
                  </select><span class="text-muted">Showing:&nbsp;</span><span>1 - 12 items</span> -->
                </div>
              </div>
              <div class="column">
                <!-- <div class="shop-view"><a class="grid-view active" href="shop-grid-ls.html"><span></span><span></span><span></span></a><a class="list-view" href="shop-list-ls.html"><span></span><span></span><span></span></a></div> -->
              </div>
            </div>

            <!-- Products Grid-->
            <div class="isotope-grid cols-3 mb-2">
              <div class="gutter-sizer"></div>
              <div class="grid-sizer"></div>
              
              <c:forEach  items="${productList}" 
				var="product"  
				begin="0"  
				step="1" 
				end="${productList.size()}"
				varStatus="status">
			 
              <!-- Product-->
               <div class="grid-item">
                <div class="product-card">
                  <a class="product-thumb" href="shop_product_detail?product_no=${product.product_no}">
                  	<img src="IMAGE/${product.product_image_1}" alt="Product">
                  </a>
                  <h3 class="product-title"><a href="shop_product_detail?product_no=${product.product_no}">${product.product_name}</a></h3>
                  <h4 class="product-price">
                    <span style="size: 1px">￦ : ${product.product_price}</span>
                  </h4>
                  <div class="product-buttons">
	                	<button class="btn btn-outline-primary btn-sm add_wishlist_button" product_no="${product.product_no}" type="button">
	                		<i class="icon-heart" product_no="${product.product_no}"></i>
	                	</button>
               		<a href="shop_product_detail?product_no=${product.product_no}">
                		<button class="btn btn-outline-primary btn-sm">detail</button>	
                	</a>
               		 
                  </div>
                </div>
              </div>
              
             </c:forEach>
            </div>
              
            <!-- Pagination
            <nav class="pagination">
              <div class="column">
                <ul class="pages">
                  <li class="active"><a href="#">1</a></li>
                  <li><a href="#">2</a></li>
                  <li><a href="#">3</a></li>
                  <li><a href="#">4</a></li>
                  <li>...</li>
                  <li><a href="#">12</a></li>
                </ul>
              </div>
              <div class="column text-right hidden-xs-down"><a class="btn btn-outline-secondary btn-sm" href="#">Next&nbsp;<i class="icon-arrow-right"></i></a></div>
            </nav>
            -->
          </div>
          <!-- Sidebar          -->
          <div class="col-xl-3 col-lg-4 order-lg-1">
            <button class="sidebar-toggle position-left" data-toggle="modal" data-target="#modalShopFilters"><i class="icon-layout"></i></button>
            <aside class="sidebar sidebar-offcanvas">
              <!-- Widget Categories-->
              <section class="widget widget-categories">
                <h3 class="widget-title">Shop Categories</h3>
                <ul>
                  <li class="has-children"><a href="#">여성류</a><span></span>
                    <ul>
                      <li><a href="#">상의</a><span></span>
                        <ul>
                          <!-- 
                          <li><a href="#">Sneakers</a></li>
                          <li><a href="#">Heels</a></li>
                          <li><a href="#">Loafers</a></li>
                          <li><a href="#">Sandals</a></li>
                         -->  
                          <li><a href="shop_female_outer_list">여성 아우터</a></li>
                          <li><a href="shop_female_cardigan_list">여성 가디건</a></li>
                          <li><a href="shop_female_tshirt_list">여성 티셔츠</a></li>
                        </ul>
                      </li>
                      <li><a href="#">하의</a><span></span>
                        <ul>
                        <!-- 
                          <li><a href="#">Boots</a></li>
                          <li><a href="#">Oxfords</a></li>
                          <li><a href="#">Loafers</a></li>
                          <li><a href="#">Sandals</a></li>
                         -->  
                          <li><a href="shop_female_longpants_list">여성 긴바지</a></li>
                          <li><a href="shop_female_skirt_list">여성 스커트</a></li>
                        </ul>
                      </li>
                      <!-- 
                      <li><a href="#">Boy's Shoes</a><span>(97)</span></li>
                      <li><a href="#">Girl's Shoes</a><span>(110)</span></li>
                       -->
                    </ul>
                  </li>
                  <li class="has-children expanded"><a href="#">남성류</a><span></span>
                    <ul>
                    <!-- 
                      <li><a href="#">Men's</a><span>(1032)</span>
                     -->  
                      <li><a href="#">상의</a><span></span>
                      
                        <ul>
                          <!-- 
                          <li><a href="#">Dresses</a></li>
                          <li><a href="#">Shirts &amp; Tops</a></li>
                          <li><a href="#">Swimwear</a></li>
                          <li><a href="#">Shorts</a></li>
                           -->
                          <li><a href="shop_male_outer_list">남성 아우터</a></li>
                          <li><a href="shop_male_cardigan_list">남성 가디건</a></li>
                          <li><a href="shop_male_tshirt_list">남성 티셔츠</a></li>
                        </ul>
                      </li>
                      <!-- 
                      <li><a href="#">Men's</a><span>(937)</span>
                       -->
                      <li><a href="#">하의</a><span></span>
                        <ul>
                        <!-- 
                          <li><a href="#">Shirts &amp; Tops</a></li>
                          <li><a href="#">Shorts</a></li>
                          <li><a href="#">Swimwear</a></li>
                          <li><a href="#">Pants</a></li>
                           -->
                          <li><a href="shop_male_longpants_list">남성 긴바지</a></li>
                          <li><a href="shop_male_shortpants_list">남성 반바지</a></li>
                        </ul>
                      </li>
                      <!-- 
                      <li><a href="#">Kid's Clothing</a><span>(386)</span></li>
                       -->
                    </ul>
                  </li>
                  <!-- 
                  <li class="has-children"><a href="#">Bags</a><span>(420)</span>
                    <ul>
                      <li><a href="#">Handbags</a><span>(180)</span></li>
                      <li><a href="#">Backpacks</a><span>(132)</span></li>
                      <li><a href="#">Wallets &amp; Accessories</a><span>(47)</span></li>
                      <li><a href="#">Luggage</a><span>(61)</span></li>
                    </ul>
                  </li>
                  <li class="has-children"><a href="#">Accessories</a><span>(874)</span>
                    <ul>
                      <li><a href="#">Sunglasses</a><span>(211)</span></li>
                      <li><a href="#">Hats</a><span>(195)</span></li>
                      <li><a href="#">Watches</a><span>(159)</span></li>
                      <li><a href="#">Jewelry</a><span>(203)</span></li>
                      <li><a href="#">Belts</a><span>(106)</span></li>
                    </ul>
                  </li>
                   -->
                </ul>
              </section>
              <!-- Widget Brand Filter-->
              <section class="widget">
                <h3 class="widget-title">Filter by Brand</h3>
                <div class="custom-control custom-checkbox">
                  <input class="custom-control-input" type="checkbox" id="adidas">
                  <label class="custom-control-label" for="adidas">Adidas&nbsp;<span class="text-muted">(254)</span></label>
                </div>
                <div class="custom-control custom-checkbox">
                  <input class="custom-control-input" type="checkbox" id="bilabong">
                  <label class="custom-control-label" for="bilabong">Bilabong&nbsp;<span class="text-muted">(39)</span></label>
                </div>
                <div class="custom-control custom-checkbox">
                  <input class="custom-control-input" type="checkbox" id="klein">
                  <label class="custom-control-label" for="klein">Calvin Klein&nbsp;<span class="text-muted">(128)</span></label>
                </div>
                <div class="custom-control custom-checkbox">
                  <input class="custom-control-input" type="checkbox" id="nike">
                  <label class="custom-control-label" for="nike">Nike&nbsp;<span class="text-muted">(310)</span></label>
                </div>
                <div class="custom-control custom-checkbox">
                  <input class="custom-control-input" type="checkbox" id="bahama">
                  <label class="custom-control-label" for="bahama">Tommy Bahama&nbsp;<span class="text-muted">(42)</span></label>
                </div>
              </section>
              
              <!-- Widget Size Filter-->
              <section class="widget">
                <h3 class="widget-title">Filter by Size</h3>
                <div class="custom-control custom-checkbox">
                  <input class="custom-control-input" type="checkbox" id="xl">
                  <label class="custom-control-label" for="xl">XL&nbsp;<span class="text-muted">(208)</span></label>
                </div>
                <div class="custom-control custom-checkbox">
                  <input class="custom-control-input" type="checkbox" id="l">
                  <label class="custom-control-label" for="l">L&nbsp;<span class="text-muted">(311)</span></label>
                </div>
                <div class="custom-control custom-checkbox">
                  <input class="custom-control-input" type="checkbox" id="m">
                  <label class="custom-control-label" for="m">M&nbsp;<span class="text-muted">(485)</span></label>
                </div>
                <div class="custom-control custom-checkbox">
                  <input class="custom-control-input" type="checkbox" id="s">
                  <label class="custom-control-label" for="s">S&nbsp;<span class="text-muted">(213)</span></label>
                </div>
              </section>
              <!-- Promo Banner
              <section class="promo-box" style="background-image: url(img/banners/02.jpg);"> -->
                <!-- Choose between .overlay-dark (#000) or .overlay-light (#fff) with default opacity of 50%. You can overrride default color and opacity values via 'style' attribute.<span class="overlay-dark" style="opacity: .45;"></span>
                <div class="promo-box-content text-center padding-top-3x padding-bottom-2x">
                  <h4 class="text-light text-thin text-shadow">New Collection of</h4>
                  <h3 class="text-bold text-light text-shadow">Sunglassess</h3><a class="btn btn-sm btn-primary" href="#">Shop Now</a>
                </div>
              </section> -->
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
    <script src="js/custom_product.js"></script>
  </body>

</html>