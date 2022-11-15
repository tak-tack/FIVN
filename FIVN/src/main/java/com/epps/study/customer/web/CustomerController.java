package com.epps.study.customer.web;

import java.sql.Connection;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;
import java.util.List;


import javax.sql.DataSource;
import javax.annotation.Resource;
import javax.inject.Inject;
import javax.persistence.metamodel.SetAttribute;
import javax.servlet.http.HttpServletRequest;

import org.springframework.ui.ModelMap;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import org.springframework.web.bind.annotation.ModelAttribute;


import com.epps.study.customer.service.CustomerService;
import com.epps.study.customer.vo.CustomerVO;


import egovframework.rte.ptl.mvc.tags.ui.pagination.PaginationInfo;

@Controller
public class CustomerController {
	
	static String Keyword;
	static String Selecttype;
	
	@Resource(name="customerService")
	CustomerService customerService;
	
	@Inject
	private DataSource dataSource;
	
	/* 고객 정보 전체 리스트 */
	// 고객 정보 찾기
    @RequestMapping(value = "/list.do"/*, method = RequestMethod.POST*/)
    public String customerlist( @ModelAttribute("customerVO") CustomerVO customerVO, HttpServletRequest request, ModelMap model) throws Exception{
    	
    	try(Connection conn = dataSource.getConnection()) { // DBCP


    		
    		System.out.println("DB 연결 성공 : " +conn);
    
    	
    	/*PaginationInfo 상속 받아 둔걸 이용한다.*/
    	
    	PaginationInfo paginationInfo = new PaginationInfo();
    	paginationInfo.setRecordCountPerPage(customerVO.getRecordCountPerPage());
    	paginationInfo.setCurrentPageNo(customerVO.getCurrentPageNo());
    	paginationInfo.setPageSize(customerVO.getPageSize());
    	
    	Map<String, Object> map = customerService.selectCustomerList(customerVO);
    	paginationInfo.setTotalRecordCount((Integer) map.get("totalRecordCount"));
    	model.addAttribute("resultList", map.get("resultList"));
    	model.addAttribute("paginationInfo",  paginationInfo);   
    	
    	

    	request.setAttribute("total", (Integer) map.get("totalRecordCount"));
    	System.out.println("고객 총합 : "+(Integer) map.get("totalRecordCount"));
    	
    
	}catch (Exception e) {
		System.out.println(e.getMessage());
		System.out.println("DB 실패");
		Connection conn = dataSource.getConnection();
		conn.close();
	}
	
        return "/view/customer/list/list";
    }
    
    
    /* 고객 검색 */
    // 고객 검색 후 찾기
    @RequestMapping(value = "/selectCustomer.do", method = RequestMethod.POST)
    public String selectCustomer(HttpServletRequest request,@ModelAttribute("customerVO") CustomerVO customerVO, ModelMap model) throws Exception{
    	try(Connection conn = dataSource.getConnection()) { // DBCP

    	     System.out.println("DB 연결 성공 : " +conn);
    	     
    	String Keyword = request.getParameter("keyword");
    	String Selecttype = request.getParameter("selecttype");
    	System.out.println("selectCustomer");
    	System.out.println("검색결과 : " + Keyword);
    	System.out.println("selecttype : " + Selecttype);
    		
    	
    	/*PaginationInfo 상속 받아 둔걸 이용한다.*/
    	
    	PaginationInfo paginationInfo = new PaginationInfo();
    	paginationInfo.setRecordCountPerPage(customerVO.getRecordCountPerPage());
    	paginationInfo.setCurrentPageNo(customerVO.getCurrentPageNo());
    	paginationInfo.setPageSize(customerVO.getPageSize());
    	
    	Map<String, Object> map = customerService.selectCustomer(customerVO);
    	paginationInfo.setTotalRecordCount((Integer) map.get("RecordCount"));
    	model.addAttribute("result", map.get("result"));
    	model.addAttribute("paginationInfo",  paginationInfo);   
    	
    	
    	request.setAttribute("total", (Integer) map.get("RecordCount"));
    	System.out.println("고객 총합 : "+ (Integer) map.get("RecordCount"));
    	
    	


    	
    	}catch (Exception e) {
    		 System.out.println(e.getMessage());
    		 System.out.println("DB 실패");
     		Connection conn = dataSource.getConnection();
     		conn.close();
    		}
    	
    	return "/view/customer/select/SelectCustomer";
    }
    
    
    /* 고객 입력 */
    // 고객 정보 입력을 위한 입력 화면
	@RequestMapping(value="/insertCustomerform.do")
	public String insertCustomerform(@ModelAttribute("customerVO") CustomerVO customerVO, ModelMap model, RedirectAttributes rttr,HttpServletRequest request) throws Exception{
		
    	try(Connection conn = dataSource.getConnection()) { // DBCP    		
    		System.out.println("DB 연결 성공 : " +conn);
    		
    	}catch (Exception e) {
    		System.out.println(e.getMessage());
    		System.out.println("DB 실패");
    		Connection conn = dataSource.getConnection();
    		conn.close();
    	}
		
		return "/view/customer/insert/InsertCustomer";
	}
	
	
	// 고객 정보 입력
	@RequestMapping(value="/insertCustomer.do")
	public String insertCustomer(@ModelAttribute("customerVO") CustomerVO customerVO, ModelMap model, RedirectAttributes rttr,HttpServletRequest request) throws Exception{
		
    	try(Connection conn = dataSource.getConnection()) { // DBCP

   	     System.out.println("DB 연결 성공 : " +conn);
   	     
		String Name = request.getParameter("customerCustomer_name");
		
    	System.out.println("insertCustomer");
    	System.out.println("고객 이름 : " + Name);

    	    	
		model.addAttribute("result", customerService.insertCustomer(customerVO));
		rttr.addFlashAttribute("customerVO", customerVO);
    	
	
    	Map<String, Object> map = customerService.selectCustomerList(customerVO);
    	model.addAttribute("resultList", map.get("resultList"));
    	
    	
    	/*PaginationInfo 상속 받아 둔걸 이용한다.*/
    	
    	PaginationInfo paginationInfo = new PaginationInfo();
    	paginationInfo.setRecordCountPerPage(customerVO.getRecordCountPerPage());
    	paginationInfo.setCurrentPageNo(customerVO.getCurrentPageNo());
    	paginationInfo.setPageSize(customerVO.getPageSize());
    	

    	paginationInfo.setTotalRecordCount((Integer) map.get("totalRecordCount"));
    	model.addAttribute("resultList", map.get("resultList"));
    	model.addAttribute("paginationInfo",  paginationInfo);    
    	
    	}catch (Exception e) {
    		 System.out.println(e.getMessage());
    		 System.out.println("DB 실패");
     		Connection conn = dataSource.getConnection();
     		conn.close();
    		}
    	
		return "/view/customer/list/list";
	}
	
	
	
	/* 고객 삭제 */
    // 고객 정보 삭제을 위한 입력 화면
	@RequestMapping(value="/deleteCustomerform.do")
	public String deleteCustomerform(@ModelAttribute("customerVO") CustomerVO customerVO, ModelMap model, RedirectAttributes rttr,HttpServletRequest request) throws Exception{
    	try(Connection conn = dataSource.getConnection()) { // DBCP    		
    		System.out.println("DB 연결 성공 : " +conn);
    		
    		
    		    	}catch (Exception e) {
    		 System.out.println(e.getMessage());
    		 System.out.println("DB 실패");
     		Connection conn = dataSource.getConnection();
     		conn.close();
    		}
    		
		
		return "/view/customer/delete/DeleteCustomerform";
	}
	
	
	// 고객정보를 수정위한 데이터 입력 후 고객 데이터 화면
	@RequestMapping(value="/deleteCustomerimpromationform.do")
	public String deleteCustomerimpromationform(@ModelAttribute("customerVO") CustomerVO customerVO, ModelMap model, RedirectAttributes rttr,HttpServletRequest request) throws Exception{
		
		try(Connection conn = dataSource.getConnection()) { // DBCP
    	
    	
		CustomerController.Keyword = request.getParameter("keyword");
		CustomerController.Selecttype = request.getParameter("selecttype");
    	
		String keyword = CustomerController.Keyword;
    	String selecttype = CustomerController.Selecttype;
		
    	request.setAttribute("keyword", keyword);
    	request.setAttribute("selecttype", selecttype);
    	
    	System.out.println("deleteCustomerimpromationform");
    	System.out.println("키워드 : "+keyword);
    	System.out.println("설정타입 : "+selecttype);
    	
    	// 고객정보 출력을 위한 인스턴스화
    	Map<String, Object> map = customerService.selectCustomer(customerVO); 
    	
    	model.addAttribute("result", map.get("result"));
    	
    	
    	request.setAttribute("total", (Integer) map.get("RecordCount"));
    	System.out.println("고객 총합 : "+ (Integer) map.get("RecordCount"));
    	
    	
		}catch (Exception e) {
			 System.out.println(e.getMessage());
			 System.out.println("DB 실패");
	    		Connection conn = dataSource.getConnection();
	    		conn.close();
			}
		
		return "/view/customer/delete/DeleteCustomer";
	}
	
	
    // 고객 정보 삭제
	@RequestMapping(value="/deleteCustomer.do")
	public String deleteCustomer(@ModelAttribute("customerVO") CustomerVO customerVO, ModelMap model, RedirectAttributes rttr,HttpServletRequest request) throws Exception{
		
		
		   try(Connection conn = dataSource.getConnection()) { // DBCP
			   
		   
		model.addAttribute("result", customerService.deleteCustomer(customerVO));
		rttr.addFlashAttribute("customerVO", customerVO);
		
		String keyword = CustomerController.Keyword;
    	String selecttype = CustomerController.Selecttype;
    	request.setAttribute("keyword", keyword);
    	request.setAttribute("selecttype", selecttype);
    	
    	
    	// 고객정보 출력을 위한 인스턴스화
    	Map<String, Object> map = customerService.selectCustomer(customerVO); 
    	
    	model.addAttribute("result", map.get("result"));
    	
    	
    	request.setAttribute("total", (Integer) map.get("RecordCount"));
    	System.out.println("고객 총합 : "+ (Integer) map.get("RecordCount"));
    	
    	
    	System.out.println("deleteCustomer");
    	System.out.println("키워드 : " + keyword);
    	System.out.println("설정타입 : " + selecttype);
    	
		   }catch (Exception e) {
			   System.out.println(e.getMessage());
			   System.out.println("DB 실패");
	    		Connection conn = dataSource.getConnection();
	    		conn.close();
			  }
		
		return "/view/customer/delete/DeleteCustomer";
	}
	
	
	
	
	/* 고객 수정 */
    // 고객 정보 수정을 위한 데이터 입력 화면
	@RequestMapping(value="/updateCustomerform.do")
	public String updateCustomerform(@ModelAttribute("customerVO") CustomerVO customerVO, ModelMap model, RedirectAttributes rttr,HttpServletRequest request) throws Exception{
    	try(Connection conn = dataSource.getConnection()) { // DBCP    		
    		System.out.println("DB 연결 성공 : " +conn);
    		
    		
    		    	}catch (Exception e) {
    		 System.out.println(e.getMessage());
    		 System.out.println("DB 실패");
     		Connection conn = dataSource.getConnection();
     		conn.close();
    		}
    		
		
		return "/view/customer/update/UpdateCustomerform";
	}
	
	
	// 고객정보를 수정위한 데이터 입력 후 고객 데이터 화면
	@RequestMapping(value="/updateCustomerimpromationform.do")
	public String updateCustomerimpromationform(@ModelAttribute("customerVO") CustomerVO customerVO, ModelMap model, RedirectAttributes rttr,HttpServletRequest request) throws Exception{
		
		 try(Connection conn = dataSource.getConnection()) { // DBCP
		
		CustomerController.Keyword = request.getParameter("keyword");
		CustomerController.Selecttype = request.getParameter("selecttype");
    	
		String keyword = CustomerController.Keyword;
    	String selecttype = CustomerController.Selecttype;
		
    	request.setAttribute("keyword", keyword);
    	request.setAttribute("selecttype", selecttype);
    	
    	System.out.println("updateCustomerimpromationform");
    	System.out.println("키워드 : "+keyword);
    	System.out.println("설정타입 : "+selecttype);
    	
    	// 고객정보 출력을 위한 인스턴스화
    	Map<String, Object> map = customerService.selectCustomer(customerVO); 
    	
    	model.addAttribute("result", map.get("result"));
    	
    	
    	request.setAttribute("total", (Integer) map.get("RecordCount"));
    	System.out.println("고객 총합 : "+ (Integer) map.get("RecordCount"));
    	
		 }catch (Exception e) {
			 System.out.println(e.getMessage());
			 System.out.println("DB 실패");
	    		Connection conn = dataSource.getConnection();
	    		conn.close();
			}
		 
		return "/view/customer/update/UpdateCustomer";
	}
	
	
    // 고객 정보 수정
	@RequestMapping(value="/updateCustomer.do")
	public String updateCustomer(@ModelAttribute("customerVO") CustomerVO customerVO, ModelMap model, RedirectAttributes rttr,HttpServletRequest request) throws Exception{
		
		try(Connection conn = dataSource.getConnection()) { // DBCP
			
			
		
		model.addAttribute("result", customerService.updateCustomer(customerVO));// jsp에 forEach 문 사용하기 위해 result 이름으로 객체 저장

    	String Name = request.getParameter("customerCustomer_name");
    	String customerCar_information_number = request.getParameter("customerCar_information_number");
    	String customerPhone_number_1 = request.getParameter("customerPhone_number_1");
    	String customerVisit_day = request.getParameter("customerVisit_day");
		String memo = request.getParameter("memo"); 
    
    	String keyword = CustomerController.Keyword;
    	String selecttype = CustomerController.Selecttype;
    	request.setAttribute("keyword", keyword);
    	request.setAttribute("selecttype", selecttype);
    	
    	
    	System.out.println("updatecustomer");
    	System.out.println("키워드 : " + keyword);
    	System.out.println("설정타입 : " + selecttype);
    	System.out.println("고객 이름 : " + Name);
    	System.out.println("고객 차대번호 : " + customerCar_information_number);
    	System.out.println("고객 전화번호 : " + customerPhone_number_1);
    	System.out.println("고객 방문날짜 : " + customerVisit_day);
    	System.out.println("고객 메모 : " + memo);
    	
    	// 고객정보 출력을 위한 인스턴스화
    	Map<String, Object> map = customerService.selectCustomer(customerVO); 
    	
    	model.addAttribute("result", map.get("result"));
    	
    	
    	request.setAttribute("total", (Integer) map.get("RecordCount"));
    	System.out.println("고객 총합 : "+ (Integer) map.get("RecordCount"));
    	
    	
    	
		}catch (Exception e) {
			 System.out.println(e.getMessage());
			 System.out.println("DB 실패");
	    		Connection conn = dataSource.getConnection();
	    		conn.close();
			}
    	
    	
		return "/view/customer/update/UpdateCustomer";
	}
	/*	
	// 고객 수정 
    // 고객 정보 수정을 위한 팝업
	@RequestMapping(value="/updateCustomerPopup.do")
	public String updateCustomerPopup(@ModelAttribute("customerVO") CustomerVO customerVO, ModelMap model, RedirectAttributes rttr,HttpServletRequest request) throws Exception{
    	try(Connection conn = dataSource.getConnection()) { // DBCP    		
    		System.out.println("DB 연결 성공 : " +conn);
    		
    		
    		    	}catch (Exception e) {
    		 System.out.println(e.getMessage());
    		 System.out.println("DB 실패");
     		Connection conn = dataSource.getConnection();
     		conn.close();
    		}
    		
		
		return "/view/customer/update/UpdateCustomerPopup";
	}
*/
	
	
    @RequestMapping(value ="/popup.do")
    public String popup(HttpServletRequest request,@ModelAttribute("customerVO") CustomerVO customerVO, ModelMap model) throws Exception{
    	
    	try(Connection conn = dataSource.getConnection()) { // DBCP    		
    		System.out.println("DB 연결 성공 : " +conn);
    	
    	PaginationInfo paginationInfo = new PaginationInfo();
    	paginationInfo.setRecordCountPerPage(customerVO.getRecordCountPerPage());
    	paginationInfo.setCurrentPageNo(customerVO.getCurrentPageNo());
    	paginationInfo.setPageSize(customerVO.getPageSize());
    	
    	Map<String, Object> map = customerService.selectCustomer(customerVO);
    	paginationInfo.setTotalRecordCount((Integer) map.get("RecordCount"));
    	model.addAttribute("result", map.get("result"));
    	model.addAttribute("paginationInfo",  paginationInfo);   
    	
    	
    	String customerCustomer_name = request.getParameter("customerCustomer_name");
    	String customerCar_information_number = request.getParameter("customerCar_information_number");
    	String customerCar_characteristic = request.getParameter("customerCar_characteristic");
    	String car_production_date = request.getParameter("car_production_date");
    	String car_weight = request.getParameter("car_weight");
    	String customerCar_number = request.getParameter("customerCar_number");
    	String memo = request.getParameter("memo");
    	
    	
    	
    	request.setAttribute("customerCustomer_name", customerCustomer_name); 
    	request.setAttribute("customerCar_information_number", customerCar_information_number);  
    	request.setAttribute("customerCar_characteristic", customerCar_characteristic);  
    	request.setAttribute("car_production_date", car_production_date);  
    	request.setAttribute("car_weight", car_weight);  
    	request.setAttribute("customerCar_number", customerCar_number);  
    	request.setAttribute("memo", memo);  
    	System.out.println("memo : "+memo);


    	// 방문이력 조회용
    	List <CustomerVO> visit_list = customerService.visit_list(customerVO);
    	request.setAttribute("visit_list", visit_list); 

    	
    	}catch (Exception e) {
    		System.out.println(e.getMessage());
    		System.out.println("DB 실패");
    		Connection conn = dataSource.getConnection();
    		conn.close();
    						}
    	
    	return "/view/Pop_up_test";
    
    
    }
    
    @RequestMapping(value ="/UpdateCustomerPopup.do")
    public String UpdateCustomerPopup(HttpServletRequest request,@ModelAttribute("customerVO") CustomerVO customerVO, ModelMap model) throws Exception{
    	
    	try(Connection conn = dataSource.getConnection()) { // DBCP    		
    		System.out.println("DB 연결 성공 : " +conn);
    	
    	PaginationInfo paginationInfo = new PaginationInfo();
    	paginationInfo.setRecordCountPerPage(customerVO.getRecordCountPerPage());
    	paginationInfo.setCurrentPageNo(customerVO.getCurrentPageNo());
    	paginationInfo.setPageSize(customerVO.getPageSize());
    	
    	Map<String, Object> map = customerService.selectCustomer(customerVO);
    	paginationInfo.setTotalRecordCount((Integer) map.get("RecordCount"));
    	model.addAttribute("result", map.get("result"));
    	model.addAttribute("paginationInfo",  paginationInfo);   
    	
    	
    	String customerCustomer_name = request.getParameter("customerCustomer_name");
    	String customerCar_information_number = request.getParameter("customerCar_information_number");
    	String customerCar_characteristic = request.getParameter("customerCar_characteristic");
    	String car_production_date = request.getParameter("car_production_date");
    	String car_weight = request.getParameter("car_weight");
    	String customerCar_number = request.getParameter("customerCar_number");
    	String memo = request.getParameter("memo");
    	
    	
    	
    	request.setAttribute("customerCustomer_name", customerCustomer_name); 
    	request.setAttribute("customerCar_information_number", customerCar_information_number);  
    	request.setAttribute("customerCar_characteristic", customerCar_characteristic);  
    	request.setAttribute("car_production_date", car_production_date);  
    	request.setAttribute("car_weight", car_weight);  
    	request.setAttribute("customerCar_number", customerCar_number);  
    	request.setAttribute("memo", memo);  
    	System.out.println("memo : "+memo);
    	System.out.println("업데이트팝업");


    	// 방문이력 조회용
    	List <CustomerVO> visit_list = customerService.visit_list(customerVO);
    	request.setAttribute("visit_list", visit_list); 

    	
    	}catch (Exception e) {
    		System.out.println(e.getMessage());
    		System.out.println("DB 실패");
    		Connection conn = dataSource.getConnection();
    		conn.close();
    						}
    	
    	return "/view/customer/update/UpdateCustomerPopup";
    
    
    }
    
    
 }


