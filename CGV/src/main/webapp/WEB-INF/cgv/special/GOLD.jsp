<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ include file="../layout/header.jsp"%>
<!--bx슬라이더 관련 CSS-->	
<link rel="stylesheet" href="bxslider/dist/jquery.bxslider.min.css">
<!--bx슬라이더 실행을 위한 파일-->
<script src="bxslider/dist/jquery.bxslider.min.js"></script>
<title>특별관</title>
<link rel="stylesheet" href="../css/special.css">
<link rel="stylesheet" href="../css/special/GOLD.css">
<script src="../js/special.js"></script>

<%@ include file="../layout/navi.jsp"%>
<!-- 공통 상단영역 끝 -->

<!-- special img 영역 -->
<div id="special_imgArea">
	<img src="images/common/special_GOLD.png">
	<div class="special_dark"></div>
	<h2>GOLD CLASS</h2>
	<h3>프리미엄 소파 상영관</h3>
</div>

<!-- special nav 영역 -->
<%@ include file="special_navi.jsp"%>

<!-- GOLD 영역 -->
<div id="GOLD_section1">
	<h2>Premium & Cozy</h2>
	<p>
	최고의 몰입감을 주는 Curved 스크린과 디테일한 사운드를 느끼실 수 있는 라인어레이 스피커,<br>
	최상의 안락함을 주는 리클라이너 좌석까지 최고의 관람환경을 제공함과 동시에<br>
	웰컴음료/컴포트패키지, 핸드폰 충전 서비스, 개인물품 수납 테이블 등<br>
	고객 맞춤형 서비스까지 제공되는 프리미엄 상영관입니다.
	</p>
	<img src="images/common/GOLD1.jpg">
	<img src="images/common/GOLD2.jpg">
</div>

<div id="GOLD_section2">
	<h2>Recliner Chair</h2>
	<p>
	최상의 안락함을 주는 리클라이너 좌석
	</p>
	<div class="down_group2">
		<img src="images/common/GOLD_down1.jpg">
		<img src="images/common/GOLD_down2.jpg">
	</div>
	
	<h2>Special Service</h2>
	<p>
	웰컴 드링크와 컴포트 패키지 제공<br>
	<span>*제공되는 서비스는 지점별로 상이할 수 있습니다.</span>
	</p>
	<div class="down_group2">
		<img src="images/common/GOLD_down3.jpg">
		<img src="images/common/GOLD_down4.jpg">
	</div>
	
</div>


<!-- 공통 하단영역 시작 -->
<%@ include file="../layout/footer.jsp"%>