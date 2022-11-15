package com.epps.study.customer.vo;

import egovframework.rte.ptl.mvc.tags.ui.pagination.PaginationInfo;
import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

import java.text.SimpleDateFormat;
import java.util.Date;

@Setter
@Getter
@ToString
public class CustomerVO extends PaginationInfo{
		
	public CustomerVO() {
		this.setCurrentPageNo(1);
		this.setRecordCountPerPage(50);
		this.setPageSize(10);
	}
	
	//검색을 위한 select option 변수
	private String selecttype;
	
	private String keyword;
	
	
	
	// 고객정보
	private String customerCustomer_name;
	
	private String customerCar_information_number;
	
	private String customerCar_number;
	
	private String customerCar_characteristic;
	
	
	private Date customerVisit_day_sample = new Date();
	SimpleDateFormat formatter = new SimpleDateFormat("yyy-mm-dd");	
	private String customerVisit_day = formatter.format(customerVisit_day_sample); // date
	
	private String customerPhone_number;
	
	private String car_production_date;
	
	private String car_weight;

	private int customer_index;
	
	private String memo;

	
	

}
