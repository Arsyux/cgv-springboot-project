package com.arsyux.cgv.dto;

import java.util.Date;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

// 유저 유효성 검사
@Data
@NoArgsConstructor
@AllArgsConstructor
public class TheaterDTO {

	public int theater_pk; // 영화관 PK
	public String name; // 영화관 이름
	public String location; // 영화관 지역
	public String locationDetail; // 영화관 주소
	public Date regdate; // 데이터 삽입 날짜
	
}
