package com.epps.study.user.web;

import java.sql.Connection;

import javax.annotation.Resource;
import javax.inject.Inject;
//import javax.servlet.ServletRequest;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.sql.DataSource;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
//import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.epps.study.user.service.UserService;
import com.epps.study.customer.vo.CustomerVO;
import com.epps.study.user.vo.UserVO;

@Controller
public class UserController {

	
	@Resource(name="userService")
	UserService userService;
	
	@Inject
	private DataSource dataSource;
	
	private Logger logger = LoggerFactory.getLogger(UserController.class);
	
	
	@RequestMapping(value = "/login.do", method = RequestMethod.POST)
	public String login(UserVO vo, HttpServletRequest request) {
		
		try(Connection conn = dataSource.getConnection()) { // DBCP
			
		
	logger.info("LOGIN PAGE");
	System.out.println("DB 연결 성공 : " +conn);
	
	HttpSession session = request.getSession();
	UserVO res = userService.Login(vo);
	
	
	String Username = request.getParameter("username");
	String Password = request.getParameter("password");
	
	System.out.println("아이디 : " + Username);
	System.out.println("비밀번호 : " + Password);
	CustomerVO customervo = new CustomerVO();
	//System.out.println("테스트" + customervo.);
	
	if(res!=null)
	{
		//세션저장
		System.out.println("접속 완료");
		session.setAttribute("res", res);
		return "/view/main/main";
		
	}else {
		System.out.println("접속 실패.userService 못부름");
		return "/index";
	}
   	}catch (Exception e) {
		 System.out.println(e.getMessage());
		 System.out.println("DB 실패");
		 return "/index";
		}
   	

	}	
	
}
