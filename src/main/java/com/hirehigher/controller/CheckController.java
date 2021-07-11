package com.hirehigher.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class CheckController {
	
	@RequestMapping("/createBoard/createBoard")
	public String createBoard() {
		
		return "createBoard/createBoard";
	}
	
	@RequestMapping("/creator/creatorDetail")
	public String creatorDetail() {
		
		return "creator/creatorDetail";
	}
	
	@RequestMapping("/creator/creatorModify")
	public String creatorModify() {
		
		return "creator/creatorModify";
	}
	
	@RequestMapping("/user/mypage")
	public String mypage() {
		
		return "user/mypage";
	}
	
	@RequestMapping("/user/mypageModify")
	public String mypageModify() {
		
		return "user/mypageModify";
	}
	
	@RequestMapping("/user/userJoin")
	public String userJoin() {
		
		return "user/userJoin";
	}
	
	@RequestMapping("/user/userLogin")
	public String userLogin() {
		
		return "user/userLogin";
	}
	
	@RequestMapping("/creator/creatorApply")
	public String creatorApply() {
		
		return "creator/creatorApply";
	}
	
	@RequestMapping("/jobBoard/jobBoard")
	public String jobBoard() {
		
		return "jobBoard/jobBoard";
	}
	
	@RequestMapping("/jobBoard/jobDetail")
	public String jobDetail() {
		
		return "jobBoard/jobDetail";
	}
	
	
}
