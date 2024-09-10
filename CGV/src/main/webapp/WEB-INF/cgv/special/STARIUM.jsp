<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ include file="../layout/header.jsp"%>
<!--bx슬라이더 관련 CSS-->	
<link rel="stylesheet" href="bxslider/dist/jquery.bxslider.min.css">
<!--bx슬라이더 실행을 위한 파일-->
<script src="bxslider/dist/jquery.bxslider.min.js"></script>
<title>특별관</title>
<link rel="stylesheet" href="../css/special.css">
<link rel="stylesheet" href="../css/special/STARIUM.css">
<script src="../js/special.js"></script>

<%@ include file="../layout/navi.jsp"%>
<!-- 공통 상단영역 끝 -->

<!-- special img 영역 -->
<div id="special_imgArea">
	<img src="images/common/special_STARIUM.png">
	<div class="special_dark"></div>
	<h2>STARIUM</h2>
	<h3>초대형 스크린</h3>
</div>

<!-- special nav 영역 -->
<%@ include file="special_navi.jsp"%>

<div id="bxslider_area">
	<ul class="bxslider">
		<li><img src="images/common/STARIUM1.png"></li>
		<li><img src="images/common/STARIUM2.png"></li>
	</ul>
</div>

<div id="STARIUM_section1">
	<h2>Beyond Reality</h2>
	<p>모든 감각을 압도하는 스케일의 스크린, 놀랍도록 생생한 화질, 가슴 뛰게 하는 16채널 사운드까지 ‘현실’ 그 이상의 경험을 스타리움에서 만나보세요</p>
</div>

<!-- STARIUM 영역 -->
<div id="STARIUM_section2">
	<div class="section_info">
		<div class="section_infoBox">
			<img src="images/common/STARIUM_info1.png">
			<h3>최대 시야각 스크린</h3>
		</div>
		<div class="section_infoBox">
			<img src="images/common/STARIUM_info2.png">
			<h3>4K 초고해상도 영상</h3>
		</div>
		<div class="section_infoBox">
			<img src="images/common/STARIUM_info3.png">
			<h3>16채널 입체 사운드</h3>
		</div>
	</div>
</div>
<div id="STARIUM_section3">
	<h2>Super Giant Screen</h2>
	<p>최대 시야각을 보장하는 초대형 스크린</p>
	<img src="images/common/STARIUM1.png">
	<h2>Most Dynamic Sound</h2>
	<p>좌석위치에 관계없이 동일하게 전달되는 16채널 사운드시스템</p>
	<img src="images/common/STARIUM2.png">
</div>


<!-- 공통 하단영역 시작 -->
<%@ include file="../layout/footer.jsp"%>