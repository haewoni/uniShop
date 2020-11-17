$(function() {
	//event
	$('#question_insert_button').click(function(e) {
		document.openTicket.action = 'member_question_action';
		document.openTicket.method = 'POST';
		document.openTicket.submit();
		alert('등록되었습니다.');
		e.preventDefault();
	});

	$('#orderDetails').on('show.bs.modal', function(e) {
		jumun_no = $(e.relatedTarget).text();
		param = 'jumun_no=' + jumun_no
		//alert(param)
		$.ajax({
			url: 'rest_jumun_detail',
			data: param,
			method: 'GET',
			dataType: 'json',
			success: function(jdArray) {
				console.log(jdArray);
				html = "";
				tot_price = 0;
				$.each(jdArray, function(i, jd) {
					console.log(jd.jumun_d_no + "," + jd.jumun_d_product_name)
					html += " <tr>";
					html += "<td>";
					html += "  <div class=\"product-item\"><a class=\"product-thumb\" href=\"shop-single.html\"><img src=\"IMAGE/" + jd.product_no + "_1.png\" alt=\"Product\"></a>";
					html += "    <div class=\"product-info\">";
					html += "      <h4 class=\"product-title\"><a href=\"shop_product_detail?product_no=" + jd.product_no + "\">" + jd.jumun_d_product_name + "<small>x " + jd.jumun_d_product_qty + "</small></a></h4><span><em>Size:</em> " + jd.jumun_d_product_size + "</span><span>";
					html += "    </div>";
					html += "  </div>";
					html += "</td>";
					html += "<td class=\"text-center text-lg text-medium\">" + jd.jumun_d_product_price + "</td>";
					html += "</tr>";
					tot_price += jd.jumun_d_product_price;
				});
				$('#tot_price').html(tot_price);
				$('#orderDetails table > tbody').html(html);

			}
		});

	});
	$('#orderDetails').on('shown.bs.modal', function(e) {
		delivery_no = $(e.relatedTarget).attr('delivery_no');
		param = 'delivery_no=' + delivery_no
		//alert(param)
		$.ajax({
			url: 'rest_jumun_delivery_detail',
			data: param,
			method: 'GET',
			dataType: 'json',
			success: function(delivery) {
				console.log(delivery.delivery_fee);
				$('#delivery_fee').html(delivery.delivery_fee);
				$('#jumun_tot_price').html(parseInt($('#tot_price').text()) + parseInt($('#delivery_fee').text()));
			}
		});

	});
	$('#reg_member_id').blur(function(){
		var member_id = $('#reg_member_id').val();
		$.ajax({
			url: 'member_isExistMember?member_id='+member_id,
			type: 'GET',
			success: function(data) {
				console.log("1 = 중복O / 0 = 중복X: "+data);
				if (data == 1) {
					$("#id_check").text("중복된 아이디입니다.");
					$("#id_check").css("color", "red");
					$("#reg_submit").attr("disabled", true);
				} else if(data == 0){
					$("#id_check").text("사용 가능한 아이디입니다.");
					$("#id_check").css("color", "red");
					$("#reg_submit").attr("disabled", false);
				}
			}
		});
	});	
});
	

