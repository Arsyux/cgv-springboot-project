package com.arsyux.cgv.domain;

import java.util.Date;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class ScreeningVO {

	public int screening_pk; // 영화관 PK
	public int theater_pk; // 영화관 이름
	public int movie_pk; // 영화 이름
	public String movieDateTime; // 영화 날짜, 시간
	public int seats; //좌석 수
	public Date regdate; // 데이터 삽입 날짜
	
}