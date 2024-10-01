$(document).ready(function() {
});

// 영화 선택
function movieName_click(title) {
	let movieList = $("li.movieName");
	let movieid = "#"+title.id;
	
	for(let i=0; i<movieList.length; i++) {
		if(movieList[i].classList.contains('selectedMovie')) {			
			movieList[i].classList.remove('selectedMovie');
		}
	}
	$(movieid).addClass("selectedMovie");
}

// 영화관 선택
function theaterName_click(title) {
	let list = $("li.theaterName");
	let id = "#"+title.id;
	let theater_pk = title.id.replace("theater", "");
	
	for(let i=0; i<list.length; i++) {
		if(list[i].classList.contains('selectedTheater')) {			
			list[i].classList.remove('selectedTheater');
		}
	}
	$(id).addClass("selectedTheater");
	
	// 영화가 선택되었는지
	let selectMovieFlag = false;
	let movie_pk;
	
	let movielist = $("li.movieName");
	
	for(let i=0; i<movielist.length; i++) {
		if(movielist[i].classList.contains('selectedMovie')) {
			selectMovieFlag = true;
			movie_pk = movielist[i].id.replace("movie", "");
			break;
		}
	}
	
	// 노드 청소
	let movieTime = document.getElementById("movieTime");
	let movieTimeli = movieTime.childNodes;
	for(let i=movieTimeli.length - 1; i>=0; i--) {
	    movieTime.removeChild(movieTimeli[i]);
	}
	
	// 영화가 선택되어 있을 경우
	if(selectMovieFlag) {
		let screening = {
			theater_pk : theater_pk,
			movie_pk : movie_pk,
		}
		
		$.ajax({
				type: "POST",
				url: "/ticket/getScreeningList",
				data: JSON.stringify(screening),
				contentType: "application/json; charset=utf-8"
			}).done(function(response) {
				let status = response["status"];
				if(status == 200) {
					// 상영 조회 성공
					let message = response["data"];
					
					if(message == '') {
						alert('상영 목록이 없습니다.');
						return;
					}
					
					let dayList = document.getElementById('movieTime');
					
					//<li id="location0" class="theaterLocation" onclick="theaterLocation_click(this)">서울 <span>▶</span></li>
					$(response["data"]).each(function(){
						//alert(this.movieDateTime);
						let day =document.createElement('li');
						day.innerText = this.movieDateTime.substring(0, this.movieDateTime.length - 5);
						day.classList.add('ticketTime');
						day.setAttribute('id', this.screening_pk);
						day.setAttribute('onclick', 'TicketTime_click(this)');
						dayList.appendChild(day);
					});
				} else {
				// 영화등록 실패
					alert('상영 조회에 실패했습니다.');
				}
			}).fail(function(error) {
				alert("에러 발생 : " + error);
			});
		
		
	}
	
}

function TicketTime_click(title) {
	let list = $("li.ticketTime");
	let id = "#"+title.id;
	
	for(let i=0; i<list.length; i++) {
		if(list[i].classList.contains('selectedTicketTime')) {			
			list[i].classList.remove('selectedTicketTime');
		}
	}
	
	$(id).addClass("selectedTicketTime");
}

function theaterLocation_click(title) {
	let list = $("li.theaterLocation");
	let id = "#"+title.id;
	
	for(let i=0; i<list.length; i++) {
		if(list[i].classList.contains('selectedLocation')) {			
			list[i].classList.remove('selectedLocation');
		}
	}
	$(id).addClass("selectedLocation");
}


function btn_insert_click() {
	
}