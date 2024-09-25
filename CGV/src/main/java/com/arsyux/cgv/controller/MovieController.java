package com.arsyux.cgv.controller;

import java.io.File;
import java.sql.Timestamp;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.Date;
import java.util.List;

import org.modelmapper.ModelMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.data.repository.query.Param;
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
import org.springframework.web.multipart.MultipartFile;

import com.arsyux.cgv.domain.UserVO;
import com.arsyux.cgv.dto.MovieDTO;
import com.arsyux.cgv.dto.ResponseDTO;
import com.arsyux.cgv.dto.UserDTO;
import com.arsyux.cgv.dto.UserDTO.InsertUserValidationGroup;
import com.arsyux.cgv.security.UserDetailsImpl;
import com.arsyux.cgv.service.MovieService;
import com.arsyux.cgv.service.UserService;
import com.arsyux.cgv.domain.FileUtils;
import com.arsyux.cgv.domain.FileVO;

import lombok.RequiredArgsConstructor;

@RequiredArgsConstructor 
@Controller
public class MovieController {
	
	@Autowired
	private MovieService adminService;

	@Autowired
	private ModelMapper modelMapper;

	@Autowired
	private FileUtils fileUtils;
	
	// 프로필 이미지 경로
	@Value("${FILE_PATH}")
	private String FILE_PATH;
	
	// 영화관 등록 페이지
	@GetMapping("/info/insertMovie")
	public String getInsertMovie(Model model, @AuthenticationPrincipal UserDetailsImpl principal) {
		
		UserVO user = principal.getUser();
		
		// navi에 표시할 현재 페이지
		model.addAttribute("page", "insertMovie");
		// 정보
		model.addAttribute("user", user);
		
		// admin 체크
		if(!user.getRole().equals("admin")) {
			// admin이 아닐경우 홈으로 이동
			System.out.println("잘못된 접근입니다. 접근 아이디: " + user.getId());
			return "redirect:/index";
		} else {
			return "info/insertMovie";
		}
	}
	
	// 영화관 등록
	@PostMapping("/info/insertMovie")
	public @ResponseBody ResponseDTO<?> postInsertMovie(@RequestBody MovieDTO movieDTO, @AuthenticationPrincipal UserDetailsImpl principal, BindingResult bindingResult) {
		
		UserVO user = principal.getUser();
		
		// admin 체크
		if(!user.getRole().equals("admin")) {
			// admin이 아닐경우 홈으로 이동
			System.out.println("잘못된 접근입니다. 접근 아이디: " + user.getId());
			return new ResponseDTO<>(HttpStatus.BAD_REQUEST.value(), "잘못된 접근입니다.");
		} else {
			// admin이 일 경우
			
			
			
			
			
			
			return new ResponseDTO<>(HttpStatus.OK.value(), "영화 등록에 성공하였습니다.");
		}
	}
		
	
	
	
	
	
	
	// 프로필 사진 임시 업로드
	public @ResponseBody ResponseDTO<?> uploadProfileImgTemp123(MultipartFile profileImgUpload, @AuthenticationPrincipal UserDetailsImpl principal) {

		if(profileImgUpload == null) {

			UserVO user = principal.getUser();
			System.out.println("[" + new Date() + "] " + user.getId() + " 프로필 이미지 null 에러");
			return new ResponseDTO<>(HttpStatus.BAD_REQUEST.value(), "프로필 이미지 등록중 에러");
		}
		
		FileVO profileFile = fileUtils.uploadFileTemp(profileImgUpload);
		
        // 이미지 경로
		String profileImgPath = ".." + File.separator
								+ "images" + File.separator 
								+ "temp" + File.separator
								+ profileFile.getRegdate().toLocalDateTime().format(DateTimeFormatter.ofPattern("yyMMdd")).toString() + File.separator
								+ profileFile.getSave_name();
		
		// 임시 경로를 반환
		return new ResponseDTO<>(HttpStatus.OK.value(), profileImgPath);
	}
	
	// 프로필 사진 업로드
	public @ResponseBody ResponseDTO<?> updateProfileImg123(@RequestBody UserDTO userDTO, @AuthenticationPrincipal UserDetailsImpl principal, BindingResult bindingResult) {
		
		// UserDTO를 통해 유효성 검사
		UserVO update_User = modelMapper.map(userDTO, UserVO.class);
		
		// 로그인 중인 유저 정보
		UserVO login_User = principal.getUser();
		
		// null 검사
		if(update_User == null || login_User == null) { return new ResponseDTO<>(HttpStatus.BAD_REQUEST.value(), "유저 데이터에 오류가 있습니다."); }
		
		// 데이터 세팅
		update_User.setUser_pk(login_User.getUser_pk());
		update_User.setId(login_User.getId());

		// 프로필 데이터에 변화가 있으면
		if(!login_User.getProfile().equals(update_User.getProfile())) {
			// 임시 폴더에서 저장 폴더로 옮기고, 기존에 등록된 파일 삭제
			FileVO file = fileUtils.moveProfileImgFromTemp(update_User.getProfile(), login_User.getProfile());
			
			// 데이터 세팅
			LocalDateTime time = file.getRegdate().toLocalDateTime();
			String str_time = time.format(DateTimeFormatter.ofPattern("yyMMdd")).toString();
			update_User.setProfile("../images/profile/" + str_time + "/" + file.getSave_name());			
		}
        
		// 데이터 업데이트
		//userService.updateMyCGV(update_User);
		
		return new ResponseDTO<>(HttpStatus.OK.value(), "업데이트 성공!");
	}
	
}