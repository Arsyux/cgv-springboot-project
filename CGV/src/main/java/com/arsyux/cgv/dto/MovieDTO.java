package com.arsyux.cgv.dto;

import java.util.Date;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

// 유저 유효성 검사
@Data
@NoArgsConstructor
@AllArgsConstructor
public class MovieDTO {

	// 유효성 검사는 UserDTO에 예시가 있으므로 생략
	
	public int movie_pk; // 영화 PK
	public String movieMainImg; // 영화 메인 이미지 경로
	public String movieMainVideo; // 영화 메인 영상 경로
	public String movieTopImg; // 영화 상단 이미지 경로
	public String movieTopBackgroundColor; // 영화 상단 이미지 배경색
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
