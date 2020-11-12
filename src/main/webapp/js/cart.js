/**
 * 
 */
$(function size(){
	$("#cart_product_size").change(function(e){
		console.log(e.target);
		console.log($("#cart_product_size option:selected").val());
		return $("#cart_product_size option:selected").val();
		
	});
});

$(function qty(){
	$("#cart_qty").change(function(e){
		console.log(e.target);
		console.log($("#cart_qty option:selected").val());
		return $("#cart_qty option:selected").val();
	});
});


