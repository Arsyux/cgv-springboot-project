<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ include file="../layout/header.jsp"%>
<!--bx슬라이더 관련 CSS-->	
<link rel="stylesheet" href="bxslider/dist/jquery.bxslider.min.css">
<!--bx슬라이더 실행을 위한 파일-->
<script src="bxslider/dist/jquery.bxslider.min.js"></script>
<title>특별관</title>
<link rel="stylesheet" href="../css/special.css">
<link rel="stylesheet" href="../css/special/PRIVATE.css">
<script src="../js/special.js"></script>

<%@ include file="../layout/navi.jsp"%>
<!-- 공통 상단영역 끝 -->

<!-- special img 영역 -->
<div id="special_imgArea">
	<img src="images/common/special_PRIVATE.png">
	<div class="special_dark"></div>
	<h2>THE PRIVATE CINEMA</h2>
	<h3>대관형 프리미엄 상영관</h3>
</div>

<!-- special nav 영역 -->
<%@ include file="special_navi.jsp"%>

<!-- PRIVATE 영역 -->
<div id="PRIVATE_section1">
	<h2>Special Memories</h2>
	<p>
	높다란 천정을 수놓은 조명과 부드럽고 따뜻한 느낌을 더하는 우드 플로링, 디자인 체어 맞은편으로 늘어선 서가의 풍경이 한 편의 클래식 무비에 등장하는 소셜클럽을 떠올리게 합니다.<br>
	영화를 관람하는 경험 그 자체가 특별한 추억이 되는 곳!<br>
	품격있는 문화와 편안함을 누릴 수 있는 최고의 공간으로 여러분을 초대합니다.
	</p>
	<img src="images/common/PRIVATE1.jpg">
</div>

<div id="PRIVATE_section2">
	<h2>Private Lounge</h2>
	<p>
	고객의 취향과 모임의 규모, 성격에 따라 원하는 대로 연출할 수 있습니다.
	</p>
	<img src="images/common/PRIVATE_down1.jpg">
	
	<h2>B&W System</h2>
	<p>
	베이스 스피커만 6개, 8.1채널로 구성된 최상위 극장용 음향 시스템을 사용합니다.
	</p>
	<img src="images/common/PRIVATE_down2.jpg">
	
	<h2>Catering Service</h2>
	<p>
	이용 형태에 따라 푸드 컨설턴트가 맞춤 케이터링 서비스를 제안해 드립니다.
	</p>
	<img src="images/common/PRIVATE_down3.jpg">
	
</div>


<!-- 공통 하단영역 시작 -->
<%@ include file="../layout/footer.jsp"%>