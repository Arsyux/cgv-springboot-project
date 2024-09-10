$(document).ready(function() {

    // 연도 설정
    let yyyy = document.getElementById('year');
    let now_yyyy = new Date().getFullYear();
    let opt;
    for(let i=now_yyyy; i>=1900; i--) {
        opt = document.createElement("option");
        opt.textContent = i;
        opt.value = i;
        yyyy.appendChild(opt);
    }
    // 월 설정
    let mm = document.getElementById('month');
    for(let i=1; i<=12; i++) {
        opt = document.createElement("option");
        opt.textContent = i;
        opt.value = i;
        mm.appendChild(opt);
    }
    //일 설정
    let dd = document.getElementById('day');
    for(let i=1; i<=31; i++) {
        opt = document.createElement("option");
        opt.textContent = i;
        opt.value = i;
        dd.appendChild(opt);
    }

});
// 연도 선택시 일 재설정
function select_year() {
    let yyyy = document.getElementById('year');
    let mm = document.getElementById('month');
    let dd = document.getElementById('day');
    let opt = dd.getElementsByTagName('option');
    const len = opt.length;
    for(let i=1; i<len; i++) {
        opt[1].remove();
    }
    if(yyyy.value === NaN) { return; }
    if(mm.value === NaN) { return; }
    var last = new Date(yyyy.value, mm.value, 0);
    for(let i=1; i<=last.getDate(); i++) {
        opt = document.createElement("option");
        opt.textContent = i;
        opt.value = i;
        dd.appendChild(opt);
    }
}
// 월 선택시 일 재설정
function select_month() {
    let yyyy = document.getElementById('year');
    let mm = document.getElementById('month');
    let dd = document.getElementById('day');
    let opt = dd.getElementsByTagName('option');
    const len = opt.length;
    for(let i=1; i<len; i++) {
        opt[1].remove();
    }
    if(yyyy.value === NaN) { return; }
    if(mm.value === NaN) { return; }
    var last = new Date(yyyy.value, mm.value, 0);
    for(let i=1; i<=last.getDate(); i++) {
        opt = document.createElement("option");
        opt.textContent = i;
        opt.value = i;
        dd.appendChild(opt);
    }
}

function select_email() {
    let sel = $('#select_email')[0].value;
    switch(sel) {
        case "direct":
            $('#input_email').removeAttr('disabled');
            $('#input_email')[0].value = '';
            break;
        case "naver":
            $('#input_email').attr('disabled', 'disabled');
            $('#input_email')[0].value = 'naver.com';
            break;
        case "gmail":
            $('#input_email').attr('disabled', 'disabled');
            $('#input_email')[0].value = 'gmail.com';
            break;
        case "hanmail":
            $('#input_email').attr('disabled', 'disabled');
            $('#input_email')[0].value = 'hanmail.net';
            break;
        case "nate":
            $('#input_email').attr('disabled', 'disabled');
            $('#input_email')[0].value = 'nate.com';
            break;
    }
}

// 아이디 정규식
function id_regex() {
    let val = $('#id')[0].value;
    
    if(!/^[a-zA-Z][a-zA-Z0-9]{4,14}$/g.exec(val)) {
        if(!/^[a-zA-Z]/.exec(val)) {
            $('#id_regex')[0].textContent = '첫 글자는 알파벳을 사용해주세요.';    
            return;
        }

        $('#id_regex')[0].textContent = '아이디는 5글자 이상 15글자 이하의 알파벳과 숫자를 사용하여 입력해주세요.';
        return;
    }
    
    $('#id_regex')[0].textContent = '';
}

// 비밀번호 정규식
function pw_regex() {
    let val = $('#pw')[0].value;
    let val2 = $('#pwchk')[0].value;
    
    if(val2 != '') {
        pwchk_regex();
    }
    if(!/^(?=.*[a-zA-Z])(?=.*[!@#$%^*+=-])(?=.*[0-9]).{8,15}$/g.exec(val)) {
        $('#pw_regex')[0].textContent = '비밀번호는 영문, 숫자, 특수기호를 조합하여 8자리 이상 15자리 이하로 사용해주세요.';
        return;
    }
    
    $('#pw_regex')[0].textContent = '';

}

// 비밀번호 확인 정규식
function pwchk_regex() {
    let val = $('#pw')[0].value;
    let val2 = $('#pwchk')[0].value;

    if(val2 == '') {
        $('#pwchk_regex')[0].textContent = '';
        return;
    }
    if(val!=val2) {
        $('#pwchk_regex')[0].textContent = '입력하신 비밀번호와 다릅니다.';
        return;        
    }
    
    $('#pwchk_regex')[0].textContent = '';
}

// 이름 입력시 정규식
function name_regex1() {
    let val = $('#name')[0].value;

    if(val == '') {
        $('#name_regex')[0].textContent = '';
        return;
    }

    if(!/^[ㄱ-ㅎ가-힣]{1,}$/g.exec(val)) {
        $('#name_regex')[0].textContent = '한글을 입력해주세요.';
        return;
    }
    
    $('#name_regex')[0].textContent = '';
}

// 이름 입력 완료시 정규식
function name_regex2() {
    let val = $('#name')[0].value;

    if(val == '' || val.length < 2) {
        $('#name_regex')[0].textContent = '';
        return;
    }

    if(!/^[가-힣]{2,10}$/g.exec(val)) {
        $('#name_regex')[0].textContent = '이름을 정확히 입력해주세요.';
        return;
    }
    
    $('#name_regex')[0].textContent = '';
}

// 휴대전화 입력시 정규식
function phone_regex1() {
    let val = $('#phone')[0].value;

    if(val == '') {
        $('#phone_regex')[0].textContent = '';
        return;
    }

    if(!/^[0-9]{1,}$/g.exec(val)) {
        $('#phone_regex')[0].textContent = '숫자를 입력해주세요.';
        return;
    }
    
    $('#phone_regex')[0].textContent = '';
}

// 휴대전화 입력 완료시 정규식
function phone_regex2() {
    let val = $('#phone')[0].value;

    if(val == '') {
        $('#phone_regex')[0].textContent = '';
        return;
    }

    if(!/^(01[016789]{1})-?[0-9]{3,4}-?[0-9]{4}$/g.exec(val)) {
        $('#phone_regex')[0].textContent = '휴대전화를 정확히 입력해주세요.';
        return;
    }
    
    $('#phone_regex')[0].textContent = '';
}

// 이메일 아이디 입력시 정규식
function email_regex() {
    let val = $('#email')[0].value;
    
    if(!/^[ㄱ-ㅎ가-힇a-zA-Z0-9]{0,30}$/g.exec(val)) {
        $('#email_regex')[0].textContent = '이메일 아이디가 너무 깁니다.';
        return;
    }
    
    $('#email_regex')[0].textContent = '';
}

// 이메일 url 입력시 정규식
function emailurl_regex() {
    let val = $('#input_email')[0].value;
    
    if(!/^[a-zA-Z0-9.-]{0,30}\.[a-zA-Z]{2,6}$/g.exec(val)) {
        $('#email_regex')[0].textContent = 'url이 올바르지 않거나 너무 깁니다.';
        return;
    }
    
    $('#email_regex')[0].textContent = '';
}

// 마케팅 정보 수신 동의 - 전체 선택시
function marketing_all_click() {
    if($('#marketing_all').prop('checked')){
        $('#marketing_email').prop('checked', true);
        $('#marketing_sms').prop('checked', true);
        $('#marketing_phone').prop('checked', true);
    } else {
        $('#marketing_email').prop('checked', false);
        $('#marketing_sms').prop('checked', false);
        $('#marketing_phone').prop('checked', false);
    }
}

// 마케팅 정보 수신 동의 - 일반 선택시
function marketing_click() {
    if($('#marketing_email').prop('checked')
    &&$('#marketing_sms').prop('checked')
    &&$('#marketing_phone').prop('checked')){
        $('#marketing_all').prop('checked', true);
    } else {
        $('#marketing_all').prop('checked', false);
    }
}

function agreeBox_click(box) {
    const agreeNum = box.replace('Box', '');
    let agreeBox = $('#' + box);
    let agree = $('#' + agreeNum);
    if(agree.css('display') !== 'block') {
        agreeBox.css('background-image', 'url(../images/common/arrowUp.png)');
        agree.css('display', 'block')
    } else {
        agreeBox.css('background-image', 'url(../images/common/arrowDown.png)');
        agree.css('display', 'none')
    }
}

function btn_join_click() {
	let birth = $("#year").val() + $("#month").val().padStart(2, "0") + $("#day").val().padStart(2, "0");
	let email = $("#email").val() + "@" + $("#input_email").val();
	let marketing_email = $('#marketing_email')[0].checked;
	let marketing_sms = $('#marketing_sms')[0].checked;
	let marketing_phone = $('#marketing_phone')[0].checked;
	let agree_promotion = $('#rdo_agree1')[0].checked;
	let agree_stamp = $('#rdo_agree2')[0].checked;
	
	let user = {
		id : $("#id").val(),
		password : $("#pw").val(),
		name : $("#name").val(),
		birth : birth,
		phone : $("#phone").val(),
		email : email,
		marketing_email : marketing_email,
		marketing_sms : marketing_sms,
		marketing_phone : marketing_phone,
		agree_promotion : agree_promotion,
		agree_stamp : agree_stamp
	}
	
	$.ajax({
		type: "POST",
		url: "/auth/join",
		data: JSON.stringify(user),
		contentType: "application/json; charset=utf-8"
	}).done(function(response) {
		let status = response["status"];
		if(status == 200) {
			// 회원가입 성공
			let message = response["data"];
			alert(message);
			location = "/";	
		} else {
			// 회원가입 실패
			alert('회원가입 실패!');
		}
	}).fail(function(error) {
		alert("에러 발생 : " + error);
	});
			
}