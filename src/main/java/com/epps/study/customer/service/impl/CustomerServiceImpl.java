package com.epps.study.customer.service.impl;


import java.util.ArrayList;
//import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
//import javax.servlet.http.HttpServletRequest;

//import org.apache.ibatis.session.SqlSessionFactory;
//import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.epps.study.customer.service.CustomerService;
import com.epps.study.customer.vo.CustomerVO;
import com.sqlmap.study.mappers.CustomerMapper;


import egovframework.rte.fdl.cmmn.EgovAbstractServiceImpl;


import lombok.extern.log4j.Log4j;


@Service("customerService")
@Log4j
public class CustomerServiceImpl extends EgovAbstractServiceImpl implements CustomerService{

	
	// TODO mybatis
	@Resource(name = "customerMapper")
	private CustomerMapper customerMapper;
	
		
	@Override
	public Map<String, Object> selectCustomerList(CustomerVO vo) throws Exception {
		// 전체 고객 정보 조회
		List<CustomerVO> result = customerMapper.selectCustomerList(vo);
		if(result == null) {
			throw processException("info.nodata.msg");
		}
		
		// 전체 데이터 수 조회
		int cut = customerMapper.selectCustomerListCntAll(vo);
		// controller 로 data를 전달할 Map
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("resultList", result);
		map.put("totalRecordCount", cut);
		
		
		return map;
	}
	
	 @Override
	public Map<String, Object> selectCustomer(CustomerVO vo) throws Exception {
		  	
		List<CustomerVO> result = customerMapper.selectCustomer(vo);
		
		if(result == null)
		{
			throw processException("info.nodata.msg");
		}
		
		// 전체 데이터 수 조회
		int cut = customerMapper.selectCustomerListCnt(vo);
		// controller 로 data를 전달할 Map
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("result", result);
		map.put("RecordCount", cut);
		
		return map;
	}
	 
	 @Override
	 public void insertCustomer(CustomerVO vo) throws Exception {
		 
	    	
		/* 
		//12-29 다중 isnet
		 List <CustomerVO> list = new ArrayList<CustomerVO>();
		 Map <String, Object>map = new HashMap<String, Object>();
		 map.put("list", list);
		 System.out.println("server에서 map의 크기: "+map.size());
		 */
		 customerMapper.insertCustomer(vo);
		 
		 
		
	 }
	 
	 @Override
	 public CustomerVO deleteCustomer(CustomerVO vo) throws Exception {
		 
		 CustomerVO customerVO = customerMapper.deleteCustomer(vo);
		 
		 return customerVO;
	 }
	 
	 @Override
	 public CustomerVO updateCustomer(CustomerVO vo) throws Exception {
		 
		 CustomerVO customerVO = customerMapper.updateCustomer(vo);
		 
		 return customerVO;
	 }

	 @Override
	 public CustomerVO updateCustomerMemo(CustomerVO vo) throws Exception {
		 
		 CustomerVO customerVO = customerMapper.updateCustomerMemo(vo);
		 
		 return customerVO;
	 }
	 
	 
	 @Override
	 public List<CustomerVO> visit_list(CustomerVO customerVO) throws Exception {
			// 방문날짜 리스트 조회
			List<CustomerVO> visit_list = customerMapper.visitday_list(customerVO);
			if(visit_list == null) {
				System.out.println("visit_list is NULL");
			}else {		
				if(visit_list.size()!=0) {
					System.out.println("sv에서 visit_list 값 : " + visit_list.get(0).toString());
				}else {
				System.out.println("sv에서 visit_list 크기은 0");
				}
			}
			return visit_list;
			
	 }
	 
	 
	 
}
