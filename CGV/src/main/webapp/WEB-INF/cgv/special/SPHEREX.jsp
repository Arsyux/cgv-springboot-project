<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ include file="../layout/header.jsp"%>
<!--bx슬라이더 관련 CSS-->	
<link rel="stylesheet" href="bxslider/dist/jquery.bxslider.min.css">
<!--bx슬라이더 실행을 위한 파일-->
<script src="bxslider/dist/jquery.bxslider.min.js"></script>
<title>특별관</title>
<link rel="stylesheet" href="../css/special.css">
<link rel="stylesheet" href="../css/special/SPHEREX.css">
<script src="../js/special.js"></script>
<script src="../js/jquery.fitvids.js"></script>

<%@ include file="../layout/navi.jsp"%>
<!-- 공통 상단영역 끝 -->

<!-- special img 영역 -->
<div id="special_imgArea">
	<img src="images/common/special_SPHEREX.png">
	<div class="special_dark"></div>
	<h2>SPHEREX</h2>
	<h3>진화된 스크린</h3>
</div>

<!-- special nav 영역 -->
<%@ include file="special_navi.jsp"%>

<!-- SPHEREX 영역 -->
<div id="bxslider_area">
	<ul class="bxslider">
		<li><img src="images/common/SPHEREX1.png"></li>
	</ul>
</div>

<div id="SPHEREX_section1">
	<h2>More Than Real</h2>
	<p class="txt1">
	SPHEREX는 3S(Screen, Sound, Seat)가 진화·결합하여<br>
	극대화된 공간적 몰입감을 제공하는 반구 형태의 특별관입니다.<br>
	콘텐츠 관람에 최적화된 환경을 제공하여 '나를 감싸는 극강의 몰입감'을 즐길 수 있습니다.
	</p>
	<p class="txt2">
	* 극장별 스크린, 좌석 사양이 상이할 수 있습니다.
	</p>	
</div>

<!-- 공통 하단영역 시작 -->
<%@ include file="../layout/footer.jsp"%>