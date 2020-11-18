
$(function() {
	$('#rest_add_cart_button').click(function(e) {
		product_no = $(e.target).attr('product_no');
		cart_qty = $("#cart_qty option:selected").val();
		cart_product_size = $("#cart_product_size option:selected").val();
		
		if (cart_product_size == 'size선택') {
			alert('상품 사이즈를 선택하세요...!');
			return;
		}
		
		params = 'product_no=' + product_no + '&cart_qty=' + cart_qty + '&cart_product_size=' + cart_product_size;
		$.ajax({
			url: 'rest_shop_add_cart_action',
			data: params,
			contentType: 'text',
			success:function(msg) {
				if (msg.trim() == 'true') {
					alert('카드담기성공');
					////common_top 변경
					$.ajax({
					url: 'rest_cart_common_top',
					method: 'GET',
					success: function(html) {
						var resultStr = html.trim().split('-');
						$(subtotal).html(resultStr[0]);
						console.log('subtotal update 완료'+resultStr[0]);  //test
					}
				});
				} else {
					alert('카드담기실패');
				}
		
				
			}
		});
	});
	

});

/*
function Check(index, cartNo){
	
	alert('function Check  '+index +"  "+ cartNo + "  "+ memberId);
	
	   var index = index;
       //$("#updateQty"+ index + " option:eq(0)").remove();

	   var qty = $("#updateQty"+ index + " option:selected").val();
	   params = 'cart_no=' + cartNo + '&cart_qty=' + qty;
	   $.ajax({
			url: 'rest_cart_update_action_get',
			data: params,
			contentType: 'text',
			success:function(msg) {
				if (msg.trim() == 'true') {
					alert('수량변경 성공');
				} else {
					alert('수량변경 실패');
				}
			}
		});	
}

*/





 