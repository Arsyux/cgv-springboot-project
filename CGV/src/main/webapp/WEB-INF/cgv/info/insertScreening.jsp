<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ include file="../layout/header.jsp"%>
<title>MY CGV</title>
<link rel="stylesheet" href="../css/info.css">
<link rel="stylesheet" href="../css/info/insertScreening.css">
<script src="../js/mycgv.js"></script>
<script src="../js/insertScreening.js"></script>

<%@ include file="../layout/navi.jsp"%>
<!-- 공통 상단영역 끝 -->

<!-- info 배너 -->
<img id="mycgv_banner" src="../images/common/mycgv_banner.png">

<!-- info 영역 -->
<div id="info_area">

	<!-- nav 영역 -->
	<%@ include file="info_navi.jsp"%>
	
	<!-- main 영역 -->
	<div id="info_main">
		<form>
			<h1>상영 등록</h1>
			<!-- 프로필 영역 -->
			<table>
				<tr>
					<th>영화관 이름</th>
					<td>
		                <select id="theaterlist" required>
		                    <option value="영화관 이름" disabled hidden="hidden" selected>영화관 이름</option>
		                    <c:forEach var="theater" items="${ theaterlist }">
		                    	<option value="${ theater.theater_pk }">${ theater.name }</option>
		                    </c:forEach>
		                </select>
		                <p id="user_id_regex" class="re"></p>
		            </td>
				</tr>
				<tr>
					<th>영화 이름</th>
					<td>
		                <select id="movielist" required>
		                    <option value="영화이름" disabled hidden="hidden" selected>영화 이름</option>
		                    <c:forEach var="movie" items="${ movielist }">
		                    	<option value="${ movie.movie_pk }">${ movie.title }</option>
		                    </c:forEach>
		                </select>
		                <p id="user_id_regex" class="re"></p>
		            </td>
				</tr>
				<tr>
					<th>영화 날짜</th>
					<td>
		                <select id="year" onchange="select_year()" required>
		                    <option value="년" disabled hidden="hidden" selected>년</option>
		                </select>
		                년 
		                <select id="month" onchange="select_month()" required>
		                    <option value="월" disabled hidden="hidden" selected>월</option>
		                </select>
		                월 
		                <select id="day" required>
		                    <option value="일" disabled hidden="hidden" selected>일</option>
		                </select>
		                일
		                <select id="hour" required>
		                    <option value="시" disabled hidden="hidden" selected>시</option>
		                </select>
		                시
		                <select id="min" required>
		                    <option value="분" disabled hidden="hidden" selected>분</option>
		                </select>
		                분
					</td>
				</tr>
				<tr>
					<th>좌석수</th>
					<td>
						<input id="seats" type="number" required autocomplete='off' value="100">
						<p id="user_id_regex" class="re"></p>
					</td>
				</tr>
			</table>
		</form>
		<div class="btn_insert_area">
			<button class="btn_insert" onclick="btn_insert_click()">상영 등록</button>
		</div>
	</div>
	
	
</div>


<!-- 공통 하단영역 시작 -->
<%@ include file="../layout/footer.jsp"%>