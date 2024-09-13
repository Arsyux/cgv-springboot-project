package com.arsyux.cgv.controller;

import org.modelmapper.ModelMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.http.HttpStatus;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.arsyux.cgv.domain.UserVO;
import com.arsyux.cgv.dto.ResponseDTO;
import com.arsyux.cgv.dto.UserDTO;
import com.arsyux.cgv.dto.UserDTO.InsertUserValidationGroup;
import com.arsyux.cgv.security.UserDetailsImpl;
import com.arsyux.cgv.service.UserService;

import lombok.RequiredArgsConstructor;

@RequiredArgsConstructor 
@Controller
public class UserController {
	
	@Autowired
	private UserService userService;

	@Autowired
	private ModelMapper modelMapper;
	
	
	// 로그인 페이지
	@GetMapping("/auth/login")
	public String getlogin(@RequestParam(value = "error", required = false)String error,
						@RequestParam(value = "exception", required = false)String exception,
						Model model) {
		// 로그인 실패시 error를 담음
		model.addAttribute("error", error);
		model.addAttribute("exception", exception);
		return "auth/login";
	}
	
	// 회원가입 페이지
	@GetMapping("/auth/join")
	public String getJoin() {
		return "auth/join";
	}
	
	// 회원 가입 기능
	@PostMapping("/auth/join")
	//public @ResponseBody ResponseDTO<?> joinUser(@Validated(InsertUserValidationGroup.class) @RequestBody UserDTO userDTO, BindingResult bindingResult) {
	public @ResponseBody ResponseDTO<?> joinUser(@RequestBody UserDTO userDTO, BindingResult bindingResult) {
		
		// UserDTO를 통해 유효성 검사
		UserVO user = modelMapper.map(userDTO, UserVO.class);
		
		/*
		// 중복되는 아이디 검색
		UserVO findUsername = userService.findByUsername(user.getUsername());
		
		// 중복되는 아이디가 있을 경우 알림 표시
		if(findUsername.getUsername() != null) {
			return new ResponseDTO<>(HttpStatus.BAD_REQUEST.value(), "이미 회원가입 되어있는 아이디입니다.");	
		}
		
		// 중복되는 휴대폰 검색
		UserVO findUserPhone = userService.findByPhone(user.getPhone());
		// 중복되는 휴대폰이 있을 경우 알림 표시
		if(findUserPhone.getPhone() != null) {
			return new ResponseDTO<>(HttpStatus.BAD_REQUEST.value(), "이미 사용중인 휴대폰 번호입니다.");	
		}

		// 중복되는 이메일 검색
		UserVO findUserEmail = userService.findByEmail(user.getEmail());
		// 중복되는 이메일이 있을 경우 알림 표시
		if(findUserEmail.getEmail() != null) {
			return new ResponseDTO<>(HttpStatus.BAD_REQUEST.value(), "이미 사용중인 이메일입니다.");	
		}
		*/
		
		// 중복 체크 이후 insert
		userService.joinUser(user);
		
		return new ResponseDTO<>(HttpStatus.OK.value(), user.getName() + "님 환영합니다!");		
	}
	
	// MY CGV
	@GetMapping("/info/mycgv")
	public String mycgv(Model model, @AuthenticationPrincipal UserDetailsImpl principal) {
		
		UserVO user = principal.getUser();

		// navi에 표시할 현재 페이지
		model.addAttribute("page", "mycgv");
		
		// 유저 정보
		model.addAttribute("user", user);
		
		// 이메일 자르기
		String email_id = user.getEmail().substring(0, user.getEmail().indexOf("@"));
		model.addAttribute("email_id", email_id);
		String email_url = user.getEmail().substring(user.getEmail().indexOf("@") + 1, user.getEmail().length());
		model.addAttribute("email_url", email_url);
		
		return "info/mycgv";
	}
	
	// 나의 예매내역
	@GetMapping("/info/myticketing")
	public String myticketing(Model model, @AuthenticationPrincipal UserDetailsImpl principal) {
		
		UserVO user = principal.getUser();
		
		// navi에 표시할 현재 페이지
		model.addAttribute("page", "myticketing");
		
		// 유저 정보
		model.addAttribute("user", user);
		
		//model.addAttribute("url", url);
		
		return "info/myticketing";
	}
}