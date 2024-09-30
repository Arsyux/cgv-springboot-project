$(document).ready(function() {

    // 연도 설정
    let yyyy = document.getElementById('year');
    let now_yyyy = new Date().getFullYear();
    let opt;
    for(let i=now_yyyy + 1; i>=now_yyyy; i--) {
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
    // 일 설정
    let dd = document.getElementById('day');
    for(let i=1; i<=31; i++) {
        opt = document.createElement("option");
        opt.textContent = i;
        opt.value = i;
        dd.appendChild(opt);
    }

	// 시 설정
    let hh = document.getElementById('hour');
    for(let i=0; i<24; i++) {
        opt = document.createElement("option");
        opt.textContent = i;
        opt.value = i;
        hh.appendChild(opt);
    }
	
	// 분 설정
    let min = document.getElementById('min');
    for(let i=0; i<=55; i+=5) {
        opt = document.createElement("option");
        opt.textContent = i;
        opt.value = i;
        min.appendChild(opt);
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

function btn_insert_click() {
	
	alert('Hi');
	
	let datetime = $("#year").val() + $("#month").val().padStart(2, "0") + $("#day").val().padStart(2, "0")
					+ $("#hour").val().padStart(2, "0") + $("#min").val().padStart(2, "0");
	
	alert(datetime);				
	return;
	
	let theater = {
		movieTopBackgroundColor : $("#movieTopBackgroundColorTxt").val(),
		title : $("#title").val(),
		en_title : $("#en_title").val(),
		director : $("#director").val(),
		actor : $("#actor").val(),
		genre : $("#genre").val(),
		info : $("#info").val(),
		detail : $("#detail").val(),
		screening_date : screening_date,
		end_date : end_date
	}
	
	$.ajax({
			type: "POST",
			url: "/info/insertTheater",
			data: formData,
			contentType: false,
	        processData: false
		}).done(function(response) {
			let status = response["status"];
			if(status == 200) {
				// 영화등록 성공
				let message = response["data"];
				alert(message);
				location = "/info/insertMovie";	
			} else {
			// 영화등록 실패
				alert('영화등록 실패!');
			}
		}).fail(function(error) {
			alert("에러 발생 : " + error);
		});
}