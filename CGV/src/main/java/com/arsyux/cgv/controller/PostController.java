package com.arsyux.cgv.controller;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

import lombok.RequiredArgsConstructor;

@RequiredArgsConstructor 
@Controller
public class PostController {
	
	@Value("${FILE_PATH}")
	private String FILE_PATH;
	
	// 메인 화면 이동
	@GetMapping({ "", "/", "index" })
	public String getHome() {
		return "index";
	}
	
	// 영화 페이지
	@GetMapping("/movies")
	public String movies() {
		return "movies";
	}
	
	// 예매
	@GetMapping("/ticket")
	public String getTicket(Model model, @RequestParam(required = false) String ticket) {
		if(ticket != "" && ticket != null) {
			model.addAttribute("ticket", ticket);
			return "ticket/ticket";	
		} else {
			return "ticket/ticket";
		}
	}
	
	// 특별관
	@GetMapping("/special")
	public String getSpecial(Model model, @RequestParam(defaultValue = "IMAX") String cinema) {

		model.addAttribute("cinema", cinema);
		
		switch(cinema) {
			case "IMAX":
			case "4DX":
			case "U4DX":
			case "ScreenX":
			case "SPHEREX":
			case "SOUNDX":
			case "STARIUM":
				model.addAttribute("page", "1");
				break;
			case "PRIVATEBOX":
			case "DOLBY":
			case "SUITE":
			case "CHEF":
			case "TEMPUR":
			case "GOLD":
			case "PRIVATE":
				model.addAttribute("page", "2");
				break;
			case "PREMIUM":
			case "FORET":
			case "LIVING":
				model.addAttribute("page", "3");
				break;
		}
		
		if(cinema == null || cinema == "") {
			return "special?cinema=IMAX";
		} else {
			return "special/" + cinema;
		}
	}
	
	
	
	
}