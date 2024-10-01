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
	
	let datetime = $("#year").val() + "-" + $("#month").val().padStart(2, "0") + "-" + $("#day").val().padStart(2, "0") + " "
					+ $("#hour").val().padStart(2, "0") + ":" + $("#min").val().padStart(2, "0");
	
	if($("#theaterlist").val() == null ||  $("#theaterlist").val() == '') {
		alert('영화관을 선택해주세요.');
		return;
	}
	
	if($("#movielist").val() == null ||  $("#movielist").val() == '') {
		alert('영화를 선택해주세요.');
		return;
	}
	
	let screening = {
		theater_pk : $("#theaterlist").val(),
		movie_pk : $("#movielist").val(),
		movieDateTime : datetime,
		seats : $("#seats").val()
	}
	
	$.ajax({
			type: "POST",
			url: "/info/insertScreening",
			data: JSON.stringify(screening),
			contentType: "application/json; charset=utf-8"
		}).done(function(response) {
			let status = response["status"];
			if(status == 200) {
				// 영화등록 성공
				let message = response["data"];
				alert(message);
				location = "/info/insertScreening";
			} else {
			// 영화등록 실패
				alert('영화관 등록 실패!');
			}
		}).fail(function(error) {
			alert("에러 발생 : " + error);
		});
}