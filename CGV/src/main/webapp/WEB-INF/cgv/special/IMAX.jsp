<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ include file="../layout/header.jsp"%>
<!--bx슬라이더 관련 CSS-->	
<link rel="stylesheet" href="bxslider/dist/jquery.bxslider.min.css">
<!--bx슬라이더 실행을 위한 파일-->
<script src="bxslider/dist/jquery.bxslider.min.js"></script>
<title>특별관</title>
<link rel="stylesheet" href="../css/special.css">
<link rel="stylesheet" href="../css/special/IMAX.css">
<script src="../js/special.js"></script>

<%@ include file="../layout/navi.jsp"%>
<!-- 공통 상단영역 끝 -->

<!-- special img 영역 -->
<div id="special_imgArea">
	<img src="images/common/special_IMAX.png">
	<div class="special_dark"></div>
	<h2>IMAX</h2>
	<h3>궁극의 몰입감</h3>
</div>

<!-- special nav 영역 -->
<%@ include file="special_navi.jsp"%>

<!-- IMAX 영역 -->
<div id="bxslider_area">
	<ul class="bxslider">
		<li><img src="images/common/IMAX1.jpg"></li>
		<li><img src="images/common/IMAX2.jpg"></li>
	</ul>
</div>
<div id="IMAX_section1">
	<div class="imax_info">
		<div class="imax_infoBox">
			<img class="imax_info" src="images/common/imax_info1.png">
			<h2>Crystal Clear</h2>
			<h3>IMAGE</h3>
			<p>Customized Projector로<br>
			비교할 수 없는 밝음과 뛰어난<br>
			선명한 화질 제공
			</p>
		</div>
		<div class="imax_infoBox">
			<img class="imax_info" src="images/common/imax_info2.png">
			<h2>Maximized</h2>
			<h3>SCREEN</h3>
			<p>대형 스크린에 맞는<br>
			맞춤형 설계로 모든 좌석에서<br>
			최고의 몰입 가능
			</p>
		</div>
		<div class="imax_infoBox">
			<img class="imax_info" src="images/common/imax_info3.png">
			<h2>Powerful</h2>
			<h3>SOUND</h3>
			<p>완벽하게 조율된 소리와<br>
			핀 포인트 정확도로<br>
			최적의 사운드를 제공
			</p>
		</div>
	</div>
</div>
<div id="IMAX_section2">
	<img src="images/common/IMAX1.jpg">
	<img src="images/common/IMAX2.jpg">
</div>


<!-- 공통 하단영역 시작 -->
<%@ include file="../layout/footer.jsp"%>