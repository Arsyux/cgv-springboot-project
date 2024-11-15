package com.arsyux.cgv.domain;

import java.util.Date;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class TheaterVO {

	public int theater_pk; // 영화관 PK
	public String name; // 영화관 이름
	public String location; // 영화관 지역
	public String locationDetail; // 영화관 주소
	public Date regdate; // 데이터 삽입 날짜
	
}