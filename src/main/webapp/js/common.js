function jumun_address_form_action(){
	document.jumun_address_form.action='jumun_address_action';
	document.jumun_address_form.method='POST';
	document.jumun_address_form.submit();
}

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
	
function jumun_address_action() {
	document.f.action = "jumun_address_action";
	document.f.method='POST';
	document.f.submit();
}








