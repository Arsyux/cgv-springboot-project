<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

</head>
<body>
	<div id="fix_ticketing">
		<div class="fix_ticketingBox">
			<a class="ticketing" href="/ticket">예매하기</a>
			
			<a class="fix_ticketing_ImgBox" onclick="go_top()">
	        	<img src="../images/common/gotoTop.png">
	        </a>
		</div>
    </div>
    
    <div id="header_ad">
    	<div class="header_ad_area">
	        <img id="header_adImg" src="../images/header_pilot.png">
	        <img id="header_adClose" src="../images/common/btn_ad_close.png" onclick="header_ad_close()">
    	</div>
    </div>
    <div id="nav_wrap">
        <nav>
            <a href="/index"><img id="logoImg" src="../images/common/cgv_logo.png"></a>
            <ul class="menu">
                <li>
                    <a href="/movie/movieChart">영화</a>
                    <ul class="sub">
                        <li><a href="/movie/movieChart">무비차트</a></li>
                        <li><a href="#a">아트하우스</a></li>
                        <li><a href="#a">ICECON</a></li>
                    </ul>
                </li>
                <li>
                    <a href="/special">극장</a>
                    <ul class="sub">
                        <li><a href="#a">CGV 극장</a></li>
                        <li><a href="/special">특별관</a></li>
                    </ul>
                </li>
                <li>
                    <a href="#a">예매</a>
                    <ul class="sub">
                        <li><a href="/ticket">빠른예매</a></li>
                        <li><a href="#a">상영스케줄</a></li>
                        <li><a href="#a">English Ticketing</a></li>
                        <li><a href="#a">English Schedule</a></li>
                    </ul>
                </li>
                <li>
                    <a href="#a">스토어</a>
                    <ul class="sub">
                        <li><a href="#a">패키지</a></li>
                        <li><a href="#a">영화관람권</a></li>
                        <li><a href="#a">기프트카드</a></li>
                        <li><a href="#a">콤보</a></li>
                        <li><a href="#a">팝콘</a></li>
                        <li><a href="#a">음료</a></li>
                        <li><a href="#a">스낵</a></li>
                        <li><a href="#a">플레이존</a></li>
                        <li><a href="#a">씨네샵 &gt;</a></li>
                    </ul>
                </li>
                <li>
                    <a href="#a">이벤트</a>
                    <ul class="sub">
                        <li><a href="#a">SPECIAL</a></li>
                        <li><a href="#a">영화/예매</a></li>
                        <li><a href="#a">멤버십/CLUB</a></li>
                        <li><a href="#a">CGV 극장별</a></li>
                        <li><a href="#a">제휴할인</a></li>
                        <li><a href="#a">당첨자 발표</a></li>
                        <li><a href="#a">종료된 이벤트</a></li>
                    </ul>
                </li>
                <li>
                    <a href="#a">혜택</a>
                    <ul class="sub">
                        <li><a href="#a">CGV 할인정보</a></li>
                        <li><a href="#a">CLUB 서비스</a></li>
                        <li><a href="#a">VIP 라운지</a></li>
                    </ul>
                </li>
            </ul>
            <ul class="login">
				<c:if test="${ principal == null}">
	                <li>
	                    <a href="/auth/login">
	                        <img id="loginPassword" src="../images/common/loginPassword.png">
                        	<span>로그인</span>
	                    </a>
	                </li>
	                <li>
	                    <a href="/auth/join">
	                        <img id="loginJoin" src="../images/common/loginJoin.png">
	                        <span>회원가입</span>
	                    </a>
	                </li>
	                <li>
	                    <a href="#a">
	                        <img id="loginCustomer" src="../images/common/loginCustomer.png">
	                        <span>고객센터</span>
	                    </a>
	                </li>
                </c:if>
				<c:if test="${ principal != null}">
	                <li>
	                    <a href="/auth/logout">
	                        <img id="loginPassword" src="../images/common/loginPassword.png">
                        	<span>로그아웃</span>
	                    </a>
	                </li>
	                <li>
	                    <a href="/info/mycgv">
	                        <img id="loginJoin" src="../images/common/loginMember.png">
	                        <span>MY CGV</span>
	                    </a>
	                </li>
	                <li>
	                    <a href="#a">
	                        <img id="loginCustomer" src="../images/common/loginCustomer.png">
	                        <span>고객센터</span>
	                    </a>
	                </li>
				</c:if>
            </ul>
        </nav>
    </div>