$(function(){
	//event
	$('#jumun_payment_button').click(function(e){
		alert('adsasas');
		document.jumun_payment_form.action='jumun_payment_action';
		document.jumun_payment_form.method='POST';
		document.jumun_payment_form.submit();
		e.preventDefault();
	});
	
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
				
			}
        });
		
	});
	
	
	
	
});



function jumun_delivery_form_action() {
	document.jumun_delivery_form.action='jumun_delivery_action';
	document.jumun_delivery_form.method='POST';
	document.jumun_delivery_form.submit();
}

function jumun_payment_action() {
	
	document.jumun_payment_form.action='jumun_payment_action';
	document.jumun_payment_form.method='POST';
	document.jumun_payment_form.submit();
}

function jumun_address_form_action(){
	alert('aaaaa')
	document.jumun_address_form.action='jumun_address_action';
	document.jumun_address_form.method='POST';
	document.jumun_address_form.submit();
}
function shop_add_cart_action() {
	document.alert('bbbb');
	document.product_cart_form.action='shop_add_cart_action';
	document.product_cart_form.submit();
}
/*
1. ID : 4~12자 이내의 영어와 숫자로 입력
2. 첫문자는 숫자로 시작할 수 없음
3. Password : 4~12자 이내며, 입력 필수
*/

/************************** 아이디 검사 *****************************/

function login() {
	var member_id = document.getElementsByName('member_id')
	var member_password = document.getElementsByName('member_password')

	/************************** 아이디 검사 *****************************/
	//아이디 입력 필수 조건문
	if (member_id.value == "") {
		alert("아이디를 입력해주세요");
		member_id.focus();//포커스를 id박스로 이동.
		return;
	}

	//아이디 입력 문자수를 12자로 제한하는 조건문

	if (member_id.length > 12) {
		alert("아이디는 12자 이내로 입력 해주세요");
		member_id.select();
		return;
	}

	//입력된 문자의 길이만큼 루프를 돌면서 검사 

	for (i = 0; i < member_id.length; i++) {
		var ch = member_id.charAt(i);

		//입력된 문자를 검사
		if ((ch > "A" || ch < "Z")) {
			alert("아이디는 영문 소문자만 가능합니다");
			member_id.select();
			return;
		}
	}
	/************************** 비밀번호 검사 *****************************/
	if (member_password.value == "") {
		alert("패스워드를 입력 해야 합니다");
		member_password.focus(); //포커스를 Password박스로 이동.
		return;
		}
	}
	








