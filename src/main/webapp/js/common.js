
/*
var delivery_radio = document.getElementById('deliveryStr').value;
var delivery_value;
for(var i = 0; i < delivery_radio.length; i++){
    if(delivery_radio[i].checked){
        delivery_value = delivery_radio[i].value;
    }
}
*/


function jumun_address_form_action(){
	alert('aaaaa')
	document.jumun_address_form.action='jumun_address_action';
	document.jumun_address_form.method='POST';
	document.jumun_address_form.submit();
}
function shop_add_cart_action() {
	document.product_detail.alert('asdasd');
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
	








