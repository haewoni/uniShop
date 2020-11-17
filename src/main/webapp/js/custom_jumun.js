$(function() {
/********************** 3. jumun_payment ----> jumun_review *************************/
	$(document).on('click', '#jumun_review_button', function(e) {
		$.ajax({
			url: 'rest_jumun_payment_action',
			method: 'POST',
			data: $('#jumun_payment_form').serialize(),
			success: function(str) {
				$.ajax({
					url: 'f_jumun_review_form',
					method: 'POST',
					success: function(html) {
						$('#check_out_display').html(html);
					}
				});
			 }
		});
	});


/********************** 2. jumun_delivery ----> jumun_payment /  & sidebar(합계금액) 작업 *************************/
	$(document).on('click', '#jumun_payment_button', function(e) {
		console.log('jumun_delivery ---->jumun_delivery action');
		$.ajax({
			url: 'rest_jumun_delivery_action',
			method: 'POST',
			data: $('#jumun_delivery_form').serialize(),
			success: function(data) {
				console.log('jumun_delivery ---->jumun_delivery action success');
			}
		});

		console.log('jumun_delivery ---->f_jumun_payment_form');
		$.ajax({
			url: 'f_jumun_payment_form',
			method: 'GET',
			success: function(html) {
				$('#check_out_display').html(html);
				console.log('jumun_delivery ---->f_jumun_payment_form success');
				
				$.ajax({
					url: 'rest_jumun_sidebar',
					method: 'GET',
					success: function(html) {
						var resultStr = html.trim().split('-');
						var tot = window.parseInt(resultStr[0]) + window.parseInt(resultStr[1]);
						$(delivery_fee).html(resultStr[1]);
						$(total_fee).html(tot);
						console.log('rest_jumun_sidebar ---->delivery_fee display');
					}
				});
			}
		});
	});


/********************** 1. jumun_address----> jumun_delivery ****************************/
	$('#jumun_address_action_button').on('click', (function(e) {
		$.ajax({
			url: 'rest_jumun_address_action',
			method: 'POST',
			data: $('#jumun_address_form').serialize(),
			success: function() {
				console.log('jumun_address---->jumun_address_action');
			}
		});

		$.ajax({
			url: 'rest_jumun_delivery_form',
			method: 'GET',
			success: function() {
				var html = "";
				html += "<form name=\"jumun_delivery_form\" id=\"jumun_delivery_form\">";
				html += "			<div class=\"checkout-steps\"><a href=\"#\">4. 주문확인</a>";
				html += "   <a href=\"#\"><span class=\"angle\"></span>3. 결제정보</a>";
				html += "   <a class=\"active\" href=\"jumun_delivery_form\"><span class=\"angle\"></span>2. 배송방법</a>";
				html += "   <a class=\"completed\" href=\"#\"><span class=\"angle\"></span><span class=\"step-indicator icon-circle-check\"></span>1. 주소</a></div>";
				html += "   <h4>배송방법을 선택하시오</h4>";
				html += "   <hr class=\"padding-bottom-1x\">";
				html += "  <div class=\"ta3ble-responsive\">";
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
				html += "     <div class=\"column\"><a id=\"jumun_address_back_button\" class=\"btn btn-outline-secondary\" href=\"#\"><i class=\"icon-arrow-left\"></i><span class=\"hidden-xs-down\">&nbsp;Back</span></a></div>";
				html += "     <div class=\"column\"><a id=\"jumun_payment_button\" class=\"btn btn-primary\" href=\"#\"><span class=\"hidden-xs-down\">계속&nbsp;</span><i class=\"icon-arrow-right\"></i></a></div>";
				html += "   </div>";
				html += "  </form>";
				console.log('jumun_address----> jumun delivery==>' + html);
				$('#check_out_display').html(html);
			}
		});
		e.preventDefault();
	}));


	
});