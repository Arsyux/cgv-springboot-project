<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ include file="../layout/header.jsp"%>
<!--bx슬라이더 관련 CSS-->	
<link rel="stylesheet" href="bxslider/dist/jquery.bxslider.min.css">
<!--bx슬라이더 실행을 위한 파일-->
<script src="bxslider/dist/jquery.bxslider.min.js"></script>
<title>특별관</title>
<link rel="stylesheet" href="../css/special.css">
<link rel="stylesheet" href="../css/special/4DX.css">
<script src="../js/special.js"></script>
<script src="../js/jquery.fitvids.js"></script>

<%@ include file="../layout/navi.jsp"%>
<!-- 공통 상단영역 끝 -->

<!-- special img 영역 -->
<div id="special_imgArea">
	<img src="images/common/special_4DX.jpg">
	<div class="special_dark"></div>
	<h2>4DX</h2>
	<h3>특별한 오감체험</h3>
</div>

<!-- special nav 영역 -->
<%@ include file="special_navi.jsp"%>

<!-- 4DX 영역 -->
<div id="bxslider_area">
	<ul class="bxsliderV">
		<li><video src="videos/common/4DX1.mp4" autoplay="autoplay" preload="auto" muted="muted"></video></li>
		<li><img src="images/common/4DX1.jpg"></li>
		<li><img src="images/common/4DX2.jpg"></li>
	</ul>
</div>

<div id="fourDX_section1">
	<h2>FEEL IT IN 4DX</h2>
	<p class="txt1">
	4DX 상영관은 영화의 장면에 맞추어 움직이는 모션시트와 더불어 바람, 빛, 안개,<br>
	향기, 진동 등의 다양한 환경 효과를 느낄 수 있는 오감 체험 특별 상영관입니다.
	</p>
	<p class="txt2">
	*CGV 극장 별로 4DX 효과는 상이할 수 있습니다.
	</p>
</div>


<div id="fourDX_section2">
	<div class="fourDX_info">
		<div class="fourDX_infoBox">
			<img class="imax_info" src="images/common/4DX_info1.png">
			<h2>Wind</h2>
		</div>
		<div class="fourDX_infoBox">
			<img class="imax_info" src="images/common/4DX_info2.png">
			<h2>Bubbles</h2>
		</div>
		<div class="fourDX_infoBox">
			<img class="imax_info" src="images/common/4DX_info3.png">
			<h2>Lightning</h2>
		</div>
		<div class="fourDX_infoBox">
			<img class="imax_info" src="images/common/4DX_info4.png">
			<h2>Fog</h2>
		</div>
		<div class="fourDX_infoBox">
			<img class="imax_info" src="images/common/4DX_info5.png">
			<h2>Vibration</h2>
		</div>
		<div class="fourDX_infoBox">
			<img class="imax_info" src="images/common/4DX_info6.png">
			<h2>Scents</h2>
		</div>
		<div class="fourDX_infoBox">
			<img class="imax_info" src="images/common/4DX_info7.png">
			<h2>Water</h2>
		</div>
		<div class="fourDX_infoBox">
			<img class="imax_info" src="images/common/4DX_info8.png">
			<h2>Motion</h2>
		</div>
	</div>
</div>
<div id="fourDX_section3">
	<h2>Environmental Effects</h2>
	<p>
	단순한 영화 관람을 넘어 영화 속 주인공이 된 듯한 체험을 할 수 있으며,<br>
	장면마다 생생함을 극대화시키는 4DX 효과를 통해 영화에 더욱 몰입할 수 있습니다.
	</p>
	<img src="images/common/4DX_down1.jpg">
	<h2>Motion Seat</h2>
	<p>관람석이 상하로 좌우로 앞뒤로 움직이며 현장감을 극대화합니다.</p>
	<img src="images/common/4DX_down2.jpg">
</div>


<!-- 공통 하단영역 시작 -->
<%@ include file="../layout/footer.jsp"%>