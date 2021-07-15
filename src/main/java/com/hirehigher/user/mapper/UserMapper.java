package com.hirehigher.user.mapper;

import com.hirehigher.command.UserVO;


public interface UserMapper {
	
	public UserVO login(UserVO vo);//로그인
	public int idCheck(String userId);//아이디 중복확인
	public int nickNameCheck(String nickName);//닉네임 중복확인
	public int emailCheck(String userEmail);//이메일 중복확인
}
