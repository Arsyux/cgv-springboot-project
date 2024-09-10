<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ include file="../layout/header.jsp"%>
<!--bx슬라이더 관련 CSS-->	
<link rel="stylesheet" href="bxslider/dist/jquery.bxslider.min.css">
<!--bx슬라이더 실행을 위한 파일-->
<script src="bxslider/dist/jquery.bxslider.min.js"></script>
<title>특별관</title>
<link rel="stylesheet" href="../css/special.css">
<link rel="stylesheet" href="../css/special/SOUNDX.css">
<script src="../js/special.js"></script>
<script src="../js/jquery.fitvids.js"></script>

<%@ include file="../layout/navi.jsp"%>
<!-- 공통 상단영역 끝 -->

<!-- special img 영역 -->
<div id="special_imgArea">
	<img src="images/common/special_SOUNDX.png">
	<div class="special_dark"></div>
	<h2>SOUNDX</h2>
	<h3>3D 입체음향</h3>
</div>

<!-- special nav 영역 -->
<%@ include file="special_navi.jsp"%>

<div id="bxslider_area">
	<ul class="bxslider">
		<li><img src="images/common/SOUNDX1.png"></li>
	</ul>
</div>

<!-- SOUNDX 영역 -->
<div id="SOUNDX_section1">
	<h2>Enjoy the best Sound</h2>
	
	<p class="line">
	
	<h3>Sweet Spot</h3>
	
	<p class="txt1">
	SoundX는 현존하는 최고의 사운드 시스템인 3D입체사운드 시스템을 기반으로 탁월한 현장감과 공간감을 느낄 수 있습니다.<br>
	스크린 후방, 벽면을 비롯한 천정까지 51개의 스피커를 통해 음원의 방향성과 거리감을 섬세하게 전달함으로써 모든 좌석에서 최고의 사운드 명당자리라 일컫는 ‘스윗스팟(Sweet Spot)'을 실현해줍니다.
	</p>
	
	<img src="images/common/SOUNDX_down1.jpg">
	
	<h3>
	영상에 움직임에 따라<br>
	X,Y,Z - 3차원 축으로 구현되는 입체음향 시스템
	</h3>
	
	<p class="txt1">
	SoundX 상영관은 사운드 전문가들에 의해 맞춤 설계 되었으며 단순한 볼륨 조절이 아닌 1~12개까지 스피커 활용 범위가 조절되는 다채널 레이아웃 방식으로 생생한 현장감을 느낄 수 있습니다.
	</p>
	
</div>

<!-- 공통 하단영역 시작 -->
<%@ include file="../layout/footer.jsp"%>