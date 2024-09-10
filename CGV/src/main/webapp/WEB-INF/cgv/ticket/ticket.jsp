<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ include file="../layout/header.jsp"%>

<link rel="stylesheet" href="../css/login.css">
<title>CGV 로그인</title>
<link rel="stylesheet" href="../css/login.css">
<script src="../js/login.js"></script>

<%@ include file="../layout/navi.jsp"%>
<!-- 공통 상단영역 끝 -->
	
<c:if test="${!empty ticket }">
	<h1>${ ticket }</h1>
</c:if>
<c:if test="${empty ticket }">
	<h1>정보없음</h1>	
</c:if>

<!-- 공통 하단영역 시작 -->
<%@ include file="../layout/footer.jsp"%>