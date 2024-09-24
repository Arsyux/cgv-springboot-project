<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<div id="info_navi">

	<a class="menu" id="mycgv" href="/info/mycgv">MY CGV</a>	
	<a class="menu" id="myticketing" href="/info/myticketing">나의 예매내역</a>	
	<a class="menu" href="#a">관람권/할인쿠폰 관리</a>	
	<a class="menu" href="#a">이벤트 참여내역</a>
	<a class="menu" href="#a">기프트샵</a>
	<a class="menu" href="#a">나의 문의내역</a>
	<c:if test="${ user.role == 'admin'}">
		<label>관리자 메뉴 ────</label>
		<a class="amenu" id="insertMovie" href="/info/insertMovie">영화 추가</a>	
	</c:if>
	
</div>

<script>
	$("#${ page }").css("border", "2px solid linear-gradient(to left, rgb(255, 115, 86), rgb(251, 67, 87))");
	$("#${ page }").css("color", "#fff");
	if($("#${ page }").hasClass("amenu")) {
		$("#${ page }").css("background", "linear-gradient(to left, rgb(17, 150, 193), rgb(1, 35, 180))");
	} else {
		$("#${ page }").css("background", "linear-gradient(to left, rgb(255, 115, 86), rgb(251, 67, 87))");
	}
</script>