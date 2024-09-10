<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ include file="../layout/header.jsp"%>

<title>CGV 회원가입</title>
<link rel="stylesheet" href="../css/join.css">
<script src="../js/join.js"></script>

<%@ include file="../layout/navi.jsp"%>
<!-- 공통 상단영역 끝 -->

<!-- 회원가입 영역 -->
<img id="join_img" src="../images/common/img_join_hd.jpg">
<div id="join_section1">
	<h3>기본정보</h3>
    <table>
		<tr>
			<th>아이디</th>
			<td><input id="id" type="text" oninput="id_regex()" required autofocus autocomplete='off'><p id="id_regex" class="re"></p></td>
		</tr>
        <tr>
	        <th>비밀번호</th>
	        <td><input id="pw" type="password" oninput="pw_regex()" required autocomplete='off'><p id="pw_regex" class="re"></p></td>
        </tr>
        <tr>
            <th>비밀번호 확인</th>
            <td><input id="pwchk" type="password" oninput="pwchk_regex()" required autocomplete='off'><p id="pwchk_regex" class="re"></p></td>
        </tr>
        <tr>
            <th>이름</th>
            <td><input id="name" oninput="name_regex1()" onblur="name_regex2()" type="text" required autocomplete='off'><p id="name_regex" class="re"></p></td>
        </tr>
        <tr>
            <th>생년월일</th>
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
        <tr>
            <th>휴대전화번호</th>
            <td><input id="phone" type="tel" placeholder="(-제외하고입력)" oninput="phone_regex1()" onblur="phone_regex2()" required autocomplete='off'><p id="phone_regex" class="re"></p></td>
        </tr>
        <tr>
            <th>이메일</th>
            <td>
            	<input id="email" oninput="email_regex()" type="email" required autocomplete='off'>
                 @ 
                <input type="url" onblur="emailurl_regex()" id="input_email" required autocomplete='off'>
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
	</table>
    
    <h3>선택정보</h3>
    <table>
	    <tr>
	    	<th>CJ ONE 마케팅<br>
	            정보 수신 동의</th>
	        <td>
	            <p class="txt1">포인트/이벤트/문화공연/상품 소식을 전해드립니다. (공지목적의 발송되는 메일은 제외)<br>
	            아래 채널을 선택하실 경우 해당 채널을 통한 마케팅 수신에 동의하신 것으로 봅니다.</p>
	            
	            <div id="chkBoxs">
	                <input type="checkbox" id="marketing_all" onclick="marketing_all_click()">
	                <label for="marketing_all">전체 동의</label>
	            
	                <input type="checkbox" id="marketing_email" onclick="marketing_click()">
	                <label for="marketing_email">이메일</label>
	                
	                <input type="checkbox" id="marketing_sms" onclick="marketing_click()">
	                <label for="marketing_sms">SMS</label>
	                
	                <input type="checkbox" id="marketing_phone" onclick="marketing_click()">
	                <label for="marketing_phone">휴대전화</label>
	            </div>
	
	            <p class="txt2">
	                ※ 회원은 본 서비스 이용 동의 대한 거부를 할 수 있으며, 미 동의 시 본 서비스에 대한 혜택을 받으실 수 없습니다.<br>
	                ※ CJ ONE 마케팅정보 수신동의는 CJ ONE 개인정보 수집 및 활용동의(선택) 동의 시 가능합니다.<br>
	                
	                <a href="#a">개인정보 수집 및 활용동의 설정</a>
	            </p>
	        </td>
	    </tr>
	</table>
        
	<h3>정보제공 동의여부</h3>
	<div id="agreeBox1" onclick="agreeBox_click(this.id)">홍보 및 마케팅을 위한 개인정보 수집 및 활용 동의 (선택)</div>
	<div id="agree1">
	    <table>
	        <thead>
	            <tr>
	                <th>수집목적</th>
	                <th>수집항목</th>
	                <th>보유기간</th>
	            </tr>
	        </thead>
	        <tbody>
	            <tr>
	                <td>상품 또는 서비스의 홍보 및 마케팅 활동(사은/판촉행사 등 각종 이벤트 및 행사 관련 정보안내, 제반 이벤트/프로모션 활동, 당사 및 제휴사 상품/서비스 안내 및 권유)</td>
	                <td>- 이메일주소, 휴대전화번호, 단말식별번호(단말기 아이디), PUSH 토큰</td>
	                <td>회원 탈퇴 후 30일까지</td>
	            </tr>
	        </tbody>
	    </table>
	    <div class="agree_choose">
	        <input type="radio" id="rdo_disagree1" name="agree1" checked>
	        <label for="rdo_disagree1">비동의</label>
	        <input type="radio" id="rdo_agree1" name="agree1">
	        <label for="rdo_agree1">동의</label>
	    </div>
	</div>
	<div id="agreeBox2" onclick="agreeBox_click(this.id)">스탬프 서비스 이용을 위한 개인정보 수집 및 활용 동의 (선택)</div>
	<div id="agree2">
	    <table>
	        <thead>
	            <tr>
	                <th>수집주체</th>
	                <th>수집 목적</th>
	                <th>수집 항목</th>
	                <th>보유기간</th>
	            </tr>
	        </thead>
	        <tbody>
	            <tr>
	                <td>CJ ONE및 스템프 서비스가 제휴된 제휴사</td>
	                <td>e-스탬프 서비스 제공 및 혜택 제공</td>
	                <td>상품명(서비스명), 상품분류명, 구매/이용 수량, 구매/이용일시</td>
	                <td>회원 탈퇴 후 30일 까지 또는 해당 서비스 동의 철회시까지</td>
	            </tr>
	        </tbody>
	    </table>
	    <div class="agree_choose">
	        <input type="radio" id="rdo_disagree2" name="agree2" checked>
	        <label for="rdo_disagree2">비동의</label>
	        <input type="radio" id="rdo_agree2" name="agree2">
	        <label for="rdo_agree2">동의</label>
	    </div>
	</div>
	
	<div class="btn_area">
		<button id="btn_join" onclick="btn_join_click()">회원가입</button>
    </div>
</div>

<!-- 공통 하단영역 시작 -->
<%@ include file="../layout/footer.jsp"%>