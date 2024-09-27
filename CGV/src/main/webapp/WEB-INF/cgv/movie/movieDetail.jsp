<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<%@ include file="../layout/header.jsp"%>
<title>MY CGV</title>
<link rel="stylesheet" href="../css/movies/movieDetail.css">
<script src="../js/movieDetail.js"></script>

<%@ include file="../layout/navi.jsp"%>
<!-- 공통 상단영역 끝 -->

<!-- 영화 영역 -->
<div id="movie_detail">
	<div class="img_area">
		<div class="img_cut">
			<a href="${ movie.movieMainImg }" target="_blank">
				<img alt="main_img" src="${ movie.movieMainImg }">
			</a>
		</div>
	</div>
	<div class="info_area">
		<h1>
			<span class="title">${ movie.title }</span>
			<span class="screen">현재상영중</span>
		</h1>
		<h2>${ movie.en_title }</h2>
		<p class="line">
		<h3><span class="director">감독: ${ movie.director }</span>/<span class="actor">배우: ${ movie.actor }</span></h3>
		<h3><span class="genre">장르: ${ movie.genre }</span>/<span class="info">기본 정보: ${ movie.info }</span></h3>
		<h3><span>개봉: ${ movie.screening_date }</span></h3>
		<a class="ticketing" href="#a">예매하기</a>
	</div>
	
	<div class="detail_area">
		<textarea rows="20" readonly="readonly">${ movie.detail }</textarea>
	</div>
	
	<div class="trailer">
		<h4>트레일러</h4>
		<a href="${ movie.movieMainVideo }" target="_blank">
			<video src="${ movie.movieMainVideo }" muted="muted"></video>
		</a>
	</div>
</div>


















    




<!-- 공통 하단영역 시작 -->
<%@ include file="../layout/footer.jsp"%>