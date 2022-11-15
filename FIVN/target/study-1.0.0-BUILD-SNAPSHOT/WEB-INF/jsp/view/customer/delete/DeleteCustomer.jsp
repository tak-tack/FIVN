<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="ui" uri="http://egovframework.gov/ctl/ui"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ page import="java.sql.*"%>

<!DOCTYPE html>
<html>
<head>

<title>DAESAN</title>
  <meta charset="utf-8">

    <script	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
    
 <link rel="icon" href="data:;base64,iVBORw0KGgo="> 
  <!-- Bootstrap core CSS -->
  <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

<link href="./css/pushy-buttons.css" rel="stylesheet">
  <!-- Custom styles for this template -->
  <link href="css/simple-sidebar.css?ver=1" rel="stylesheet">

  <link rel="stylesheet" type="text/css" href="./css/SearchBar.css?ver=1">

</head>

<body>

  <div class="d-flex" id="wrapper">

 
    <c:import charEncoding="UTF-8" url="/WEB-INF/jsp/view/layout/sidemenu.jsp" />
    <!-- /#sidebar-wrapper -->

    <!-- Page Content -->
    <div id="page-content-wrapper">

      		<c:import charEncoding="UTF-8"
			url="/WEB-INF/jsp/view/layout/header.jsp" />
     
        <!--  <form action="<c:url value='/updateCustomer.do' />" >  -->
        
		<form>  
      <table class="table table-striped">

							<thead>
								<tr>
									<th>고객이름</th>
									<th>차대번호</th>
									<th>차량번호</th>
									<th>차종</th>
									<th>방문날짜</th>
									<th>전화번호</th>			
									<th>생산일</th>
									<th>바디 형식</th>	
									<th>메모</th>		
									<th></th>	
									<th></th>
								</tr>
							</thead>
							
							<tbody>
								 <c:forEach items="${result}" var="val" varStatus="status">
							  		<tr>
							  		
								  		<td id = "customerCustomer_name">${val.customerCustomer_name}</td>
										<td>${val.customerCar_information_number}</td>
										<td>${val.customerCar_number}</td>
										<td>${val.customerCar_characteristic}</td>
										<td>${val.customerVisit_day}</td>
										<td>${val.customerPhone_number}</td>
										<td>${val.car_production_date}</td>
										<td>${val.car_weight}</td>
										<td>${val.memo}</td>
										
										<td><input type="hidden" name="customer_index" id = "customer_index"  value="${val.customer_index}"/>
										<input type="hidden" name="keyword" id = "keyword"  value="${keyword}"/>
										<input type="hidden" name="selecttype" id = "selecttype"  value="${selecttype}"/>									
										<input type="hidden" name=customer_index${status.index} value="${val.customer_index}"/>
												
										<td>
										<button type="button" style = "min-width: 40px; height: 30px"
									class="button button--winona button--border-thin button--round-s" id="btn_open" onclick="
										deletecustomer(
										customer_index${status.index} , 
										${status.index})">
										<span style = "padding:0px;">삭제</span>
										</button>
										
										</td>
									
									</tr>
								</c:forEach>
							</tbody>
							
		</table>
			</form>  
			
     
      
    </div>
    <!-- /#page-content-wrapper -->

  </div>
  <!-- /#wrapper -->

  <!-- Bootstrap core JavaScript -->
  <script src="vendor/jquery/jquery.min.js"></script>
  <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

<!-- 삭제 기능 js 호출 -->
<script src="js/customer/customerform.js"></script>

  <c:import charEncoding="UTF-8" url="/WEB-INF/jsp/view/layout/footer.jsp" />
</body>
</html>