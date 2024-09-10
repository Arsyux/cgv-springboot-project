<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ include file="../layout/header.jsp"%>
<!--bx슬라이더 관련 CSS-->	
<link rel="stylesheet" href="bxslider/dist/jquery.bxslider.min.css">
<!--bx슬라이더 실행을 위한 파일-->
<script src="bxslider/dist/jquery.bxslider.min.js"></script>
<title>특별관</title>
<link rel="stylesheet" href="../css/special.css">
<link rel="stylesheet" href="../css/special/ScreenX.css">
<script src="../js/special.js"></script>
<script src="../js/jquery.fitvids.js"></script>

<%@ include file="../layout/navi.jsp"%>
<!-- 공통 상단영역 끝 -->

<!-- special img 영역 -->
<div id="special_imgArea">
	<img src="images/common/special_SCREENX.png">
	<div class="special_dark"></div>
	<h2>SCREENX</h2>
	<h3>3면 확장 스크린</h3>
</div>

<!-- special nav 영역 -->
<%@ include file="special_navi.jsp"%>

<!-- SCREENX 영역 -->
<div id="bxslider_area">
	<ul class="bxslider">
		<li><img src="images/common/special_SCREENX.png"></li>
	</ul>
</div>

<div id="ScreenX_section1">
	<h2>Expanding The Cinema Space</h2>
	<p>
	ScreenX는 스크린의 경계를 넘어 극대화된 현장감을 제공하는<br>
	전세계 가장 트렌디한 무비포맷입니다.
	</p>
	<img src="images/common/SCREENX1.jpg">
	<p>
	지금까지 우리는 좁은 화면에 갇혀 있었습니다.<br>
	ScreenX가 마치 현장에 있는 것처럼 실감나는 이유는<br>
	270도까지 스크린을 3면으로 확장하여 화면이 공간으로 느껴지기 때문!<br>
	100여개의 ScreenX 특허 기술로 기존 영화관에서 볼 수 없던 공간감을 경험하세요
	</p>
	<video src="videos/common/ScreenX.mp4" autoplay="autoplay" preload="auto" muted="muted"></video>	
</div>

<!-- 공통 하단영역 시작 -->
<%@ include file="../layout/footer.jsp"%>