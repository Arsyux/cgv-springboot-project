$(document).ready(function() {

	let now_yyyy = new Date().getFullYear();
	let opt1;
	let opt2;

    // 연도 설정
    let screening_date_yyyy = document.getElementById('screening_date_year');
	let end_date_yyyy = document.getElementById('end_date_year');	    
    for(let i=now_yyyy; i>=1900; i--) {
        opt1 = document.createElement("option");
        opt1.textContent = i;
        opt1.value = i;
        screening_date_yyyy.appendChild(opt1);

		opt2 = document.createElement("option");
		opt2.textContent = i;
		opt2.value = i;
		end_date_yyyy.appendChild(opt2);
    }
    // 월 설정
	let screening_date_mm = document.getElementById('screening_date_month');
	let end_date_mm = document.getElementById('end_date_month');
	    
	for(let i=1; i<=12; i++) {
        opt1 = document.createElement("option");
        opt1.textContent = i;
        opt1.value = i;
		screening_date_mm.appendChild(opt1);
		
		opt2 = document.createElement("option");
		opt2.textContent = i;
		opt2.value = i;
		end_date_mm.appendChild(opt2);
    }
    //일 설정
	let screening_date_dd = document.getElementById('screening_date_day');
	let end_date_dd = document.getElementById('end_date_day');
	    
	for(let i=1; i<=31; i++) {
        opt1 = document.createElement("option");
        opt1.textContent = i;
        opt1.value = i;
		screening_date_dd.appendChild(opt1);

		opt2 = document.createElement("option");
		opt2.textContent = i;
		opt2.value = i;
		end_date_dd.appendChild(opt2);
    }

});
// 연도 선택시 일 재설정
function select_screening_year() {
    let yyyy = document.getElementById('screening_date_year');
    let mm = document.getElementById('screening_date_month');
    let dd = document.getElementById('screening_date_day');
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
function select_end_year() {
    let yyyy = document.getElementById('end_date_year');
    let mm = document.getElementById('end_date_month');
    let dd = document.getElementById('end_date_day');
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
function select_screening_month() {
    let yyyy = document.getElementById('screening_date_year');
    let mm = document.getElementById('screening_date_month');
    let dd = document.getElementById('screening_date_day');
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
function select_end_month() {
    let yyyy = document.getElementById('end_date_year');
    let mm = document.getElementById('end_date_month');
    let dd = document.getElementById('end_date_day');
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

	$("#screening_date_year").val('2024');
	$("#screening_date_month").val('9');
	$("#screening_date_day").val('25');

	$("#end_date_year").val('2024');
	$("#end_date_month").val('10');
	$("#end_date_day").val('31');
	
	let screening_date = $("#screening_date_year").val() + $("#screening_date_month").val().padStart(2, "0") + $("#screening_date_day").val().padStart(2, "0");
	let end_date = $("#end_date_year").val() + $("#end_date_month").val().padStart(2, "0") + $("#end_date_day").val().padStart(2, "0");
			
	
	let movie = {
		movieMainImg : $("#movieMainImg").val(),
		title : $("#title").val(),
		screening_date : screening_date,
		end_date : end_date
	}
	console.log('제목: ' + movie["title"]);
	console.log('상영날짜: ' + movie["screening_date"]);
	console.log('종용날짜: ' + movie["end_date"]);
	
	/*
	$.ajax({
		type: "POST",
		url: "/info/insertMovie",
		data: JSON.stringify(movie),
		contentType: "application/json; charset=utf-8"
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
	*/	
}