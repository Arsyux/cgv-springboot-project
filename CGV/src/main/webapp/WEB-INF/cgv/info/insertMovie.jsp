<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ include file="../layout/header.jsp"%>
<title>MY CGV</title>
<link rel="stylesheet" href="../css/info.css">
<link rel="stylesheet" href="../css/info/insertMovie.css">
<script src="../js/mycgv.js"></script>
<script src="../js/insertMovie.js"></script>

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
			<h1>영화 추가</h1>
			<!-- 프로필 영역 -->
			<table>
				<tr>
					<th>영화 메인<br>이미지</th>
					<td>
						<input id="movieMainImg" name="movieMainImg" type="file">
					</td>
				</tr>
				<tr>
					<th>영화 메인<br>영상</th>
					<td>
						<input id="movieMainVideo" name="movieMainVideo" type="file">
					</td>
				</tr>
				<tr>
					<th>상단 광고<br>이미지</th>
					<td>
						<input id="movieTopImg" name="movieTopImg" type="file">
					</td>
				</tr>
				<tr>
					<th>상단 광고<br>배경색</th>
					<td>
						<input id="movieTopBackgroundColor" type="color" required autocomplete='off' value="#1E0D44">
						<input id="movieTopBackgroundColorTxt" type="text" required autocomplete='off' value="#1E0D44">
						<p id="movieTopBackgroundColor_regex" class="re"></p>
					</td>
				</tr>
				<tr>
					<th>제목</th>
					<td>
						<input id="title" type="text" required autocomplete='off' value="트랜스포머 ONE">
						<p id="title_regex" class="re"></p>
					</td>
				</tr>
				<tr>
					<th>영어 제목</th>
					<td>
						<input id="en_title" type="text" required autocomplete='off' value="Transformers One">
						<p id="en_title_regex" class="re"></p>
					</td>
				</tr>
				<tr>
					<th>감독</th>
					<td>
						<input id="director" type="text" required autocomplete='off' value="조시 쿨리">
						<p id="director_regex" class="re"></p>
					</td>
				</tr>
				<tr>
					<th>배우</th>
					<td>
						<input id="actor" type="text" required autocomplete='off' value="크리스 헴스워스 ,  브라이언 타이리 헨리 ,  스칼렛 요한슨 ,  키건 마이클 키 ,  스티브 부세미 ,  로렌스 피시번 ,  존 햄">
						<p id="actor_regex" class="re"></p>
					</td>
				</tr>
				<tr>
					<th>장르</th>
					<td>
						<input id="genre" type="text" required autocomplete='off' value="애니메이션, 액션, 어드벤처">
						<p id="genre_regex" class="re"></p>
					</td>
				</tr>
				<tr>
					<th>기본 정보</th>
					<td>
						<input id="info" type="text" required autocomplete='off' value="전체관람가, 104분, 미국">
						<p id="info_regex" class="re"></p>
					</td>
				</tr>	
				<tr>
					<th>상세 설명</th>
					<td>
						<textarea id="detail" rows="20" required="required" autocomplete="off">
행성의 운명을 건 전쟁,
세상을 구할 놀라운 변신이 시작된다!

사이버트론 행성의 지하 광산에서 일하는
변신 못 하는 하급 로봇 오라이온 팩스와 D-16.
한 번도 가보지 못한 지상 세계를 꿈꾸던 둘은
쾌활한 수다쟁이 B-127, 카리스마 넘치는 엘리타 원과 함께
출입이 금지된 지상에 도달한다.

지상에서 잠들어 있던 알파 트라이온을 만난 넷은
그의 도움으로 잠재되어 있던 변신 능력을 얻게 된다.
막강한 힘과 변신 능력으로 자유를 느낀 것도 잠시,

자신들의 행성을 지배하고 있는 거대한 배후의 존재를 알게 되며
모든 것을 바꿀 전쟁을 시작하는데…
						</textarea>
						<p id="detail_regex" class="re"></p>
					</td>
				</tr>
		        <tr>
			        <th>상영 날짜</th>
			        <td>
		                <select id="screening_date_year" onchange="select_screening_year()" required>
		                    <option value="년" disabled hidden selected>년</option>
		                </select>
		                년 
		                <select id="screening_date_month" onchange="select_screening_month()" required>
		                    <option value="월" disabled hidden selected>월</option>
		                </select>
		                월 
		                <select id="screening_date_day" required>
		                    <option value="일" disabled hidden selected>일</option>
		                </select>
		                일
		            </td>
		        </tr>
		        <tr>
			        <th>종영 날짜</th>
			        <td>
		                <select id="end_date_year" onchange="select_end_year()" required>
		                    <option value="년" disabled hidden selected>년</option>
		                </select>
		                년 
		                <select id="end_date_month" onchange="select_end_month()" required>
		                    <option value="월" disabled hidden selected>월</option>
		                </select>
		                월 
		                <select id="end_date_day" required>
		                    <option value="일" disabled hidden selected>일</option>
		                </select>
		                일
		            </td>
		        </tr>
			</table>
		
		</form>
		<div class="btn_insert_area">
			<button class="btn_insert" onclick="btn_insert_click()">영화 등록</button>
		</div>
	</div>
	
	
</div>


<!-- 공통 하단영역 시작 -->
<%@ include file="../layout/footer.jsp"%>