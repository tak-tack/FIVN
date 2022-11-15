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

  <!-- Custom styles for this template -->
  <link href="css/simple-sidebar.css" rel="stylesheet">


  <link rel="stylesheet" type="text/css" href="./css/SearchBar.css">
<link href="./css/pushy-buttons.css" rel="stylesheet">

</head>


<body>

  <div class="d-flex" id="flexbox_list">


    <c:import charEncoding="UTF-8" url="/WEB-INF/jsp/view/layout/sidemenu.jsp" />
    <!-- /#sidebar-wrapper -->

    <!-- Page Content -->
    <div id="page-content-wrapper">

      <c:import charEncoding="UTF-8"
			url="/WEB-INF/jsp/view/layout/header.jsp" />



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
									<th>바디형식</th>
									<th>메모</th>

								</tr>
							</thead>

							<tbody>
								 <c:forEach items="${result}" var="val" varStatus="status">

							  		<tr>

								  	<td><input type="text" name="customerCustomer_name" id="customerCustomer_name" size="10" value = "${val.customerCustomer_name}" style = "width:100px; height: 25px;" required></td>
										<td><input type="text" name="customerCar_information_number" id="customerCar_information_number" size="10" value="${val.customerCar_information_number}"  style = "width:200px; height: 25px;" required></td>
										<td><input type="text" name="customerCar_number" id="customerCar_number" size="10" value="${val.customerCar_number}"  style = "width:100px; height: 25px;" required></td>
										<td><input type="text" name="customerCar_characteristic" id = "customerCar_characteristic" size="10" value="${val.customerCar_characteristic}"  style = "width:200px; height: 25px;" required></td>
										<td><input type="text" name="customerVisit_day" id = "customerVisit_day" size="10" value="${val.customerVisit_day}"  style = "width:200px; height: 25px;" required></td>
										<td><input type="text" name="customerPhone_number" id = "customerPhone_number" size="10" value="${val.customerPhone_number}"  style = "width:200px; height: 25px;" required></td>
										<td><input type="text" name="car_production_date" id = "car_production_date" size="10" value="${val.car_production_date}"  style = "width:200px; height: 25px;" required></td>
										<td><input type="text" name="car_weight" id = "car_weight" size="10" value="${val.car_weight}"  style = "width:200px; height: 25px;" required></td>
										<td><input type="text" name="memo" id = "memo" size="10" value="${val.memo}"  style = "width:200px; height: 25px;" required ></td>
										<td><input type="hidden" name="customer_index" id = "customer_index"  value="${val.customer_index}"/>
										<td><input type="hidden" name="keyword" id = "keyword"  value="${keyword}"/>
										<td><input type="hidden" name="selecttype" id = "selecttype"  value="${selecttype}"/>

										
										<input type="hidden" name=customerCustomer_name${status.index} value="${val.customerCustomer_name}"/>
										<input type="hidden" name=customerCar_information_number${status.index}  value="${val.customerCar_information_number}"/>
										<input type="hidden" name=customerCar_number${status.index} value="${val.customerCar_number}"/>
										<input type="hidden" name=customerCar_characteristic${status.index} value="${val.customerCar_characteristic}"/>
										<input type="hidden" name=customerVisit_day${status.index} value="${val.customerVisit_day}"/>
										<input type="hidden" name=customerPhone_number${status.index} value="${val.customerPhone_number}"/>
										<input type="hidden" name=car_production_date${status.index}  value="${val.car_production_date}"/>
										<input type="hidden" name=car_weight${status.index}  value="${val.car_weight}"/>
										<input type="hidden" name=memo${status.index}  value="${val.memo}"/>
										<input type="hidden" name=customer_index${status.index} value="${val.customer_index}"/>
										
										<input type="button" value="수정" class="pushy__btn pushy__btn--sm pushy__btn--blue" onclick="
										updatecustomer(
										customerCustomer_name,
										customerCar_information_number,
										customerCar_number,
										customerCar_characteristic,
										customerVisit_day,
										customerPhone_number,
										car_production_date,
										car_weight,
										customer_index ,
										memo ,
										${status.index})"/></td>

									</tr>

								</c:forEach>

							</tbody>

		</table>




    </div>
    <!-- /#page-content-wrapper -->

  </div>
  <!-- /#wrapper -->

  <!-- Bootstrap core JavaScript -->
  <script src="vendor/jquery/jquery.min.js"></script>
  <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

<!-- 업데이트 기능 js 호출 -->
<script src="js/customer/customerform.js"></script>

  <c:import charEncoding="UTF-8" url="/WEB-INF/jsp/view/layout/footer.jsp" />
</body>
</html>
