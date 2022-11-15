<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
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

<link rel="stylesheet"  href="/css/customer/popup.css">
<meta charset="EUC-KR">
<link href="css/customer/popup.css" rel="stylesheet">
<link rel="icon" href="data:;base64,iVBORw0KGgo=">
<title></title>

</head>

<body>
	
	<!-- popup_start -->
	<div class="pop_inner">
		
    	<ul class="tabnav">
      		<li><a href="#tab01">����</a></li>
	     	<li><a href="#tab02">����</a></li>
	     	<li><a href="#tab03">�湮�̷�</a></li>
      		<li><a href="#tab04">�޸�</a></li>
    	</ul>
		<div class="tabcontent">
  
		<table id="tab01" style="padding:0px; table-layout: fixed;  height: auto; !important">	 

				<tr>
					<td valign="top"><div class="mainstance">�����ȣ</div></td>
					<td valign="top"><div class="substance"><c:out value="${customerCar_information_number}"/></div></td>
				</tr>
				
				<tr>
					<td valign="top"><div class="mainstance">����</div></td>
					<td valign="top"><div class="substance"><c:out value="${customerCar_characteristic}"/></div></td>
				</tr>
						
	 			<tr>
					<td valign="top"><div class="mainstance">������</div></td>
					<td valign="top"><div class="substance" ><c:out value="${car_production_date}"/></div></td>
				</tr>
				
			 	<tr>
					<td valign="top"><div class="mainstance">�ٵ�����</div></td>
					<td valign="top"><div class="substance"><c:out value="${car_weight}"/></div></td>
				</tr>
		</table>
		<table id="tab02" style="padding:0px; table-layout: fixed;  height: auto; !important">

				<tr>
					<td valign="top" colspan="2"><div class="mainstance">�������� ���� ����</div></td>
					<td valign="top"><div class="substance" >�������� ���� ����</div></td>

				</tr>
								

	 		
		</table>
		
		<table class = "visitable" id="tab03" style="padding:0px; table-layout: fixed;  height: auto; !important">	 
				
				<thead>
				
					<tr style ="text-align: center;">
						
						<th>�湮��¥</th>
									
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
					<td colspan="2"	style="height: 100px text"><div class="substance">
					${memo}
					</div></td>
				</tr>
		</table>
		
			</div>
			
				<button type="button" class="button button--winona button--border-thin button--round-s" onclick="popup_close()">
				<span>�ݱ�</span>
				</button>
			
		</div>
		<!-- popup End -->
		
		

	<script src="https://code.jquery.com/jquery-3.4.1.js"></script>
	    <script src="js/customer/popup.js"></script>
</body>  
</html>