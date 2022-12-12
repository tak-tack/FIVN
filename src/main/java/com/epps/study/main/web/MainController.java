package com.epps.study.main.web;


import java.sql.Connection;
import javax.annotation.Resource;
import javax.inject.Inject;
import javax.sql.DataSource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;



import com.epps.study.customer.service.CustomerService;
import com.epps.study.user.vo.UserVO;


@Controller
public class MainController {

	@Resource(name="customerService")
	CustomerService customerService;
	
	@Inject
	private DataSource dataSource;
	
    @RequestMapping(value = "/main.do")
    public String main(HttpServletRequest request, HttpSession session, UserVO userVO) throws Exception{
    	
    	/*
    	// 세션관리 추가 2022-11-24
    	session.setAttribute("_UserInfo", userVO);
		userVO = (UserVO)session.getAttribute("_UserInfo");
		String username = userVO.getUsername();
		System.out.println("session username : " +username);
		
			if(username == null) 
				{
				return "./index";
				}
		*/
    	
    	try(Connection conn = dataSource.getConnection()) { // DBCP   
    		
    		System.out.println("DB 연결 성공 : " +conn);    		
    		
    		
    		
    		
    	}catch (Exception e) {
    		
    		System.out.println(e.getMessage());
    		System.out.println("DB 실패");
    		Connection conn = dataSource.getConnection();
    		conn.close();
}

        return "/view/main/main";
    }
    
    @RequestMapping(value="/pop_up_test.do")
    public String pop_up_test() throws Exception{
    	System.out.println("pop_up_test page");
    	 return "/view/Pop_up_test";
    }
    
    @RequestMapping(value="/less_test.do")
    public String less_test() throws Exception{
    	System.out.println("less page");
    	 return "/view/less";
    }
    
    
}


