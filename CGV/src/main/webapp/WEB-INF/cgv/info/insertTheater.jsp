<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ include file="../layout/header.jsp"%>
<title>MY CGV</title>
<link rel="stylesheet" href="../css/info.css">
<link rel="stylesheet" href="../css/info/insertTheater.css">
<script src="../js/mycgv.js"></script>
<script src="../js/insertTheater.js"></script>

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
			<h1>영화관 추가</h1>
			<!-- 프로필 영역 -->
			<table>
				<tr>
					<th>영화관 이름</th>
					<td>
						<input id="teaterName" type="text" required autocomplete='off' value="분당">
					</td>
				</tr>
				<tr>
			        <th>영화관 위치</th>
			        <td>
		                <select id="location" required>
		                    <option value="서울">서울</option>
		                    <option value="경기" selected>경기</option>
		                    <option value="인천">인천</option>
		                    <option value="강원">강원</option>
		                    <option value="대전/충청">대전/충청</option>
		                    <option value="대구">대구</option>
		                    <option value="부산/울산">부산/울산</option>
		                    <option value="경상">경상</option>
		                    <option value="광주/전라/제주">광주/전라/제주</option>		                    
		                </select>
		                <p id="location_regex" class="re"></p>
		            </td>
		        </tr>
				<tr>
					<th>상세 주소</th>
					<td>
						<input id="locationDetail" type="text" required autocomplete='off' value="경기도 성남시 분당구">
						<p id="locationDetail_regex" class="re"></p>
					</td>
				</tr>
			</table>
		</form>
		<div class="btn_insert_area">
			<button class="btn_insert" onclick="btn_insert_click()">영화관 등록</button>
		</div>
	</div>
	
	
</div>


<!-- 공통 하단영역 시작 -->
<%@ include file="../layout/footer.jsp"%>