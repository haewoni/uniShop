 <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    

          <div class="checkout-steps">
            	<a href="#">4. 주문확인</a>
            	<a class="active" href="jumun_payment_form"><span class="angle"></span>3. 결제정보</a>
            	<a class="completed" href="#"><span class="angle"></span><span class="step-indicator icon-circle-check"></span>2. 배송확인</a>
            	<a class="completed" href="#"><span class="angle"></span><span class="step-indicator icon-circle-check"></span>1. 주소</a>
            </div>
            <h4>결제 방법을 선택하시오</h4>
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
                    <form class="interactive-credit-card row"  id="jumun_payment_form" name="jumun_payment_form" >
                      <div class="form-group col-sm-6">
                        <input class="form-control" type="text" name="card_no"  placeholder="card_no" required>
                      </div>
                      <div class="form-group col-sm-6">
                        <input class="form-control" type="text" name="card_member_name"  placeholder="name" required>
                      </div>
                      <div class="form-group col-sm-3">
                        <input class="form-control" type="text" name="card_expire_date"  placeholder="MM/YY" required>
                      </div>
                      <div class="form-group col-sm-3">
                        <input class="form-control" type="text" name="card_cvc"  placeholder="CVC" required>
                      </div>
                  		<div class="col-sm-6">
						<button class="btn btn-outline-primary btn-block margin-top-none" type="submit">clear</button>
                      </div>
                    </form>
                  </div>
                </div>
              </div>
            </div>
            <div class="checkout-footer margin-top-1x">
              <div class="column"><a id="jumun_back_delivery_button" class="btn btn-outline-secondary" href="#"><i class="icon-arrow-left"></i><span class="hidden-xs-down">&nbsp;뒤로 가기</span></a></div>
              <div class="column"><a id="jumun_review_button" class="btn btn-primary"  href="#"><span class="hidden-xs-down">다음&nbsp;</span><i class="icon-arrow-right"></i></a></div>
            
            </div>
