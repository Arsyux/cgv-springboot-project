<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ include file="../layout/header.jsp"%>
<!--bx슬라이더 관련 CSS-->	
<link rel="stylesheet" href="bxslider/dist/jquery.bxslider.min.css">
<!--bx슬라이더 실행을 위한 파일-->
<script src="bxslider/dist/jquery.bxslider.min.js"></script>
<title>특별관</title>
<link rel="stylesheet" href="../css/special.css">
<link rel="stylesheet" href="../css/special/SUITE.css">
<script src="../js/special.js"></script>

<%@ include file="../layout/navi.jsp"%>
<!-- 공통 상단영역 끝 -->

<!-- special img 영역 -->
<div id="special_imgArea">
	<img src="images/common/special_SUITE.png">
	<div class="special_dark"></div>
	<h2>SUITE CINEMA</h2>
	<h3>호텔형 프리미엄 상영관</h3>
</div>

<!-- special nav 영역 -->
<%@ include file="special_navi.jsp"%>

<div id="bxslider_area">
	<ul class="bxslider">
		<li><img src="images/common/SUITE1.jpg"></li>
	</ul>
</div>

<!-- SUITE 영역 -->
<div id="SUITE_section1">
	<h2>The Moment of Exclusivity</h2>
	<p>
	집보다 더 프라이빗하게<br>
	호텔보다 더 프리미엄하게<br>
	우리만의 Sweet Time, Suite Cinema
	</p>
	<p class="line">
</div>

<div id="SUITE_section2">
	<h2>A Hotel in the Theater</h2>
	<p>
	호텔 스위트룸을 극장 안에 옮긴 듯 독립된 공간과 세련된 인테리어로<br>
	쾌적한 영화 관람 환경을 선사합니다.<br>
	소중한 이들과 특별한 영화 여행을 떠나보세요
	</p>
	<img src="images/common/SUITE_down1.jpg">
	<h2>Premium & Comfortable Seats</h2>
	<p>2~4인 이용 가능한 거실타입 공간으로 전 좌석 최고급 리클라이닝 소파 및 체어가 준비되어 있으며 스위트 패키지(무릎담요, 실내용 슬리퍼, 물티슈)를 제공합니다.</p>
	<div class="down_group1">
		<img src="images/common/SUITE_down2.jpg">
		<div class="column">
			<img src="images/common/SUITE_down3.jpg">
			<img src="images/common/SUITE_down4.jpg">
		</div>
	</div>
	
	<h2>Relax & Be Happy, Exclusive Lounge</h2>
	<p>
	스위트 시네마 이용 고객만을 위한 익스클루시브 라운지에서는<br>
	영화 관람 전 차별화 된 서비스를 제공해 드립니다.<br>
	웰컴 주류 및 음료 등을 무료로 즐기며 일상에서의 스트레스를 잠시 내려놓아 보세요<br>
	<span>*영화 시작 30분 전 입장 가능</span>
	</p>
	<div class="down_group2">
		<img src="images/common/SUITE_down5.jpg">
		<img src="images/common/SUITE_down6.jpg">
	</div>
	
</div>


<!-- 공통 하단영역 시작 -->
<%@ include file="../layout/footer.jsp"%>