package com.epps.study.user.service.impl;

import com.epps.study.user.vo.UserVO;
import com.sqlmap.study.mappers.UserMapper;
import com.epps.study.user.service.UserService;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

@Service("userService")

public class UserServiceImpl implements UserService{

	@Resource(name="userMapper")
	private UserMapper usermapper;
	
	@Override
	public UserVO Login(UserVO vo) throws Exception{
		
		UserVO userVO = usermapper.Login(vo);
		
		return userVO;
		
	}
}
