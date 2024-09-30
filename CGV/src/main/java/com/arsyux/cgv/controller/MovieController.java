package com.arsyux.cgv.controller;

import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.List;

import org.modelmapper.ModelMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.http.HttpStatus;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RequestPart;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.arsyux.cgv.domain.UserVO;
import com.arsyux.cgv.dto.MovieDTO;
import com.arsyux.cgv.dto.ResponseDTO;
import com.arsyux.cgv.security.UserDetailsImpl;
import com.arsyux.cgv.service.MovieService;
import com.arsyux.cgv.domain.FileUtils;
import com.arsyux.cgv.domain.FileVO;
import com.arsyux.cgv.domain.MovieVO;

import lombok.RequiredArgsConstructor;

@RequiredArgsConstructor 
@Controller
public class MovieController {
	
	@Autowired
	private MovieService movieService;

	@Autowired
	private ModelMapper modelMapper;

	@Autowired
	private FileUtils fileUtils;
	
	// 프로필 이미지 경로
	@Value("${FILE_PATH}")
	private String FILE_PATH;
	
	// 영화 등록 페이지
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
	
	// 영화 등록 페이지
	@GetMapping("/info/insertTheater")
	public String getInsertTheater(Model model, @AuthenticationPrincipal UserDetailsImpl principal) {
		
		UserVO user = principal.getUser();
		
		// navi에 표시할 현재 페이지
		model.addAttribute("page", "insertTheater");
		// 정보
		model.addAttribute("user", user);
		
		// admin 체크
		if(!user.getRole().equals("admin")) {
			// admin이 아닐경우 홈으로 이동
			System.out.println("잘못된 접근입니다. 접근 아이디: " + user.getId());
			return "redirect:/index";
		} else {
			return "info/insertTheater";
		}
	}
	
	// 영화 등록
	@PostMapping("/info/insertMovie")
	public @ResponseBody ResponseDTO<?> postInsertMovie(
			@RequestPart(value="movie") MovieDTO movieDTO, 
			@RequestPart(value="movieMainImg") MultipartFile file1, 
			@RequestPart(value="movieMainVideo") MultipartFile file2,
			@RequestPart(value="movieTopImg") MultipartFile file3, 
			@AuthenticationPrincipal UserDetailsImpl principal, 
			BindingResult bindingResult) {
		
		UserVO user = principal.getUser();
		MovieVO movie = modelMapper.map(movieDTO, MovieVO.class);
		
		// admin 체크
		if(!user.getRole().equals("admin")) {
			// admin이 아닐경우 홈으로 이동
			System.out.println("잘못된 접근입니다. 접근 아이디: " + user.getId());
			return new ResponseDTO<>(HttpStatus.BAD_REQUEST.value(), "잘못된 접근입니다.");
		} else {
			// admin이 일 경우
			
			// 이미지, 영상 저장
			// 메인 이미지
			FileVO movieMainImg = fileUtils.uploadFileMovieMain(file1);
			// 상단 광고 이미지
			FileVO movieMainTop = fileUtils.uploadFileMovieTop(file2);
			// 영화 광고 영상
			FileVO movieMainVideo =fileUtils.uploadFileMovieVideo(file3);
			
			// movie객체에 저장 경로 설정
			// 메인 이미지
			LocalDateTime time = movieMainImg.getRegdate().toLocalDateTime();
			String str_time = time.format(DateTimeFormatter.ofPattern("yyMMdd")).toString();
			movie.setMovieMainImg("../images/movieMain/" + str_time + "/" + movieMainImg.getSave_name());
			
			// 상단 광고 이미지
			time = movieMainTop.getRegdate().toLocalDateTime();
			str_time = time.format(DateTimeFormatter.ofPattern("yyMMdd")).toString();
			movie.setMovieTopImg("../images/movieTop/" + str_time + "/" + movieMainTop.getSave_name());

			// 영화 광고 영상
			time = movieMainVideo.getRegdate().toLocalDateTime();
			str_time = time.format(DateTimeFormatter.ofPattern("yyMMdd")).toString();
			movie.setMovieMainVideo("../videos/" + str_time + "/" + movieMainVideo.getSave_name());
			
			// DB 삽입
			movieService.insertMovie(movie);
			
			return new ResponseDTO<>(HttpStatus.OK.value(), "영화 등록에 성공하였습니다.");
		}
	}
	
	// 무비차트
	@GetMapping("/movie/movieChart")
	public String getMovieChart(Model model) {
		List<MovieVO> movies = movieService.getMovieChart();
		if(movies.size() != 0) {
			model.addAttribute("movies", movies);
		}
		return "movie/movieChart";
	}
	
	// 영화 상세
	@GetMapping("/movie/movieDetail")
	public String movieDetail(Model model, @RequestParam String movie_pk) {
		
		int pk = 1;
		
		try { pk = Integer.parseInt(movie_pk); }
		catch (Exception e) { return "redirect:/index"; }
		
		MovieVO movie = movieService.getMovieDetail(pk);
		if(movie == null) {
			return "redirect:/index";
		}
		model.addAttribute("movie", movie);
		
		return "movie/movieDetail";
	}
	
}