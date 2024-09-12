<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ include file="../layout/header.jsp"%>
<title>MY CGV</title>
<link rel="stylesheet" href="../css/info.css">
<link rel="stylesheet" href="../css/info/mycgv.css">
<script src="../js/special.js"></script>

<%@ include file="../layout/navi.jsp"%>
<!-- 공통 상단영역 끝 -->

<!-- info 배너 -->
<img id="mycgv_banner" src="../images/common/mycgv_banner.png">

<!-- info 영역 -->
<div id="info_area">

	<!-- nav 영역 -->
	<%@ include file="info_navi.jsp"%>
	
	<!-- main 영역 -->
	<div id="info_main">
		
		<h1>MY CGV</h1>
		<!-- 프로필 영역 -->
		<table>
			<tr>
				<th>프로필 사진</th>
				<td>
					<c:if test="${!empty user.profile }">
						<img class="profile" src="${ user.profile }">
					</c:if>
					<c:if test="${empty user.profile }">
						<img class="profile" src="../images/common/default_profile.gif">
					</c:if>
				</td>
			</tr>
		</table>
		
		<h4>${ user.name }</h4>	
		<h4>데이터</h4>
		<h4>데이터</h4>	
		<h4>데이터</h4>	
		<h4>데이터</h4>	
		<h4>데이터</h4>	
		<h4>데이터</h4>	
		<h4>데이터</h4>	
		<h4>데이터</h4>	
		<h4>데이터</h4>	
		<h4>데이터</h4>	
		<h4>데이터</h4>	
		<h4>데이터</h4>	
		<h4>데이터</h4>	
		<h4>데이터</h4>	
		<h4>데이터</h4>	
		<h4>데이터</h4>	
	</div>
	
	
</div>


<!-- 공통 하단영역 시작 -->
<%@ include file="../layout/footer.jsp"%>