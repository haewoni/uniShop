/*
1. ID : 4~12자 이내의 영어와 숫자로 입력
2. 첫문자는 숫자로 시작할 수 없음
3. Password : 4~12자 이내며, 입력 필수
*/

/************************** 아이디 검사 *****************************/

function login() {
	var member_id = document.getElementsByName('member_id')

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
		var ch = member_id.charAt(i);//문자를 반환(정수형), 범위 검사 가능

		//입력된 문자를 검사
		if ((ch > "A" || ch < "Z")) {
			alert("아이디는 영문 소문자만 가능합니다");
			member_id.select();
			return;
		}
	}


/************************** 비밀번호 검사 *****************************/
	if (form.txtPwd.value == "") {
		alert("패스워드를 입력 해야 합니다");
		form.txtPwd.focus();//포커스를 Password박스로 이동.
		return;
		}
	}








