package com.sqlmap.study.mappers;

import java.util.List;
import java.util.Map;

import com.epps.study.customer.vo.CustomerVO;

import egovframework.rte.psl.dataaccess.mapper.Mapper;

@Mapper("customerMapper")
public interface CustomerMapper {
	
	// 고객 전체 조회
	List<CustomerVO> selectCustomerList(CustomerVO vo) throws Exception;
			
	// 고객 검색 조회
	List<CustomerVO> selectCustomer(CustomerVO vo) throws Exception;

	// 고객 조회(또는 검색) 갯수
	int selectCustomerListCnt(CustomerVO vo) throws Exception;
	
	//고객 전체(또는 검색) 조회 갯수
	int selectCustomerListCntAll(CustomerVO vo)throws Exception;
	
	// 고객 정보 삽입
	CustomerVO insertCustomer(CustomerVO vo) throws Exception;
	
	// 고객 정보 삭제
	CustomerVO deleteCustomer(CustomerVO vo) throws Exception;
	
	// 고객 정보 갱신
	CustomerVO updateCustomer(CustomerVO vo) throws Exception;
	
	
	CustomerVO updateCustomerMemo(CustomerVO vo) throws Exception;
	
	
	List<CustomerVO> visitday_list(CustomerVO vo) throws Exception;

}
