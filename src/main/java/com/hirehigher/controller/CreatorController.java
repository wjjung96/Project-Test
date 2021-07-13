package com.hirehigher.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/creator")
public class CreatorController {

	@RequestMapping("/creatorApply")
	public String creatorApply() {
		
		
		
		return "/creator/creatorApply";
	}
	
	@RequestMapping("/creatorDetail")
	public String creatorDetail() {
		
		
		
		return "/creator/creatorDetail";
	}

	@RequestMapping("/creatorModify")
	public String creatorModify() {
		
		
		
		return "/creator/creatorModify";
	}
}
