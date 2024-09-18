<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ include file="../layout/header.jsp"%>

<title>CGV 로그인</title>
<link rel="stylesheet" href="../css/login.css">

<%@ include file="../layout/navi.jsp"%>
<!-- 공통 상단영역 끝 -->
	
<!-- 로그인 영역 -->
<div id="login_section1">
	<a class="btn_r" href="#a">로그인</a>
    <a class="btn_g" href="#a">비회원 예매</a>
    <a class="btn_g" href="#a">비회원 예매확인</a>
    <p class="line1"></p>
    
	<c:if test="${ error == null}">
    	<h3>아이디 비밀번호를 입력하신 후, 로그인 버튼을 클릭해 주세요.</h3>
    </c:if>
	<c:if test="${ error != null}">
	    <!-- 로그인 실패시 exception 출력 -->
    	<h3>${exception}</h3>
	</c:if>
	
	
    <form action="/auth/securitylogin" method="post">
    	<input name="username" type="text" value="a123123">
        <input name="password" type="password" value="a123123!">
        <button class="btn_login"><span>로그인</span></button>         
	</form>
    
    <div class="saveBox">
    	<input type="checkbox" id="chk_saveLogin">
        <label for="chk_saveLogin">아이디 저장</label>
        <a class="findId" href="#a">아이디 찾기</a>
        <a class="findPw" href="#a">비밀번호 찾기</a>
	</div>
   	<img src="../images/common/btn_loginNaver.jpg">
    <p class="line2"></p>
</div>
    <div id="cjone_ad">
    	<p class="txt">CJ ONE 회원이 아니신가요? <span>회원가입하시고 다양한 혜택을 누리세요!</span></p>
        <p class="btn_r">CJ ONE 회원가입하기</p>
        <p class="line"></p>
        <p class="btn_b">CJ ONE 멤버십이란?</p>
	</div>

<!-- 공통 하단영역 시작 -->
<%@ include file="../layout/footer.jsp"%>