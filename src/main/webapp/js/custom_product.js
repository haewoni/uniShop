
$(function(){
	$('#add_cart_button').click(function(e){
		alert('adsasas');
		document.product_detail_cart.method='POST';
		document.product_detail_cart.action='shop_add_cart_action';
		document.product_detail_cart.submit();
		e.preventDefault();
		});
	});
	


$(function(){
	$('#add_wishlist_button').click(function(e){
		alert('2');
		document.product_detail_cart.method='POST';
		document.product_detail_cart.action='shop_add_wishlist_action';
		document.product_detail_cart.submit();
		e.preventDefault();
		});
	});
	
$(function(){
	$('#add_wishlist_button1').click(function(e){
		alert('2');
		document.product_detail_cart1.method='POST';
		document.product_detail_cart1.action='shop_add_wishlist_action';
		document.product_detail_cart1.submit();
		e.preventDefault();
		});
	});




$(function(){
	$('#add_review_button').click(function(e){
		alert('adsasas');
		document.review_form.method='POST';
		document.review_form.action='shop_product_review_action';
		document.review_form.submit();
		e.preventDefault();
		});
	});
/**
 $('#orderDetails').on('show.bs.modal',function(e){
		jumun_no=$(e.relatedTarget).text();
		param='jumun_no='+jumun_no 
		alert(param)
		$.ajax({
            url:'jumun_detail',
			data:param,
			method:'GET',
			dataType:'json',
			success:function(jdArray){
				console.log(jdArray);
				html="";
				$.each(jdArray,function(i,jd){
					console.log(jd.jumun_d_no+","+jd.jumun_d_product_name)
					html+=" <tr>";
                    html+="<td>";
                    html+="  <div class=\"product-item\"><a class=\"product-thumb\" href=\"shop-single.html\"><img src=\"IMAGE/"+jd.product_no+"_1.png\" alt=\"Product\"></a>";
                    html+="    <div class=\"product-info\">";
                    html+="      <h4 class=\"product-title\"><a href=\"shop-single.html\">Unionbay Park<small>x 1</small></a></h4><span><em>Size:</em> 10.5</span><span><em>Color:</em> Dark Blue</span>";
                    html+="    </div>";
                    html+="  </div>";
                    html+="</td>";
                    html+="<td class=\"text-center text-lg text-medium\">$43.90</td>";
                    html+="</tr>";
				});
				//
				$('#orderDetails table > tbody').html(html)
 */
	$(function(){
		$('a[data-toggle="tab"]').on('shown.bs.tab', function (e) {
			  e.target // newly activated tab
			  e.relatedTarget // previous active tab
			console.log(e.target);
			});
		
	});
	




