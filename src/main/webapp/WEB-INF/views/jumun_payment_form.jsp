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
            	<a href="jumun_review_form">4. Review</a>
            	<a class="active" href="jumun_payment_form"><span class="angle"></span>3. Payment</a>
            	<a href="jumun_delivery_form"><span class="angle"></span>2. Shipping</a>
            	<a href="jumun_address_form"><span class="angle"></span>1. Address</a></div>
            <h4>choose paymentMethod</h4>
            <hr class="padding-bottom-1x">
            <div class="accordion" id="accordion" role="tablist">
              <div class="card">
                <div class="card-header" role="tab">
                  <h6><a href="#card" data-toggle="collapse"><i class="icon-columns"></i>Pay with Credit Card</a></h6>
                </div>
                <div class="collapse show" id="card" data-parent="#accordion" role="tabpanel">
                  <div class="card-body">
                    <p>We accept following credit cards:&nbsp;<img class="d-inline-block align-middle" src="img/credit-cards.png" style="width: 120px;" alt="Cerdit Cards"></p>
                    <div class="card-wrapper"></div>
                    <form class="interactive-credit-card row">
                      <div class="form-group col-sm-6">
                        <input class="form-control" type="text" name="number" placeholder="Card Number" required>
                      </div>
                      <div class="form-group col-sm-6">
                        <input class="form-control" type="text" name="name" placeholder="Full Name" required>
                      </div>
                      <div class="form-group col-sm-3">
                        <input class="form-control" type="text" name="expiry" placeholder="MM/YY" required>
                      </div>
                      <div class="form-group col-sm-3">
                        <input class="form-control" type="text" name="cvc" placeholder="CVC" required>
                      </div>
                      <div class="col-sm-6">
                        <button class="btn btn-outline-primary btn-block margin-top-none" type="submit">Submit</button>
                      </div>
                    </form>
                  </div>
                </div>
              </div>
              <div class="card">
                <div class="card-header" role="tab">
                  <h6><a class="collapsed" href="#paypal" data-toggle="collapse"><i class="socicon-paypal"></i>Pay with PayPal</a></h6>
                </div>
                <div class="collapse" id="paypal" data-parent="#accordion" role="tabpanel">
                  <div class="card-body">
                    <p>PayPal - the safer, easier way to pay</p>
                    <form class="row" method="post">
                      <div class="col-sm-6">
                        <div class="form-group">
                          <input class="form-control" type="email" placeholder="E-mail" required>
                        </div>
                      </div>
                      <div class="col-sm-6">
                        <div class="form-group">
                          <input class="form-control" type="password" placeholder="Password" required>
                        </div>
                      </div>
                      <div class="col-12">
                        <div class="d-flex flex-wrap justify-content-between align-items-center"><a class="navi-link" href="#">Forgot password?</a>
                          <button class="btn btn-outline-primary margin-top-none" type="submit">Log In</button>
                        </div>
                      </div>
                    </form>
                  </div>
                </div>
              </div>
              <div class="card">
                <div class="card-header" role="tab">
                  <h6><a class="collapsed" href="#points" data-toggle="collapse"><i class="icon-medal"></i>Redeem Reward Points</a></h6>
                </div>
                <div class="collapse" id="points" data-parent="#accordion" role="tabpanel">
                  <div class="card-body">
                    <p>You currently have<span class="text-medium"> 290</span> Reward Points to spend.</p>
                    <div class="custom-control custom-checkbox d-block">
                      <input class="custom-control-input" type="checkbox" id="use_points">
                      <label class="custom-control-label" for="use_points">Use my Reward Points to pay for this order.</label>
                    </div>
                  </div>
                </div>
              </div>
            </div>
            <div class="checkout-footer margin-top-1x">
              <div class="column"><a class="btn btn-outline-secondary" href="jumun_shipping_form.html"><i class="icon-arrow-left"></i><span class="hidden-xs-down">&nbsp;Back</span></a></div>
              <div class="column"><a class="btn btn-primary" href="jumun_review_form.html"><span class="hidden-xs-down">Continue&nbsp;</span><i class="icon-arrow-right"></i></a></div>
            </div>
          </div>
          <!-- Sidebar          -->
          <div class="col-xl-3 col-lg-4">
            <aside class="sidebar">
              <div class="padding-top-2x hidden-lg-up"></div>
              <!-- Order Summary Widget-->
              <section class="widget widget-order-summary">
                <h3 class="widget-title">Order Summary</h3>
                <table class="table">
                  <tr>
                    <td>Cart Subtotal:</td>
                    <td class="text-medium">$289.68</td>
                  </tr>
                  <tr>
                    <td>Shipping:</td>
                    <td class="text-medium">$22.50</td>
                  </tr>
                  <tr>
                    <td>Estimated tax:</td>
                    <td class="text-medium">$3.42</td>
                  </tr>
                  <tr>
                    <td></td>
                    <td class="text-lg text-medium">$315.60</td>
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
    <script src="js/card.min.js"></script>
    <script src="js/scripts.min.js"></script>
  </body>
</html>