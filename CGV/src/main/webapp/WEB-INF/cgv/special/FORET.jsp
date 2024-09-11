<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ include file="../layout/header.jsp"%>
<!--bx슬라이더 관련 CSS-->	
<link rel="stylesheet" href="bxslider/dist/jquery.bxslider.min.css">
<!--bx슬라이더 실행을 위한 파일-->
<script src="bxslider/dist/jquery.bxslider.min.js"></script>
<title>특별관</title>
<link rel="stylesheet" href="../css/special.css">
<link rel="stylesheet" href="../css/special/FORET.css">
<script src="../js/special.js"></script>
<script src="../js/jquery.fitvids.js"></script>

<%@ include file="../layout/navi.jsp"%>
<!-- 공통 상단영역 끝 -->

<!-- special img 영역 -->
<div id="special_imgArea">
	<img src="images/common/special_FORET.png">
	
	<div class="special_dark"></div>
	<h2>CINE & FORET</h2>
	<h3>자연 컨셉의 힐링 상영관</h3>
</div>

<!-- special nav 영역 -->
<%@ include file="special_navi.jsp"%>

<div id="bxslider_area">
	<ul class="bxsliderV">
		<li><video src="videos/common/FORET.mp4" autoplay="autoplay" preload="auto" muted="muted"></video></li>
	</ul>
</div>

<!-- FORET 영역 -->
<div id="FORET_section1">
	
	<h2>Greenery & Healing</h2>
	<p>
	순록 이끼 벽면과 슬로프형 실내 잔디로 꾸민 씨네앤포레는<br>
	도심 속 푸르름의 가치를 전달하는 힐링 상영관입니다.<br>
	안락한 좌석과 개인 테이블로 편안함을, 자연의 향기로 싱그러움을 더해<br>
	누구나 꿈꾸는 숲 속 영화관을 선사합니다.
	</p>
	<p class="line">
</div>

<div id="FORET_section2">
	<h2>숲을 닮은</h2>
	<p>
	순록이끼 벽면의 슬로프형 실내 잔디로 꾸며진 푸르른 공간은 자연의 향기로 싱그러움을 더했습니다.
	</p>
	<img src="images/common/FORET_down1.jpg">
	
	<h2>숲과 같이 포근한</h2>
	<p>
	매트, 빈백, 카바나 3종류의 안락한 좌석과 개인 테이블은 누구나 한번쯤 꿈꾸었던 숲 속 영화관을 선사합니다.
	</p>
	<img src="images/common/FORET_down2.jpg">
	<img src="images/common/FORET_down3.jpg">
	
</div>


<!-- 공통 하단영역 시작 -->
<%@ include file="../layout/footer.jsp"%>