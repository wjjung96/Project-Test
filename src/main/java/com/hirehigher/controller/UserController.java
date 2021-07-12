package com.hirehigher.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.hirehigher.command.UserVO;
import com.hirehigher.user.service.UserService;

@Controller
@RequestMapping("/user")
public class UserController {
	
	@Autowired
	@Qualifier("userService")
	private UserService userService;
	
	
	//로그인화면
	@RequestMapping("/userLogin")
	public void userLogin() {
		
	}
	
	//로그인 처리
	@RequestMapping(value="loginForm", method=RequestMethod.POST)
	public ModelAndView loginForm(UserVO vo) {
		
		ModelAndView mv = new ModelAndView();
		
		UserVO userVO = userService.login(vo);
		
	
		if(userVO != null) { //로그인 성공
			System.out.println(userVO.toString());
			mv.addObject("login", userVO);
		}else { //로그인 실패
			mv.addObject("msg", "아이디 비밀번호를 확인하세요");
		}
		
		return mv; //LoginSuccessHandler로 반환
	}
	
	//회원가입화면
	@RequestMapping("/userJoin")
	public void userJoin() {
		
	}
	
	//마이페이지
	@RequestMapping("/mypage")
	public void mypage() {
		
	}
	
	//마이수정페이지
	@RequestMapping("/mypageModify")
	public void mypageModify() {
		
	}
	
	
	
}
