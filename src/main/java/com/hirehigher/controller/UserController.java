package com.hirehigher.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
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
			mv.setViewName("user/userLogin");
		}
		
		return mv; //LoginSuccessHandler로 반환
	}
	
	//회원가입화면
	@RequestMapping("/userJoin")
	public void userJoin() {
		
	}
	
	//아이디 중복확인(비동기요청)
	@ResponseBody //@ResponseBody는 restController가 아닌 일반 컨트롤러에서 비동기요청이 일어난곳으로 return값을 보내주기위해 필요하다
	@GetMapping("/idCheck/{userId}") //$.getJSON으로 비동기요청을 받을때는 RequestMapping이 아니라 GetMapping으로 받아준다.
	public int idCheck(@PathVariable("userId") String userId) {
		
		int result = userService.idCheck(userId);
		
		System.out.println("result:"+result);
		return result;
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
