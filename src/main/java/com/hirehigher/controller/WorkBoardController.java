package com.hirehigher.controller;

//import org.springframework.beans.factory.annotation.Autowired;
//import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/workBoard")
public class WorkBoardController {
	
//	@Autowired
//	@Qualifier("workBoardSerivce")
//	private WorkBoardSerivce workBoardService;

	@RequestMapping("/workBoard")
	public String workBoard() {
		
		return "workBoard/workBoard";
	}
	
	@RequestMapping("/workDetail")
	public String workDetail() {
		return "workBoard/workDetail";
	}
	
//	@RequestMapping("/workModify")
//	public String workModify() {
//		return"workBoard/workModify";
//	}
	
}
