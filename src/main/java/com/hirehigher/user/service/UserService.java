package com.hirehigher.user.service;

import com.hirehigher.command.UserVO;

public interface UserService {
	
	public UserVO login(UserVO vo);//로그인
	public int idCheck(String userId);//아이디 중복확인
}
