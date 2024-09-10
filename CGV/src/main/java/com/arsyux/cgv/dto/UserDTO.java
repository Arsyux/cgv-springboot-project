package com.arsyux.cgv.dto;

import java.util.Date;

import javax.validation.constraints.Email;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.Pattern;
import javax.validation.constraints.Size;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

// 유저 유효성 검사
@Data
@NoArgsConstructor
@AllArgsConstructor
public class UserDTO {

	// 유효성 검사 그룹
	public interface InsertUserValidationGroup { } // 회원 가입시 유효성 검사
	public interface ChangePasswordValidationGroup { } // 비밀번호 변경시 유효성 검사
	
	// 로그인 아이디 (email)
	@NotBlank(groups = { InsertUserValidationGroup.class }, 
			  message = "로그인 아이디는 필수 입력 항목입니다.")
	@Email(groups = { InsertUserValidationGroup.class },
		   message = "이메일 형식이 아닙니다.")
	@Size(groups = { InsertUserValidationGroup.class }, 
	      min = 5, max = 40,
		  message = "로그인 아이디는 5자 이상 40자 미만으로 입력해주세요.")
	private String id;

	// 비밀번호
	@NotBlank(groups = { InsertUserValidationGroup.class, ChangePasswordValidationGroup.class }, 
			  message = "비밀번호는 필수 입력 항목입니다.")
	@Pattern(groups = { InsertUserValidationGroup.class, ChangePasswordValidationGroup.class },
			 message = "비밀번호는 영문, 숫자, 특수문자를 포함하여 8글자 이상 15글자 이하로 설정해야합니다.",
			 regexp = "^(?=.*[a-zA-Z])(?=.*[!@#$%^*+=-])(?=.*[0-9]).{8,15}$")
	@Size(groups = { InsertUserValidationGroup.class, ChangePasswordValidationGroup.class }, 
		  min = 8, max = 15,
		  message = "비밀번호는 8자 이상 15자 미만으로 입력해주세요.")
	private String password;
	
	// 이름
	private String name;
	
	// 생일
	private String birth;

	// 휴대폰
	private String phone;
	
	// 이메일
	private String email;

	// 마케팅 - 이메일
	private boolean marketing_email;

	// 마케팅 - sms
	private boolean marketing_sms;

	// 마케팅 - 휴대전화
	private boolean marketing_phone;

	// 정보제공 - 홍보
	private boolean agree_promotion;
	
	// 정보제공 - 스탬프
	private boolean agree_stamp;

	// 생성일
	private Date credate;

	// 비밀번호 변경일
	private Date change_password;

	// 관리자 여부
	private String role;
			
}
