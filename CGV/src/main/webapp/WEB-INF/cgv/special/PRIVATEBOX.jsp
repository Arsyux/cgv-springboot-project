<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ include file="../layout/header.jsp"%>
<!--bx슬라이더 관련 CSS-->	
<link rel="stylesheet" href="bxslider/dist/jquery.bxslider.min.css">
<!--bx슬라이더 실행을 위한 파일-->
<script src="bxslider/dist/jquery.bxslider.min.js"></script>
<title>특별관</title>
<link rel="stylesheet" href="../css/special.css">
<link rel="stylesheet" href="../css/special/PRIVATEBOX.css">
<script src="../js/special.js"></script>

<%@ include file="../layout/navi.jsp"%>
<!-- 공통 상단영역 끝 -->

<!-- special img 영역 -->
<div id="special_imgArea">
	<img src="images/common/special_PRIVATEBOX.png">
	<div class="special_dark"></div>
	<h2>PRIVATE BOX</h2>
	<h3>박스형 프리미엄 상영관</h3>
</div>

<!-- special nav 영역 -->
<%@ include file="special_navi.jsp"%>

<div id="bxslider_area">
	<ul class="bxslider">
		<li><img src="images/common/PRIVATEBOX1.png"></li>
	</ul>
</div>

<!-- PRIVATEBOX 영역 -->
<div id="PRIVATEBOX_section1">
	<h2>The Cinema, Just For Us</h2>
	<p>우리만의 공간에서 가장 특별하게 보내는 시간</p>
</div>

<div id="PRIVATEBOX_section2">
	<div class="section_info">
		<div class="section_infoBox">
			<img src="images/common/PRIVATEBOX_info1.png">
			<h3>PRIVATE</h3>
			<p>
			박스 타입의 독립된 공간에서<br>
			최대 2~4인까지 즐길 수 있는<br>
			쾌적한 영화 관람 환경을<br>
			선사합니다.
			</p>
		</div>
		<div class="section_infoBox">
			<img src="images/common/PRIVATEBOX_info2.png">
			<h3>PREMIUM</h3>
			<p>
			전 좌석 최고급 리클라이닝<br>
			체어에 세련된 인테리어를<br>
			더해 차별화된 극장의<br>
			감성을 제공합니다.
			</p>
		</div>
		<div class="section_infoBox">
			<img src="images/common/PRIVATEBOX_info3.png">
			<h3>EXCLUSIVE<br>SERVICE</h3>
			<p>
			웰컴 서비스로 다양한 드링크 및<br>
			핑거 푸드를 제공합니다.
			</p>
		</div>
	</div>
</div>
<div id="PRIVATEBOX_section3">
	<h2>
	여러 특별관과 융합되어 영화관의 가치는 그대로,<br>
	프라이빗 상영관 서비스를 즐길 수 있습니다.
	</h2>
	<p class="section3_txt">
	#용산아이파크몰&nbsp;
	#영등포&nbsp;
	#연남&nbsp;
	#서면상상마당&nbsp;
	#인천&nbsp;
	#압구정&nbsp;
	#천안터미널&nbsp;
	#동탄
	</p>
	
	<div class="downBox">
		<img src="images/common/PRIVATEBOX_down1.jpg">
		<h3>용산아이파크몰</h3>
		<h4>일반관 융합 상영관</h4>
		<ul>
			<li>누하스(NOUHAUS) 리클라이닝 소파와 안마의자 구비</li>
			<li>PRIVATE BOX 전용 엘리베이터 운영</li>
			<li>홈 라이브러리, 리빙룸 두 가지 컨셉</li>
		</ul>
	</div>
	<img src="images/common/PRIVATEBOX_down2.jpg">
	<img src="images/common/PRIVATEBOX_down3.jpg">
	<img src="images/common/PRIVATEBOX_down4.jpg">
	<img src="images/common/PRIVATEBOX_down5.jfif">
	<img src="images/common/PRIVATEBOX_down6.jpg">
	<img src="images/common/PRIVATEBOX_down7.png">
	<img src="images/common/PRIVATEBOX_down8.jpg">
</div>


<!-- 공통 하단영역 시작 -->
<%@ include file="../layout/footer.jsp"%>