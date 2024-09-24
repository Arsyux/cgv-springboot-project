<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ include file="../layout/header.jsp"%>
<title>MY CGV</title>
<link rel="stylesheet" href="../css/info.css">
<link rel="stylesheet" href="../css/info/insertMovie.css">
<script src="../js/mycgv.js"></script>

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
					<th>영화 이미지</th>
					<td>
						<img id="profileImg" class="profile" src="../images/common/default_img.png">						
						<input id="profileImgUpload" name="profileImgUpload" type="file" onchange="uploadProfileImgTemp()">
					</td>
				</tr>
				<tr>
					<th>제목</th>
					<td>
						<input id="id" type="text" oninput="id_regex()" required autofocus autocomplete='off'>
						<p id="id_regex" class="re"></p>
					</td>
				</tr>
				<tr>
					<th>영어 제목</th>
					<td>
						<input id="id" type="text" oninput="id_regex()" required autofocus autocomplete='off'>
						<p id="id_regex" class="re"></p>
					</td>
				</tr>
				<tr>
					<th>아이디</th>
					<th>제목</th>
					<td>
						<input id="id" type="text" oninput="id_regex()" required autofocus autocomplete='off'>
						<p id="id_regex" class="re"></p>
					</td>
				</tr>
				<tr>
					<th>비밀번호</th>
					<td>
						<input id="pw" type="password" oninput="pw_regex()" required autocomplete='off' value="a123123!">
						<p id="pw_regex" class="re"></p>
					</td>
				</tr>
				<tr>
					<th>비밀번호 확인</th>
		            <td>
		            	<input id="pwchk" type="password" oninput="pwchk_regex()" required autocomplete='off' value="a123123!">
		            	<p id="pwchk_regex" class="re"></p>
	            	</td>
				</tr>
				<tr>
					<th>생년월일</th>
					<td>
						<label>${ user.birth }</label>
					</td>
				</tr>
				<tr>
					<th>휴대폰 번호</th>
					<td>
						<label>${ user.phone }</label>
					</td>
				</tr>
				<tr>
		            <th>이메일</th>
		            <td>
		            	<input id="email" oninput="email_regex()" type="email" required autocomplete='off' value="${ email_id }">
		                 @ 
		                <input type="url" onblur="emailurl_regex()" id="input_email" required autocomplete='off' value="${ email_url }">
		                <select id="select_email" onchange="select_email()">
		                    <option value="direct" selected>직접입력</option>
		                    <option value="naver">naver.com</option>
		                    <option value="gmail">gmail.com</option>
		                    <option value="hanmail">hanmail.net</option>
		                    <option value="nate">nate.com</option>
		                </select>
		                <p id="email_regex" class="re"></p>
		            </td>
		        </tr>
		        <tr>
			        <th>상영시작날짜</th>
			        <td>
		                <select id="year" onchange="select_year()" required>
		                    <option value="년" disabled hidden selected>년</option>
		                </select>
		                년 
		                <select id="month" onchange="select_month()" required>
		                    <option value="월" disabled hidden selected>월</option>
		                </select>
		                월 
		                <select id="day" required>
		                    <option value="일" disabled hidden selected>일</option>
		                </select>
		                일
		            </td>
		        </tr>
			</table>
		
		</form>
		<div class="btn_update_area">
			<button class="btn_update" onclick="btn_update_click()">내 정보 변경</button>
		</div>
	</div>
	
	
</div>


<!-- 공통 하단영역 시작 -->
<%@ include file="../layout/footer.jsp"%>