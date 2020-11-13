
$(function(){
	$('#add_cart_button').click(function(e){
		alert('adsasas');
		document.product_detail_cart.method='POST';
		document.product_detail_cart.action='shop_add_cart_action';
		document.product_detail_cart.submit();
		e.preventDefault();
		});
	
	
	$('.add_wishlist_button').click(function(e){
		alert('test');
		console.log($(e.target).attr('product_no'));
		product_no=$(e.target).attr('product_no')
		param='product_no='+product_no
		$.ajax({
		url:'shop_add_wishlist_action',
		data:param,	
		method:'POST',
		});
		alert('등록되었습니다');
		e.preventDefault();
	});
	


	$('#add_review_button').click(function(e){
		alert('adsasas');
		document.review_form.method='POST';
		document.review_form.action='shop_product_review_action';
		document.review_form.submit();
		e.preventDefault();
		});

	$('a[data-toggle="tab"]').on('shown.bs.tab', function (e) {
			 //e.target // newly activated tab
			 //console.log(e.target);
			 //console.log(e.relatedTarget);
			  
			  product_no=$(e.relatedTarget).attr("product_no")
			  param='product_no='+product_no
			  $.ajax({
			url:'rest_shop_product_review_list',
			data:param,
			method:'POST',
			dataType:'json',
			success:function(reivewArray){
				html="";
				$.each(reivewArray,function(i,review){
					//console.log(review.review_no+","+review.review_name)
					html+="<div class=\"comment\">";
						html+="<div class=\"comment-author-ava\"><img src=\"img/reviews/02.jpg\" alt=\"Review author\"></div>";
						html+="<div class=\"comment-body\">";
							html+="<div class=\"comment-header d-flex flex-wrap justify-content-between\">";
								html+="<h4 class=\"comment-title\">"+review.review_title+"</h4>";
								html+="<div class=\"mb-2\">";
									html+="<div class=\"rating-stars\"><i class=\"icon-star filled\"></i><i class=\"icon-star filled\"></i><i class=\"icon-star filled\"></i><i class=\"icon-star filled\"></i><i class=\"icon-star filled\"></i>";
									html+="</div>";
								html+="</div>";
							html+="</div>";
							html+="<p class=\"comment-text\">"+review.review_content+"</p>";
							html+="<div class=\"comment-footer\"><span class=\"comment-meta\">"+review.review_name+"</span></div>";
						html+=" </div>";
					html+="</div>";
					
				});
				$('#reviews').html(html);
			}
		});
	});
		
});



