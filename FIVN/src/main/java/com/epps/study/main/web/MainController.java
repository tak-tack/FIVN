package com.epps.study.main.web;

import java.util.List;
import java.io.Console;
import java.sql.Connection;
import javax.annotation.Resource;
import javax.inject.Inject;
import javax.sql.DataSource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;



import com.epps.study.customer.service.CustomerService;
import com.epps.study.customer.vo.CustomerVO;


@Controller
public class MainController {

	@Resource(name="customerService")
	CustomerService customerService;
	
	@Inject
	private DataSource dataSource;
	
    @RequestMapping(value = "/main.do")
    public String main(HttpServletRequest request) throws Exception{
    	
    	
    	try(Connection conn = dataSource.getConnection()) { // DBCP    	
    		
    		System.out.println("DB 연결 성공 : " +conn);    		
    	//CustomerVO vo = new CustomerVO();   	
    	//List<CustomerVO> value = customerService.selectCustomer(vo);   	
    	//System.out.println("테스트"+value);    	
    		String usrname = request.getParameter("username");
    		
    		System.out.println("usrname : " + usrname);
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


