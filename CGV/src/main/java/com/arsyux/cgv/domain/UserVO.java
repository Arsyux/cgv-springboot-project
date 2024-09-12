package com.arsyux.cgv.domain;

import java.util.Date;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class UserVO {
	
	private int user_pk; // 회원 pk
	private String id; // 로그인 아이디
	private String password; // 비밀번호
	private String profile; // 프로필 이미지 경로
	private String name; // 이름
	private String birth; // 생년월일
	private String phone; // 휴대폰 번호
	private String email; // 이메일
	private boolean marketing_email; // 마케팅 동의 - 이메일
	private boolean marketing_sms; // 마케팅 동의 - sms
	private boolean marketing_phone; // 마케팅 동의 - 휴대폰
	private boolean agree_promotion; // 정보제공 동의 - 홍보
	private boolean agree_stamp; // 정보제공 동의 - 스탬프
	private Date credate; // 가입일
	private Date change_password; // 비밀번호 변경한 날짜
	private String grade; // 유저 등급(일반, VIP, RVIP, VVIP, SVIP)
	private String role; // 유저 역할(일반, 관리자)
}
