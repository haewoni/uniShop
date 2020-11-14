$(function() {
	// jumun_payment ----> jumun_review
	$(document).on('click', '#jumun_review_button', function(e) {
		$.ajax({
			url: 'f_jumun_review_form',
			method: 'GET',
			success: function(html) {
				$('#check_out_display').html(html);
			}
		});

	});
	
	// jumun_delivery_form_action
	$(document).on('click', '#jumun_payment_button', function(e) {
		$.ajax({
			url: 'rest_jumun_delivery_action',
			method: 'POST',
			data: $('#jumun_delivery_form').serialize(),
			success: function(str) {
				alert('1111');
			}
		});

	});
	
	// jumun_delivery ----> jumun_payment
	$(document).on('click', '#jumun_payment_button', function(e) {
		$.ajax({
			url: 'f_jumun_payment_form',
			method: 'GET',
			success: function(html) {
				$('#check_out_display').html(html);
			}
		});

	});

	// jumun_address_form_action
	$('#jumun_address_action_button').on('click', (function(e) {
		$.ajax({
			url: 'rest_jumun_address_action',
			method: 'POST',
			data: $('#jumun_address_form').serialize()
		});
	}));

	// jumun_address----> jumun_delivery
	$('#jumun_address_action_button').on('click', (function(e) {
		$.ajax({
			url: 'rest_jumun_delivery_form',
			method: 'POST',
			success: function(resultStr) {

				html = "";
				if (resultStr.trim() == 'true') {
					html += "			<div class=\"checkout-steps\"><a href=\"#\">4. 주문확인</a>";
					html += "   <a href=\"#\"><span class=\"angle\"></span>3. 결제정보</a>";
					html += "   <a class=\"active\" href=\"jumun_delivery_form\"><span class=\"angle\"></span>2. 배송방법</a>";
					html += "   <a class=\"completed\" href=\"#\"><span class=\"angle\"></span><span class=\"step-indicator icon-circle-check\"></span>1. 주소</a></div>";
					html += "   <h4>배송방법을 선택하시오</h4>";
					html += "   <hr class=\"padding-bottom-1x\">";
					html += "  <div class=\"table-responsive\">";
					html += "     <table class=\"table table-hover\">";
					html += "       <thead class=\"thead-default\">";
					html += "         <tr>";
					html += "           <th></th>";
					html += "           <th>배송 방법</th>";
					html += "           <th>평균 배송 시간</th>";
					html += "           <th>배송료</th>";
					html += "         </tr>";
					html += "       </thead>";
					html += "       <tbody>";
					html += "         <tr>";
					html += "           <td class=\"align-middle\">";
					html += "             <div class=\"custom-control custom-radio mb-0\">";
					html += "               <input class=\"custom-control-input\" type=\"radio\" id=\"GEN\" name=\"deliveryStr\" value=\"일반\" checked>";
					html += "               <label class=\"custom-control-label\" for=\"GEN\"></label>";
					html += "             </div>";
					html += "           </td>";
					html += "           <td class=\"align-middle\"><span class=\"text-medium\">일반배송</span><br><span class=\"text-muted text-sm\">*제주도 및 도서 산간지역은 기본배송료 + 추가운임비</span></td>";
					html += "          <td class=\"align-middle\">3 - 4 일</td>";
					html += "           <td class=\"align-middle\">3000 원</td>";
					html += "         </tr>";
					html += "         <tr>";
					html += "           <td class=\"align-middle\">";
					html += "             <div class=\"custom-control custom-radio mb-0\">";
					html += "               <input class=\"custom-control-input\" type=\"radio\" id=\"EX\"  name=\"deliveryStr\" value=\"특급\">";
					html += "               <label class=\"custom-control-label\" for=\"EX\"></label>";
					html += "             </div>";
					html += "           </td>";
					html += "           <td class=\"align-middle\"><span class=\"text-medium\" data-특급>특급배송</span><br><span class=\"text-muted text-sm\">*제주도 및 도서 산간지역은 기본배송료 + 추가운임비</span></td>";
					html += "           <td class=\"align-middle\">1 - 2 일</td>";
					html += "           <td class=\"align-middle\">6000 원</td>";
					html += "         </tr>";
					html += "       </tbody>";
					html += "    </table>";
					html += "   </div>";
					html += "   <div class=\"checkout-footer margin-top-1x\">";
					html += "     <div class=\"column\"><a class=\"btn btn-outline-secondary\" href=\"checkout-address.html\"><i class=\"icon-arrow-left\"></i><span class=\"hidden-xs-down\">&nbsp;Back</span></a></div>";
					html += "     <div class=\"column\"><a id=\"jumun_payment_button\" class=\"btn btn-primary\" href=\"#\"><span class=\"hidden-xs-down\">계속&nbsp;</span><i class=\"icon-arrow-right\"></i></a></div>";
					html += "   </div>";

					$('#check_out_display').html(html);
				}
			}
		});

		e.preventDefault();


	}));


});
/*
function jumun_address_form_action(){
	alert('aaaaa')
	document.jumun_address_form.action='rest_jumun_address_action';
	document.jumun_address_form.method='POST';
	document.jumun_address_form.submit();
}
*/