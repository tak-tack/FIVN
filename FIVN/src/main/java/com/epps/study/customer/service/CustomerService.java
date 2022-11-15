package com.epps.study.customer.service;

import java.util.List;
import java.util.Map;

import com.epps.study.customer.vo.CustomerVO;

public interface CustomerService {
	
	Map<String, Object> selectCustomerList(CustomerVO customerVO) throws Exception;
	
	Map<String, Object> selectCustomer(CustomerVO customerVO) throws Exception;

	CustomerVO insertCustomer(CustomerVO customerVO) throws Exception;
	
	CustomerVO deleteCustomer(CustomerVO customerVO) throws Exception;
	
	CustomerVO updateCustomer(CustomerVO customerVO) throws Exception;
	
	List<CustomerVO> visit_list(CustomerVO customerVO)  throws Exception;

	
	
}
