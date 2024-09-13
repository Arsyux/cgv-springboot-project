<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<div id="info_navi">

	<a id="mycgv" href="/info/mycgv">MY CGV</a>	
	<a id="myticketing" href="/info/myticketing">나의 예매내역</a>	
	<a href="#a">관람권/할인쿠폰 관리</a>	
	<a href="#a">이벤트 참여내역</a>	
	<a href="#a">기프트샵</a>	
	<a href="#a">회원정보</a>	
	<a href="#a">프로필 관리</a>	
	<a href="#a">나의 문의내역</a>	
	<c:if test="${ user.role } == 'admin'">
		<a href="#a">나의 문의내역2</a>	
	</c:if>
	
</div>

<script>
	$("#${ page }").css("border", "2px solid linear-gradient(to left, rgb(255, 115, 86), rgb(251, 67, 87))");
	$("#${ page }").css("color", "#fff");
	$("#${ page }").css("background", "#fb4357");
</script>