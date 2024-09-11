<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ include file="../layout/header.jsp"%>
<!--bx슬라이더 관련 CSS-->	
<link rel="stylesheet" href="bxslider/dist/jquery.bxslider.min.css">
<!--bx슬라이더 실행을 위한 파일-->
<script src="bxslider/dist/jquery.bxslider.min.js"></script>
<title>특별관</title>
<link rel="stylesheet" href="../css/special.css">
<link rel="stylesheet" href="../css/special/LIVING.css">
<script src="../js/special.js"></script>
<script src="../js/jquery.fitvids.js"></script>

<%@ include file="../layout/navi.jsp"%>
<!-- 공통 상단영역 끝 -->

<!-- special img 영역 -->
<div id="special_imgArea">
	<img src="images/common/special_LIVING.png">
	
	<div class="special_dark"></div>
	<h2>CINE & LIVING ROOM</h2>
	<h3>신개념 소셜 상영관</h3>
</div>

<!-- special nav 영역 -->
<%@ include file="special_navi.jsp"%>

<div id="bxslider_area">
	<ul class="bxsliderV">
		<li><video src="videos/common/LIVING.mp4" autoplay="autoplay" preload="auto" muted="muted"></video></li>
	</ul>
</div>

<!-- LIVING 영역 -->
<div id="LIVING_section1">
	
	<h2>CINE & LIVING ROOM</h2>
	<p>
	내 집 같이 편안하고 세련된 거실의 무드와 감성을 담은 신개념 소셜 상영관입니다.
	</p>
	<p class="line">
</div>

<div id="LIVING_section2">
	<h2>유니크한 공간</h2>
	<p>
	거실에 대한 로망을 담은 다양한 테마로 구성된 공간에서 편안하고 특별한 매력을 즐겨보세요
	</p>
	<img src="images/common/LIVING_down1.jpg">
	
	<h2>가장 큰 TV</h2>
	<p>
	선명하고 밝게 빛나는 LED스크린이 적용된 씨네&리빙룸은 새로운 영화 경험의 충분한 대안이 될 것입니다.
	</p>
	<img src="images/common/LIVING_down2.jpg">
	<img src="images/common/LIVING_down3.jpg">
	
</div>


<!-- 공통 하단영역 시작 -->
<%@ include file="../layout/footer.jsp"%>