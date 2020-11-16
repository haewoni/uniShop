/**
 * 
 */
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
				} else {
					alert('카드담기실패');
				}
			}
		});
	});
	
});






 