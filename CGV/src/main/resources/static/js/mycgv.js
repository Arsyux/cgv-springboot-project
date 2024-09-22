/* 이메일 선택 */
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
	$('#email_regex')[0].textContent = '';
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
// 프로필 이미지 업로드
function uploadProfileImgTemp() {
	//console.log('테스트');
	let formData = new FormData();
	let inputFile = $("#profileImgUpload")[0];
	let file = inputFile.files[0];
	
	//console.log(file);
	
	formData.append("profileImgUpload", file);
	
	$.ajax({
		type : "POST",
		url : "/uploadProfileImgTemp",
		data : formData,
		//enctype : 'multipart/form-data',
		contentType: false, // 필수 : x-www-form-urlencoded로 파싱되는 것을 방지
        processData: false,  // 필수: contentType을 false로 줬을 때 QueryString 자동 설정됨. 해제
		success : function(response) {
			//console.log("이미지를 서버에 전송하였습니다. 이미지 경로: " + response["data"]);
			//console.log(response["data"]);
			
			// 5초후에 이미지 로드
			setTimeout(() => {
				$("#profileImg").attr("src", response["data"]);
			}, 5000);
		},
		fail : function(error) {
			alert('이미지 업로드 중 에러가 발생하였습니다.');
		}
	}); // $.ajax
	
}

// 사용자 MY CGV 업데이트
function btn_update_click() {
	
	let email = $("#email").val() + "@" + $("#input_email").val();
	let marketing_email = $('#marketing_email')[0].checked;
	let marketing_sms = $('#marketing_sms')[0].checked;
	let marketing_phone = $('#marketing_phone')[0].checked;
	let agree_promotion = $('#rdo_agree1')[0].checked;
	let agree_stamp = $('#rdo_agree2')[0].checked;
	
	let user = {
		password : $("#pw").val(),
		profile : $("#profileImg").attr("src"),
		email : email,
		marketing_email : marketing_email,
		marketing_sms : marketing_sms,
		marketing_phone : marketing_phone,
		agree_promotion : agree_promotion,
		agree_stamp : agree_stamp
	}
	
	$.ajax({
		type: "POST",
		url: "/updateMyCGV",
		data: JSON.stringify(user),
		contentType: "application/json; charset=utf-8"
	}).done(function(response) {
		let status = response["status"];
		if(status == 200) {
			// 정보 수정 성공
			//location = "/";
			location ="/info/mycgv";
		} else {
			// 정보 수정 실패
			alert('MY CGV 업데이트중 에러가 발생하였습니다.');
		}
	}).fail(function(error) {
		alert("에러 발생 : " + error);
	});
}
