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

<title>Daesan</title>
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
			

      <table class="table table-striped" style="margin-bottom:0rem;">

							<thead>
								<tr>
									<th style="width: 100px;">고객이름</th>
									<th style="width: 200px;">차대번호</th>
									<th style="width: 100px;">차량번호</th>
									<th style="width: 200px;">차종</th>
									<th style="width: 200px;">전화번호</th>			
									<th style="width: 200px;">생산일</th>
									<th style="width: 200px;">바디형식</th>		
									<th style="width: 200px;">메모</th>		
									
								</tr>
							</thead>
							<tbody>
							<tr></tr>	
							</tbody>		
							
		</table>
							
									<form name="testForm">
								      <table name="tableStaff" style="margin-bottom:0rem;">
							  			
										</table>

									</form>
									
							
					<button type="button" class="button button--winona button--border-thin button--round-s middle" style="margin : 10px;" name="InsertLine"><span style = "padding:0px;">추가</span></button>
		<button type="button" class="button button--winona button--border-thin button--round-s middle" style="margin : 10px;"  name="insert"><span style = "padding:0px;">등록</span></button>	
			

    </div>
    <!-- /#page-content-wrapper -->


  </div>
  <!-- /#wrapper -->



<script src="js/customer/customerform.js"></script>

  <c:import charEncoding="UTF-8" url="/WEB-INF/jsp/view/layout/footer.jsp" />
</body>
</html>