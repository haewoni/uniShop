<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    
    
    <form name="jumun_delivery_form" id="jumun_delivery_form">
            <div class="checkout-steps"><a href="jumun_review_form">4. 주문확인</a>
            <a href="jumun_payment_form"><span class="angle"></span>3. 결제정보</a>
            <a class="active" href="jumun_delivery_form"><span class="angle"></span>2. 배송방법</a>
            <a class="completed" href="jumun_address_form"><span class="angle"></span><span class="step-indicator icon-circle-check"></span>1. 주소</a></div>
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
                        <input class="custom-control-input" type="radio" id="GEN" name="deliveryStr" value="일반" checked>
                        <label class="custom-control-label" for="GEN"></label>
                      </div>
                    </td>
                    <td class="align-middle"><span class="text-medium">일반배송</span><br><span class="text-muted text-sm">*제주도 및 도서 산간지역은 기본배송료 + 추가운임비</span></td>
                    <td class="align-middle">3 - 4 일</td>
                    <td class="align-middle">3000 원</td>
                  </tr>
                  <tr>
                    <td class="align-middle">
                      <div class="custom-control custom-radio mb-0">
                        <input class="custom-control-input" type="radio" id="EX"  name="deliveryStr" value="특급">
                        <label class="custom-control-label" for="EX"></label>
                      </div>
                    </td>
                    <td class="align-middle"><span class="text-medium" data-특급>특급배송</span><br><span class="text-muted text-sm">*제주도 및 도서 산간지역은 기본배송료 + 추가운임비</span></td>
                    <td class="align-middle">1 - 2 일</td>
                    <td class="align-middle">6000 원</td>
                  </tr>
                </tbody>
              </table>
            </div>
            <div class="checkout-footer margin-top-1x">
              <div class="column"><a class="btn btn-outline-secondary" href="#"><i class="icon-arrow-left"></i><span class="hidden-xs-down">&nbsp;Back</span></a></div>
              <div class="column"><a class="btn btn-primary" id="jumun_payment_button" name="jumun_payment_button" href="#"><span class="hidden-xs-down">계속&nbsp;</span><i class="icon-arrow-right"></i></a></div>
            </div>
           </form>