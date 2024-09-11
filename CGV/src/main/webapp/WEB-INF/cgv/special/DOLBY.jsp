<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ include file="../layout/header.jsp"%>
<!--bx슬라이더 관련 CSS-->	
<link rel="stylesheet" href="bxslider/dist/jquery.bxslider.min.css">
<!--bx슬라이더 실행을 위한 파일-->
<script src="bxslider/dist/jquery.bxslider.min.js"></script>
<title>특별관</title>
<link rel="stylesheet" href="../css/special.css">
<link rel="stylesheet" href="../css/special/DOLBY.css">
<script src="../js/special.js"></script>
<script src="../js/jquery.fitvids.js"></script>

<%@ include file="../layout/navi.jsp"%>
<!-- 공통 상단영역 끝 -->

<!-- special img 영역 -->
<div id="special_imgArea">
	<img src="images/common/special_DOLBY.jpg">
	<div class="special_dark"></div>
	<h2>DOLBY ATMOS</h2>
	<h3>차세대 몰입형 사운드</h3>
</div>

<!-- special nav 영역 -->
<%@ include file="special_navi.jsp"%>

<div id="bxslider_area">
	<ul class="bxsliderV">
		<li><video src="videos/common/DOLBY1.mp4" autoplay="autoplay" preload="auto" muted="muted"></video></li>
		<li><img src="images/common/DOLBY2.png"></li>
	</ul>
</div>

<!-- DOLBY 영역 -->
<div id="DOLBY_section1">
	<h2>Dolby Atmos at the movies</h2>
	<p>CGV DOLBY ATMOS 상영관에서 변화하는 스토리의 힘을 느껴보세요.</p>
		
	<img src="images/common/DOLBY_down1.png">
	
	<h2>Hear what you've been missing</h2>
	<p>
	서라운드 사운드에서 한 단계 도약하는 돌비 애트모스는<br>
	생생하고 강렬하며 몰입감 넘치는 사운드를 경험할 수 있게 해주어 스토리 깊숙히 들어가게 합니다.
	</p>
	<img src="images/common/DOLBY_down2.jpg">
</div>

<!-- 공통 하단영역 시작 -->
<%@ include file="../layout/footer.jsp"%>