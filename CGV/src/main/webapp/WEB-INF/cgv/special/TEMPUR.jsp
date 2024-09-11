<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ include file="../layout/header.jsp"%>
<!--bx슬라이더 관련 CSS-->	
<link rel="stylesheet" href="bxslider/dist/jquery.bxslider.min.css">
<!--bx슬라이더 실행을 위한 파일-->
<script src="bxslider/dist/jquery.bxslider.min.js"></script>
<title>특별관</title>
<link rel="stylesheet" href="../css/special.css">
<link rel="stylesheet" href="../css/special/TEMPUR.css">
<script src="../js/special.js"></script>

<%@ include file="../layout/navi.jsp"%>
<!-- 공통 상단영역 끝 -->

<!-- special img 영역 -->
<div id="special_imgArea">
	<img src="images/common/special_TEMPUR.png">
	<div class="special_dark"></div>
	<h2>TEMPUR CINEMA</h2>
	<h3>리클라이닝 침대 상영관</h3>
</div>

<!-- special nav 영역 -->
<%@ include file="special_navi.jsp"%>

<!-- CHEF 영역 -->
<div id="TEMPUR_section1">
	<h2>World's 1st Reclining Bed Cinema</h2>
	<p>
	NASA(미 항공 우주국)의 신소재로 유명한 프리미엄 매트리스&베개 브랜드<br>
	‘템퍼’와의 콜라보레이션으로 탄생한 세계 최초 리클라이닝 침대 영화관 입니다.
	</p>
	<img src="images/common/TEMPUR1.jpg">
</div>

<div id="TEMPUR_section2">
	<h2>Prestige, Comfort, Private</h2>
	<p>
	비교할 수 없는 특별함, 잊을 수 없는 편안함, 소중한 우리만의 시간<br>
	전 좌석 최고급 리클라이닝 템퍼 모션 베드, 웰컴 패키지 (프리미엄 드링크+다크 초콜릿) 제공
	</p>
	<div class="down_group2">
		<img src="images/common/TEMPUR_down1.jpg">
		<img src="images/common/TEMPUR_down2.jpg">
	</div>
	
	<h2>Zero Gravity Cinema</h2>
	<p>
	최상의 영화관람을 위해 주문제작된 템퍼 오리지날 매트리스와 제로지 라이프 (Zero-G Lifestyle)에서 편안함을 경험하세요
	</p>
		<img src="images/common/TEMPUR_down3.jpg">
	
</div>


<!-- 공통 하단영역 시작 -->
<%@ include file="../layout/footer.jsp"%>