<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ include file="../layout/header.jsp"%>
<!--bx슬라이더 관련 CSS-->	
<link rel="stylesheet" href="bxslider/dist/jquery.bxslider.min.css">
<!--bx슬라이더 실행을 위한 파일-->
<script src="bxslider/dist/jquery.bxslider.min.js"></script>
<title>특별관</title>
<link rel="stylesheet" href="../css/special.css">
<link rel="stylesheet" href="../css/special/PREMIUM.css">
<script src="../js/special.js"></script>

<%@ include file="../layout/navi.jsp"%>
<!-- 공통 상단영역 끝 -->

<!-- special img 영역 -->
<div id="special_imgArea">
	<img src="images/common/special_PREMIUM.png">
	<div class="special_dark"></div>
	<h2>PREMIUM</h2>
	<h3>리클라이너 상영관</h3>
</div>

<!-- special nav 영역 -->
<%@ include file="special_navi.jsp"%>

<!-- PREMIUM 영역 -->
<div id="PREMIUM_section1">
	<h2>Premium Seat</h2>
	<p>
	프리미엄 관은 일반 좌석 대비 보다 편안한 영화관람을 제공하는<br>
	최고급 프리미엄 좌석을 갖춘 상영관입니다.<br>
	<span>CGV 극장별로 리클라이너 효과 및 좌석 사양은 상이할 수 있으며, 이에 따라 일부 차등 적용됩니다.</span>
	</p>
	<img src="images/common/PREMIUM1.jpg">
	
	<h2>Special Anniversary</h2>
	<p>
	특별한 기념일, VIP 초대 행사가 있으실 때 더욱 유용하게 이용하실 수 있습니다.
	</p>
	<img src="images/common/PREMIUM2.jpg">
</div>


<!-- 공통 하단영역 시작 -->
<%@ include file="../layout/footer.jsp"%>