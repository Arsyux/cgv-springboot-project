<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ include file="../layout/header.jsp"%>
<!--bx슬라이더 관련 CSS-->	
<link rel="stylesheet" href="bxslider/dist/jquery.bxslider.min.css">
<!--bx슬라이더 실행을 위한 파일-->
<script src="bxslider/dist/jquery.bxslider.min.js"></script>
<title>특별관</title>
<link rel="stylesheet" href="../css/special.css">
<link rel="stylesheet" href="../css/special/U4DX.css">
<script src="../js/special.js"></script>
<script src="../js/jquery.fitvids.js"></script>

<%@ include file="../layout/navi.jsp"%>
<!-- 공통 상단영역 끝 -->

<!-- special img 영역 -->
<div id="special_imgArea">
	<img src="images/common/special_U4DX.jpg">
	<div class="special_dark"></div>
	<h2>ULTRA 4DX</h2>
	<h3>최대치의 공감각</h3>
</div>

<!-- special nav 영역 -->
<%@ include file="special_navi.jsp"%>

<!-- U4DX 영역 -->
<div id="bxslider_area">
	<ul class="bxsliderV">
		<li><video src="videos/common/U4DX1.mp4" autoplay="autoplay" preload="auto" muted="muted"></video></li>
	</ul>
</div>

<div id="U4DX_section2">
	<h2>ULTIMATE CINEMA EXPERIENCE</h2>
	<p>
	4DX와 ScreenX가 만나 영화 관람의 한계를 초월하다!<br>
	오감체험특별관 4DX와 다면상영특별관 ScreenX가 결합된 CGV 대표 기술통합관
	</p>
	<img src="images/common/U4DX_down1.jpg">
	<p>
	글로벌 대표 특별관 4DX에서 느끼는 익사이팅한 즐거움이<br>
	현장감 넘치는 ScreenX와 어우러져 영화가 줄 수 있는 최대치의<br>
	풍성한 공감각적인 경험을 영화 팬들에게 선사한다는 평가를 받고 있습니다.
	</p>
	<img src="images/common/U4DX_down2.jpg">
</div>


<!-- 공통 하단영역 시작 -->
<%@ include file="../layout/footer.jsp"%>