package com.hirehigher.user.service;

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
	public int idCheck(String userId) {
		
		return userMapper.idCheck(userId);
	}


	@Override
	public int nickNameCheck(String nickName) {
		
		return userMapper.nickNameCheck(nickName);
	}

}
