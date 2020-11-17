/**
 * 
 */
 $(function() {
	$('#rest_delete_wishlist_button').click(function(e) {
		product_no = $(e.target).attr('product_no');
		params = 'product_no=' + product_no;
		$.ajax({
			url: 'rest_delete_wishlist_action',
			data: params,
			contentType: 'text',
			success:function(msg) {
				if (msg.trim() == 'true') {
					alert('삭제성공');
				} else {
					alert('삭제 할 상품이 없습니다');
				}
			}
		});
		
	});
	

})