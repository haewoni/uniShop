/**
 * 
 */

$.ajax({
		url:'url',
		type:'post',
		dataType:'json',$data
});

$('#jumunPayment').on('show.bs.modal',function(e){
		jumun_no=$(e.relatedTarget).text();
		param='jumun_no='+jumun_no 
		//alert(param)
		$.ajax({
            url:'jumun_detail',
			data:param,
			method:'GET',
			dataType:'json',
			success:function(jpArray){
				console.log(jpArray);
				html="";
				cart_subtotal=0;
				delivery_fee=0;
				jumun_tot_price=cart_subtotal + delivery_fee;
				$.each(jpArray,function(i,jp){
					console.log(jp.jumun_no+","+jp.jumun_status)
					html+=" <tr>";
                    html+="<td>";
                    html+="  <div class=\"product-item\"><a class=\"product-thumb\" href=\"shop-single.html\"><img src=\"IMAGE/"+jd.product_no+"_1.png\" alt=\"Product\"></a>";
                    html+="    <div class=\"product-info\">";
                    html+="      <h4 class=\"product-title\"><a href=\"shop_product_detail?product_no="+jd.product_no+"\">"+jd.jumun_d_product_name+"<small>x "+jd.jumun_d_product_qty+"</small></a></h4><span><em>Size:</em> "+jd.jumun_d_product_size+"</span><span>";
                    html+="    </div>";
                    html+="  </div>";
                    html+="</td>";
                    html+="<td class=\"text-center text-lg text-medium\">"+jd.jumun_d_product_price+"</td>";
                    html+="</tr>";
					tot_price+=jd.jumun_d_product_price;
				});
				$('#tot_price').html(tot_price);
				$('#delivery_fee').html(delivery_fee);
				$('#jumun_tot_price').html(jumun_tot_price);
				$('#orderDetails table > tbody').html(html);
				
			}
        });
		
	});