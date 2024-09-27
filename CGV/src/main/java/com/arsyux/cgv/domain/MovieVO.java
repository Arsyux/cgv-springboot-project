package com.arsyux.cgv.domain;

import java.util.Date;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class MovieVO {
	
	public int movie_pk; // 영화 PK
	public String movieMainImg; // 영화 메인 이미지 경로
	public String movieTopImg; // 영화 상단 이미지 경로
	public String movieTopBackgroundColor; // 영화 상단 이미지 배경색
	public String movieMainVideo; // 영화 메인 영상 경로
	public String title; // 영화 제목
	public String en_title; // 영화 영어 제목
	public String director; // 감독
	public String actor; // 배우
	public String genre; // 장르
	public String info; // 기본 정보
	public String detail; // 영화 줄거리
	public String screening_date; // 상영 날짜
	public String end_date; // 종영 날짜
	public Date regdate; // 데이터 삽입 날짜
	
}