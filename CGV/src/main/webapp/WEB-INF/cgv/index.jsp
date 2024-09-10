<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ include file="layout/header.jsp"%>

<title>CGV 리디자인</title>
<link rel="stylesheet" href="css/index.css">
<script src="js/index.js"></script>

<%@ include file="layout/navi.jsp"%>
<!-- 공통 상단영역 끝 -->

<!-- 메인 무비 영역 -->
<div id="mainMovieSection">
	<div id="movie_wrap">
		<video id="mainvideo_src" src="videos/main_pilot.mp4" autoplay muted="false" loop></video>
	    <div id="movie_dark"></div>
	                        
	    <a href="/ticket?ticket=pilot" id="main_ticketing">예매하기</a>
	    <img id="main_movie_play" onclick="main_movie_play()" src="images/common/pause.png">
	    <img id="main_movie_sound" onclick="main_movie_sound()" src="images/common/soundOff.png">
	</div>
</div>
<div id="movieBlock" style="width:100%; height:590px;"></div>

<!-- 무비차트 영역 -->
<div id="moviechart">
	<div id="moviechart_wrap">
		<p>무비차트</p><p class="line"></p><p>상영예정작</p>
    </div>
        
    <div class="moviechartBox">
    	<img src="images/moviechart_pilot.jpg">
        <h3><i>1</i></h3>
        <p class="age">12</p>
        <h4>파일럿</h4>
        <div class="eggBox">
        	<img src="images/common/eggGoldeneggPreegg.png">
            <p>99%</p>
            <p class="line"></p>
            <p>예매율 37.0%</p>
        </div>
	</div>

    <div class="moviechartBox">
        <img src="images/moviechart_dead.jpg">
        <h3><i>2</i></h3>
        <p class="age">19</p>
        <h4>파일럿</h4>
        <div class="eggBox">
            <img src="images/common/eggGoldenegggreat.png">
            <p>83%</p>
            <p class="line"></p>
            <p>예매율 12.9%</p>
        </div>
    </div>
    <div class="moviechartBox">
        <img src="images/moviechart_.seventeenjpg.jpg">
        <h3><i>3</i></h3>
        <p class="age">15</p>
        <h4>세븐틴 투어 ‘팔로우’ 어게인 투 시네마</h4>
        <div class="eggBox">
            <img src="images/common/eggGoldeneggPreegg.png">
            <p>99%</p>
            <p class="line"></p>
            <p>예매율 11.6%</p>
        </div>
    </div>
    <div class="moviechartBox">
       	<img src="images/moviechart_bad.jpg">
        <h3><i>4</i></h3>
        <p class="age">ALL</p>
        <h4>슈퍼배드 4</h4>
        <div class="eggBox">
        	<img src="images/common/eggGoldenegggreat.png">
            <p>94%</p>
            <p class="line"></p>
            <p>예매율 7.6%</p>
        </div>
    </div>
    
</div>

<!-- 이벤트 영역 -->
<div id="event_area">
	<h2>EVENT</h2>
    <div id="event_wrap">
	    <img class="event1" src="images/event1.jpg">
	    <img class="event2" src="images/event2.jpg">
	    <img class="event3" src="images/event3.jpg">
	    <img class="event4" src="images/event4.jpg">
	    <img class="event5" src="images/event5.jpg">
	    <img class="event6" src="images/event6.jpg">
    </div>
</div>
      
<!-- 특별관 영역 -->  
<div id="special_area">
	<h2>특별관</h2>
	<a href="special?cinema=SUITE"><img src="images/common/special1.jpg"></a>
	<a href="special?cinema=LIVING"><img src="images/common/special2.jpg"></a>
	<a href="special?cinema=4DX"><img src="images/common/special3.jpg"></a>
	<a href="special?cinema=CHEF"><img src="images/common/special4.jpg"></a>
</div>

<!-- 굿즈 영역 -->
<div id="goods_area">
	<div class="goods_box">
		<h3>패키지</h3>
        <p class="plus"><a href="#a">더보기</a></p>
        <div class="goods_pacakge">
            <img src="images/package1.jpg">
            <div class="priceBox">
            	<h4>&lt극장총집편 봇치 더 록! 전편&gt얼리버드 관람권</h4>
                <p class="price">18,000원</p>
            </div>
        </div>
        <div class="goods_pacakge">
            <img src="images/package2.jpg">
            <div class="priceBox">
                <h4>우리 패키지</h4>
                <p class="price">62,000원</p>
            </div>
        </div>
        <div class="goods_pacakge">
            <img src="images/package3.jpg">
            <div class="priceBox">
                <h4>나랑 너 패키지</h4>
                <p class="price">35,000원</p>
            </div>
        </div>
    </div>
    <div class="goods_box">
        <h3>영화관람권</h3>
        <p class="plus"><a href="#a">더보기</a></p>
        <div class="goods_pacakge">
            <img src="images/voucher1.jpg">
            <div class="priceBox">
                <h4>CGV 영화관람권</h4>
                <p class="price">13,000원</p>
            </div>
        </div>
        <div class="goods_pacakge">
            <img src="images/voucher2.jpg">
            <div class="priceBox">
                <h4>IMAX 영화관람권</h4>
                <p class="price">18,000원</p>
            </div>
        </div>
        <div class="goods_pacakge">
            <img src="images/voucher3.jpg">
            <div class="priceBox">
                <h4>4DX 영화관람권</h4>
                <p class="price">19,000원</p>
            </div>
        </div>
    </div>
    <div class="goods_box">
        <h3>기프트카드</h3>
        <p class="plus"><a href="#a">더보기</a></p>
        <div class="goods_pacakge">
            <img src="images/gift1.jpg">
            <div class="priceBox">
                <h4>PACONNIE A형</h4>
                <p class="price">금액충전형</p>
            </div>
        </div>
        <div class="goods_pacakge">
            <img src="images/gift2.jpg">
            <div class="priceBox">
                <h4>PACONNIE B형</h4>
                <p class="price">금액충전형</p>
            </div>
        </div>
        <div class="goods_pacakge">
            <img src="images/gift3.jpg">
            <div class="priceBox">
                <h4>PACONNIE C형</h4>
                <p class="price">금액충전형</p>
            </div>
        </div>
    </div>
    <div class="goods_infoWrap">
        <div class="goods_infoleft">
            <h2>공지사항</h2>
            <p class="infotxt">[기타][CGV] 해피머니상품권 사용중지 안내</p>
            <p class="plus"><a href="#a">더보기</a></p>
            <p class="line"></p>
            <h2>고객센터</h2>
            <div class="cs_number">
                <b>1544-1122</b><br>
                고객센터 운영시간 (평일 09:00~18:00)<br>
                <span>업무시간 외 자동응답 안내 가능합니다.</span>
            </div>
            <div class="btnWrap">
                <p class="btn">FAQ</p>
                <p class="btn">1:1 문의</p>
                <p class="btn">대관/단체 문의</p>
            </div>
        </div>
        <div class="goods_inforight">
            <h2>앱 다운로드</h2>
            <p class="txt1">CGV앱에서 더 편리하게 이용하세요</p>
            <img src="images/qrcode.gif">
            <p class="txt2">
            QR코드를 스캔하고<br>
            앱설치 페이지로 바로 이동하세요</p>
        </div>
    </div>
    <div class="goods_ad"></div>
</div>

<!-- 공통 하단영역 시작 -->
<%@ include file="layout/footer.jsp"%>