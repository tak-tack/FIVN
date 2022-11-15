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

<style type="text/css">
*{margin:0; padding:0;}
a{text-decoration:none;}
.wrap{padding:10px;}
</style>

<meta charset="EUC-KR">
<link href="css/customer/popup.css" rel="stylesheet">
<link rel="icon" href="data:;base64,iVBORw0KGgo=">
<title></title>

</head>

<body>
	
	<!-- popup_start -->
	<div class="pop_inner">
		
    	<ul class="tabnav">
      		<li><a href="#tab01"  class="tab1">차종</a></li>
	     	<li><a href="#tab02"  class="tab2">예약</a></li>
	     	<li><a href="#tab03" class="tab3">방문이력</a></li>
      		<li><a href="#tab04" class="tab4">메모</a></li>
    	</ul>
		<div class="tabcontent">
  
		<table id="tab01" style="padding:0px; table-layout: fixed;  height: auto; !important">	 

				<tr>
					<td valign="top"><div class="mainstance">차대번호</div></td>
					<td valign="top"><div class="substance"><c:out value="${customerCar_information_number}"/></div></td>
				</tr>
				
				<tr>
					<td valign="top"><div class="mainstance">차종</div></td>
					<td valign="top"><div class="substance"><c:out value="${customerCar_characteristic}"/></div></td>
				</tr>
						
	 			<tr>
					<td valign="top"><div class="mainstance">생산일</div></td>
					<td valign="top"><div class="substance" ><c:out value="${car_production_date}"/></div></td>
				</tr>
				
			 	<tr>
					<td valign="top"><div class="mainstance">바디형식</div></td>
					<td valign="top"><div class="substance"><c:out value="${car_weight}"/></div></td>
				</tr>
		</table>
		<table id="tab02" style="padding:0px; table-layout: fixed;  height: auto; !important">

				<tr>
					<td valign="top" colspan="2"><div class="mainstance">예약정보 넣을 예정</div></td>
					<td valign="top"><div class="substance" >예약정보 넣을 예정</div></td>

				</tr>
								

	 		
		</table>
		
		<table class = "visitable" id="tab03" style="padding:0px; table-layout: fixed;  height: auto; !important">	 
				
				<thead>
				
					<tr style ="text-align: center;">
						
						<th>방문날짜</th>
									
					</tr>
				</thead>
				
				<tbody>
					<c:forEach items="${visit_list}" var="val" varStatus="status">
			
						<tr>
							
							<td valign="top"><div class="substance">${val.customerVisit_day}</div></td>
						</tr>
					</c:forEach>
				</tbody>
		</table>
		
		<table id="tab04" style="padding:0px; table-layout: fixed;  height: auto; !important">	 

				
			 	<tr>
					<td colspan="2"	style="height: 100px text"><div class="substance" name="update_memo">${memo}</div></td>
				</tr>
		</table>
		
			</div>
			<div class="popup_button"></div>
				
			
		</div>
		<!-- popup End -->
		
		

	<script src="https://code.jquery.com/jquery-3.4.1.js"></script>
	    <script src="js/customer/popup.js"></script>
</body>  
</html>