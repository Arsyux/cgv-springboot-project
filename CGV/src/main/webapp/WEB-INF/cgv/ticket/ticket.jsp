<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ include file="../layout/header.jsp"%>

<title>CGV 로그인</title>
<link rel="stylesheet" href="../css/ticket.css">
<script src="../js/ticket.js"></script>

<%@ include file="../layout/navi.jsp"%>
<!-- 공통 상단영역 끝 -->

<div id="ticket_section">
	<div class="movieList">
		<h1 class="title">영화</h1>
		<ul>
			<c:forEach var="movie" items="${ movieList }">
				<c:if test="${ selectMovie.title == movie.title }">
					<li id="movie${ movie.movie_pk }" class="movieName selectedMovie" onclick="movieName_click(this)">${movie.title}</li>
				</c:if>
				<c:if test="${ selectMovie.title != movie.title }">
					<li id="movie${ movie.movie_pk }" class="movieName" onclick="movieName_click(this)">${movie.title}</li>
				</c:if>
			</c:forEach>
		</ul>
	</div>
	<div class="theaterList">
		<h1 class="title">영화관</h1>
		<ul>
			<li id="location0" class="theaterLocation" onclick="theaterLocation_click(this)">서울 <span>▶</span></li>
			<li id="location1" class="theaterLocation selectedLocation" onclick="theaterLocation_click(this)">경기 <span>▶</span></li>
			<li id="location2" class="theaterLocation" onclick="theaterLocation_click(this)">인천 <span>▶</span></li>
			<li id="location3" class="theaterLocation" onclick="theaterLocation_click(this)">서울 <span>▶</span></li>
			<li id="location4" class="theaterLocation" onclick="theaterLocation_click(this)">강원 <span>▶</span></li>
			<li id="location5" class="theaterLocation" onclick="theaterLocation_click(this)">대전/충청 <span>▶</span></li>
			<li id="location6" class="theaterLocation" onclick="theaterLocation_click(this)">대구 <span>▶</span></li>
			<li id="location7" class="theaterLocation" onclick="theaterLocation_click(this)">부산/울산 <span>▶</span></li>
			<li id="location8" class="theaterLocation" onclick="theaterLocation_click(this)">경상 <span>▶</span></li>
			<li id="location9" class="theaterLocation" onclick="theaterLocation_click(this)">광주/전라/제주 <span>▶</span></li>
		</ul>
		<ul>
			<c:forEach var="theater" items="${ theaterList }" varStatus="status">
				<li id="theater${ theater.theater_pk }" class="theaterName" onclick="theaterName_click(this)">${theater.name}</li>
			</c:forEach>
		</ul>
	</div>
	<div class="movieTime">
		<h1 class="title">시간</h1>
		<ul id="movieTime">
		</ul>
	</div>
	<div class="btn_area">
		<button id="insert_ticekting">예매하기</button>
	</div>
</div>

<!-- 공통 하단영역 시작 -->
<%@ include file="../layout/footer.jsp"%>