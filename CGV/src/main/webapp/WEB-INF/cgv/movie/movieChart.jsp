<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<%@ include file="../layout/header.jsp"%>
<title>MY CGV</title>
<link rel="stylesheet" href="../css/movies/movieChart.css">
<script src="../js/movieChart.js"></script>

<%@ include file="../layout/navi.jsp"%>
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
	        <!-- 영화 리스트 출력 -->
	        <c:forEach var="movie" items="${ movies }" varStatus="status">
	            <ul class="movieBox" onclick="movieBox_Click(${movie.movie_pk})">
	                <li class="movieNo">
	                		No.${ status.index +1 }
                	</li>
	                <li class="movieImg">
		                	<img src="${ movie.movieMainImg }">
	                </li>
	                <li class="movieTit">
		                	${ movie.title }
                	</li>
	                <li class="movieOpen">${ movie.screening_date } 개봉</li>
	                <li class="moviebtn"><button class="btn_ticketing">예매하기</button></li>
	            </ul>
	        </c:forEach>
        </div>


    </div>


















    




<!-- 공통 하단영역 시작 -->
<%@ include file="../layout/footer.jsp"%>