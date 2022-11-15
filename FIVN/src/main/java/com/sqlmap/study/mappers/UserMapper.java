package com.sqlmap.study.mappers;

import com.epps.study.user.vo.UserVO;

import egovframework.rte.psl.dataaccess.mapper.Mapper;

@Mapper("userMapper")
public interface UserMapper {

	// 로그인 기능
	UserVO Login(UserVO vo) throws Exception;
	
}
