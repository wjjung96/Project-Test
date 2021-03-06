package com.hirehigher.user.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.hirehigher.command.UserVO;
import com.hirehigher.user.mapper.UserMapper;

@Service("userService")
public class UserServiceImpl implements UserService {
	
	@Autowired
	private UserMapper userMapper;
	
	
	//로그인
	@Override
	public UserVO login(UserVO vo) {
		
		return userMapper.login(vo);
	}
	
	@Override
	public ArrayList<UserVO> findIdA(String userName, String birthDay) {
		
		System.out.println("서비스영역에서 실행됨:"+ userName + ", " + birthDay);
		
		return userMapper.findIdA(userName, birthDay);
	}


	@Override
	public int idCheck(String userId) {
		
		return userMapper.idCheck(userId);
	}


	@Override
	public int nickNameCheck(String nickName) {
		
		return userMapper.nickNameCheck(nickName);
	}


	@Override
	public int emailCheck(String userEmail) {
	
		return userMapper.emailCheck(userEmail);
	}


	@Override
	public int join(UserVO vo) {
		
		return userMapper.join(vo);
	}


	@Override
	public UserVO getUserInfo(String userId) {
		
		return userMapper.getUserInfo(userId);
	}


	

}
