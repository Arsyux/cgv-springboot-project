<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>CGV 리디자인</title>
    <link rel="stylesheet" href="css/header.css">
    <link rel="stylesheet" href="css/footer.css">
    <link rel="stylesheet" href="css/movies.css">
    <script src="js/jquery-3.7.1.min.js"></script>
    <script src="js/header.js"></script>
    <script src="js/join.js"></script>
    <link rel="shortcut icon" href="images/favicon.ico" type="image/x-icon">
</head>
<body>
    <div id="header_ad">
        <img id="header_adImg" src="images/header_pilot.png">
    </div>
    <div id="nav_wrap">
        <nav>
            <a href="/index"><img id="logoImg" src="images/cgv_logo.png"></a>
            <ul class="menu">
                <li>
                    <a href="/movies">영화</a>
                    <ul class="sub">
                        <li><a href="#a">무비차트</a></li>
                        <li><a href="#a">아트하우스</a></li>
                        <li><a href="#a">ICECON</a></li>
                    </ul>
                </li>
                <li>
                    <a href="#a">극장</a>
                    <ul class="sub">
                        <li><a href="#a">CGV 극장</a></li>
                        <li><a href="#a">특별관</a></li>
                    </ul>
                </li>
                <li>
                    <a href="#a">예매</a>
                    <ul class="sub">
                        <li><a href="#a">빠른예매</a></li>
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
                <li>
                    <a href="/login">
                        <img id="loginPassword" src="images/loginPassword.png">
                        <p>로그인</p>
                    </a>
                </li>
                <li>
                    <a href="/join">
                        <img id="loginJoin" src="images/loginJoin.png">
                        <p>회원가입</p>
                    </a>
                </li>
                <li>
                    <a href="#a">
                        <img id="loginCustomer" src="images/loginCustomer.png">
                        <p>고객센터</p>
                    </a>
                </li>
            </ul>
        </nav>
    </div>
    <!-- 공통 상단영역 끝 -->




    <!-- 영화 영역 -->
    <div id="moviechart_section">
        <div class="moviechart_nav">
            <h1>무비차트</h1><a class="top_menu1" href="#a">무비차트</a><a class="top_menu2" href="#a">상영예정작</a>
        </div>

        <div class="moviechart_nowshow">
            <input type="checkbox" id="chk_nowshow">
            <label for="chk_nowshow">현재 상영작만 보기</label>
            <select class="sel_nowshow">
                <option selected>예매율순</option>
                <option>평점순</option>
                <option>관람객순</option>
            </select>
            <button type="button" class="btn_nowshow">GO</button>
        </div>

        <div class="movies">
            <ul class="movieBox">
                <li class="movieNo">No.1</li>
                <li class="movieImg"><img src="images/에일리언.jpg"></li>
                <li class="movieTit">에일리언- 로물루스</li>
                <li class="moviePercent">
                    <span class="percent1">예매율</span>
                    <span class="percent2">7.4%</span>
                    <span class="line"></span>
                    <img src="images/eggGoldenegggreat.png">
                    <span class="percent3">94%</span>
                </li>
                <li class="movieOpen">20204.08.14 개봉</li>
                <li class="moviebtn"><button class="btn_ticketing">예매하기</button></li>
            </ul>
            <ul class="movieBox">
                <li class="movieNo">No.1</li>
                <li class="movieImg"><img src="images/에일리언.jpg"></li>
                <li class="movieTit">에일리언- 로물루스</li>
                <li class="moviePercent">
                    <span class="percent1">예매율</span>
                    <span class="percent2">7.4%</span>
                    <span class="line"></span>
                    <img src="images/eggGoldenegggreat.png">
                    <span class="percent3">94%</span>
                </li>
                <li class="movieOpen">20204.08.14 개봉</li>
                <li class="moviebtn"><button class="btn_ticketing">예매하기</button></li>
            </ul>
            <ul class="movieBox">
                <li class="movieNo">No.1</li>
                <li class="movieImg"><img src="images/에일리언.jpg"></li>
                <li class="movieTit">에일리언- 로물루스</li>
                <li class="moviePercent">
                    <span class="percent1">예매율</span>
                    <span class="percent2">7.4%</span>
                    <span class="line"></span>
                    <img src="images/eggGoldenegggreat.png">
                    <span class="percent3">94%</span>
                </li>
                <li class="movieOpen">20204.08.14 개봉</li>
                <li class="moviebtn"><button class="btn_ticketing">예매하기</button></li>
            </ul>
            <ul class="movieBox">
                <li class="movieNo">No.1</li>
                <li class="movieImg"><img src="images/에일리언.jpg"></li>
                <li class="movieTit">에일리언- 로물루스</li>
                <li class="moviePercent">
                    <span class="percent1">예매율</span>
                    <span class="percent2">7.4%</span>
                    <span class="line"></span>
                    <img src="images/eggGoldenegggreat.png">
                    <span class="percent3">94%</span>
                </li>
                <li class="movieOpen">20204.08.14 개봉</li>
                <li class="moviebtn"><button class="btn_ticketing">예매하기</button></li>
            </ul>
            <ul class="movieBox">
                <li class="movieNo">No.1</li>
                <li class="movieImg"><img src="images/에일리언.jpg"></li>
                <li class="movieTit">에일리언- 로물루스</li>
                <li class="moviePercent">
                    <span class="percent1">예매율</span>
                    <span class="percent2">7.4%</span>
                    <span class="line"></span>
                    <img src="images/eggGoldenegggreat.png">
                    <span class="percent3">94%</span>
                </li>
                <li class="movieOpen">20204.08.14 개봉</li>
                <li class="moviebtn"><button class="btn_ticketing">예매하기</button></li>
            </ul>
            <ul class="movieBox">
                <li class="movieNo">No.1</li>
                <li class="movieImg"><img src="images/에일리언.jpg"></li>
                <li class="movieTit">에일리언- 로물루스</li>
                <li class="moviePercent">
                    <span class="percent1">예매율</span>
                    <span class="percent2">7.4%</span>
                    <span class="line"></span>
                    <img src="images/eggGoldenegggreat.png">
                    <span class="percent3">94%</span>
                </li>
                <li class="movieOpen">20204.08.14 개봉</li>
                <li class="moviebtn"><button class="btn_ticketing">예매하기</button></li>
            </ul>
            <ul class="movieBox">
                <li class="movieNo">No.1</li>
                <li class="movieImg"><img src="images/에일리언.jpg"></li>
                <li class="movieTit">에일리언- 로물루스</li>
                <li class="moviePercent">
                    <span class="percent1">예매율</span>
                    <span class="percent2">7.4%</span>
                    <span class="line"></span>
                    <img src="images/eggGoldenegggreat.png">
                    <span class="percent3">94%</span>
                </li>
                <li class="movieOpen">20204.08.14 개봉</li>
                <li class="moviebtn"><button class="btn_ticketing">예매하기</button></li>
            </ul>
            <ul class="movieBox">
                <li class="movieNo">No.1</li>
                <li class="movieImg"><img src="images/에일리언.jpg"></li>
                <li class="movieTit">에일리언- 로물루스</li>
                <li class="moviePercent">
                    <span class="percent1">예매율</span>
                    <span class="percent2">7.4%</span>
                    <span class="line"></span>
                    <img src="images/eggGoldenegggreat.png">
                    <span class="percent3">94%</span>
                </li>
                <li class="movieOpen">20204.08.14 개봉</li>
                <li class="moviebtn"><button class="btn_ticketing">예매하기</button></li>
            </ul>
            <ul class="movieBox">
                <li class="movieNo">No.1</li>
                <li class="movieImg"><img src="images/에일리언.jpg"></li>
                <li class="movieTit">에일리언- 로물루스</li>
                <li class="moviePercent">
                    <span class="percent1">예매율</span>
                    <span class="percent2">7.4%</span>
                    <span class="line"></span>
                    <img src="images/eggGoldenegggreat.png">
                    <span class="percent3">94%</span>
                </li>
                <li class="movieOpen">20204.08.14 개봉</li>
                <li class="moviebtn"><button class="btn_ticketing">예매하기</button></li>
            </ul>
            <ul class="movieBox">
                <li class="movieNo">No.1</li>
                <li class="movieImg"><img src="images/에일리언.jpg"></li>
                <li class="movieTit">에일리언- 로물루스</li>
                <li class="moviePercent">
                    <span class="percent1">예매율</span>
                    <span class="percent2">7.4%</span>
                    <span class="line"></span>
                    <img src="images/eggGoldenegggreat.png">
                    <span class="percent3">94%</span>
                </li>
                <li class="movieOpen">20204.08.14 개봉</li>
                <li class="moviebtn"><button class="btn_ticketing">예매하기</button></li>
            </ul>
            <ul class="movieBox">
                <li class="movieNo">No.1</li>
                <li class="movieImg"><img src="images/에일리언.jpg"></li>
                <li class="movieTit">에일리언- 로물루스</li>
                <li class="moviePercent">
                    <span class="percent1">예매율</span>
                    <span class="percent2">7.4%</span>
                    <span class="line"></span>
                    <img src="images/eggGoldenegggreat.png">
                    <span class="percent3">94%</span>
                </li>
                <li class="movieOpen">20204.08.14 개봉</li>
                <li class="moviebtn"><button class="btn_ticketing">예매하기</button></li>
            </ul>
            <ul class="movieBox">
                <li class="movieNo">No.1</li>
                <li class="movieImg"><img src="images/에일리언.jpg"></li>
                <li class="movieTit">에일리언- 로물루스</li>
                <li class="moviePercent">
                    <span class="percent1">예매율</span>
                    <span class="percent2">7.4%</span>
                    <span class="line"></span>
                    <img src="images/eggGoldenegggreat.png">
                    <span class="percent3">94%</span>
                </li>
                <li class="movieOpen">20204.08.14 개봉</li>
                <li class="moviebtn"><button class="btn_ticketing">예매하기</button></li>
            </ul>
            <ul class="movieBox">
                <li class="movieNo">No.1</li>
                <li class="movieImg"><img src="images/에일리언.jpg"></li>
                <li class="movieTit">에일리언- 로물루스</li>
                <li class="moviePercent">
                    <span class="percent1">예매율</span>
                    <span class="percent2">7.4%</span>
                    <span class="line"></span>
                    <img src="images/eggGoldenegggreat.png">
                    <span class="percent3">94%</span>
                </li>
                <li class="movieOpen">20204.08.14 개봉</li>
                <li class="moviebtn"><button class="btn_ticketing">예매하기</button></li>
            </ul>
            <ul class="movieBox">
                <li class="movieNo">No.1</li>
                <li class="movieImg"><img src="images/에일리언.jpg"></li>
                <li class="movieTit">에일리언- 로물루스</li>
                <li class="moviePercent">
                    <span class="percent1">예매율</span>
                    <span class="percent2">7.4%</span>
                    <span class="line"></span>
                    <img src="images/eggGoldenegggreat.png">
                    <span class="percent3">94%</span>
                </li>
                <li class="movieOpen">20204.08.14 개봉</li>
                <li class="moviebtn"><button class="btn_ticketing">예매하기</button></li>
            </ul>

            <ul class="movieBox">
                <li class="movieNo">No.1</li>
                <li class="movieImg"><img src="images/에일리언.jpg"></li>
                <li class="movieTit">에일리언- 로물루스</li>
                <li class="moviePercent">
                    <span class="percent1">예매율</span>
                    <span class="percent2">7.4%</span>
                    <span class="line"></span>
                    <img src="images/eggGoldenegggreat.png">
                    <span class="percent3">94%</span>
                </li>
                <li class="movieOpen">20204.08.14 개봉</li>
                <li class="moviebtn"><button class="btn_ticketing">예매하기</button></li>
            </ul>

            <ul class="movieBox">
                <li class="movieNo">No.1</li>
                <li class="movieImg"><img src="images/에일리언.jpg"></li>
                <li class="movieTit">에일리언- 로물루스</li>
                <li class="moviePercent">
                    <span class="percent1">예매율</span>
                    <span class="percent2">7.4%</span>
                    <span class="line"></span>
                    <img src="images/eggGoldenegggreat.png">
                    <span class="percent3">94%</span>
                </li>
                <li class="movieOpen">20204.08.14 개봉</li>
                <li class="moviebtn"><button class="btn_ticketing">예매하기</button></li>
            </ul>




        </div>


    </div>


















    



    <!-- 공통 하단영역 시작 -->
    <footer>
        <div id="footer_wrap">
            <ul>
                <li><a href="#a">회사소개</a></li>
                <li><a href="#a">지속가능경영</a></li>
                <li><a href="#a">IR</a></li>
                <li><a href="#a">채용정보</a></li>
                <li><a href="#a">광고/제휴/출점문의</a></li>
                <li><a href="#a">이용약관</a></li>
                <li><a href="#a">편성기준</a></li>
                <li><a href="#a"><u><b>개인정보처리방침</b></u></a></li>
                <li><a href="#a">법적고지</a></li>
                <li><a href="#a">이메일주소무단수집거부</a></li>
                <li><a href="#a">윤리경영</a></li>
                <li><a href="#a">사이버감사실</a></li>
            </ul>
            <p class="line"></p>
            <address>
            (04377)서울특별시 용산구 한강대로 23길 55, 아이파크몰 6층(한강로동)<br>
            대표이사 : 허민회 · 사업자등록번호 : 104-81-45690 · 통신판매업신고번호 : 2017-서울용산-0062 <u>사업자정보확인</u><br>
            호스팅사업자 : CJ올리브네트웍스 · 개인정보보호 책임자 : 도형구 · 대표 이메일 : cjcgvmaster@cj.net<br>
            © CJ CGV. All Rights Reserved
            </address>
            <select id="familysite">
                <option disabled hidden selected>계열사 바로가기</option>
                <optgroup label="CJ그룹">
                <option value="http://www.cj.net/">CJ주식회사</option>
                </optgroup><optgroup label="식품 &amp; 식품서비스">
                <option value="https://www.cj.co.kr/kr/index">CJ제일제당</option>
                <option value="https://www.cjfoodville.co.kr/main.asp">CJ푸드빌</option>
                <option value="http://www.cjfreshway.com/index.jsp">CJ프레시웨이</option>
                </optgroup><optgroup label="생명공학">
                <option value="https://www.cj.co.kr/kr/about/business/bio">CJ제일제당 BIO사업부문</option>
                <option value="https://www.cj.co.kr/kr/about/business/bio">CJ Feed&amp;Card</option>
                </optgroup><optgroup label="물류 &amp; 신유통">
                <option value="https://www.cjlogistics.com/ko/main">CJ대한통운</option>
                <option value="http://www.cjenc.co.kr/kr/Default.asp">CJ대한통운 건설부문</option>
                <option value="https://www.oliveyoung.co.kr/store/company/brandStory.do">CJ올리브영</option>
                <option value="https://www.cjolivenetworks.co.kr:449/">CJ올리브네트웍스</option>
                <option value="https://www.cjoshopping.com:9002/index.asp">CJ ENM 커머스부문</option>
                </optgroup><optgroup label="엔터테인먼트 &amp; 미디어">
                <option value="https://www.cjenm.com/ko/">CJ ENM 엔터테인먼트부문</option>
                <option value="http://corp.cgv.co.kr/">CJ CGV</option>
                </optgroup>
            </select>
            <button class="btn_familysite" onclick="goFamilySite()">GO</button>
        </div>
    </footer>
</body>
</html>