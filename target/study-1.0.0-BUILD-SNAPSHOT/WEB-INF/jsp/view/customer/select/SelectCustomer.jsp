<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="ui" uri="http://egovframework.gov/ctl/ui"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ page import="java.sql.*"%>

<!DOCTYPE html>
<html>
<head>

<title>DAESAN</title>
<meta charset="EUC-KR" />
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<link rel="icon" href="data:;base64,iVBORw0KGgo="> 
<script type="text/javascript">
	function fn_linkPage(pageNo) {
		location.href = "/list.do?CurrentPageNo=" + pageNo;
	}
</script>
<link href="css/customer/popup.css" rel="stylesheet">

</head>
<body>

	<div class="d-flex" id="wrapper">


		<c:import charEncoding="UTF-8"
			url="/WEB-INF/jsp/view/layout/sidemenu.jsp" />

		<div class="flexbox_list">
		

					<c:import charEncoding="UTF-8"
			url="/WEB-INF/jsp/view/layout/header.jsp" />

			<div style="margin: 10px">조회된 고객은 총 ${total} 명 입니다.</div>
			
				<table class="table table-striped">

							<thead>
								<tr style ="text-align: center;">
									<th>고객이름</th>
									<th>차대번호</th>
									<th>차량번호</th>
									<th>전화번호</th>
									<th>방문날짜</th>		
									<th>메모</th>				
								</tr>
							</thead>
							
							<tbody>
								<c:forEach items="${result}" var="val" varStatus="status">
							  		<tr  class="OpenSelectPopup">
								  		<td id = "customerCustomer_name">${val.customerCustomer_name}</td>
										<td>${val.customerCar_information_number}</td>
										<td>${val.customerCar_number}</td>
										<td style=" display: none;">${val.customerCar_characteristic}</td>
										<td>${val.customerPhone_number}</td>
										<td>${val.customerVisit_day}</td>
										<td style=" display: none;">${val.car_production_date}</td>
										<td style=" display: none;">${val.car_weight}</td>
										<td style=" display: none;">${val.customer_index}</td>
										<td style=" display: none;">${val.memo}</td>
										
										
										<td style="text-align: center;">

													<!-- 메모 유무의 따른 버튼 변경 조건 -->
												<c:choose> 
													<c:when test="${not empty val.memo}">
														<img src="../images/체크박스.jfif" width="20" height="20">
													</c:when>
		
													<c:otherwise>
														
													</c:otherwise>
												</c:choose>
											
										</td>
									</tr>

								</c:forEach>
						</tbody>
				</table>
		</div>
	</div>
	<c:import charEncoding="UTF-8"
		url="/WEB-INF/jsp/view/layout/footer.jsp" />
	<script src="https://code.jquery.com/jquery-3.4.1.js"></script>
	<script src="js/customer/open_popup.js"></script>
</body>
</html>