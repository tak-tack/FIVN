<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="ui" uri="http://egovframework.gov/ctl/ui"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ page import="java.sql.*"%>
<%@ include file="../commonAttribute.jsp"%>
<!DOCTYPE html>
<html>
<head>
<title>main</title>
  <meta charset="utf-8">
  <meta name="description" content="">
  <meta name="author" content="">
  <title></title>
    <script	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
	<link href="css/simple-sidebar.css" rel="stylesheet">
	<link href="./css/SearchBar.css?after" type="text/css"  rel="stylesheet">
	<link href="./css/pushy-buttons.css" rel="stylesheet">
<link rel="icon" href="data:;base64,iVBORw0KGgo=">
</head>
<body>
<c:import charEncoding="UTF-8" url="/WEB-INF/jsp/view/LoadBootstrap.jsp" />
  <div class="d-flex" id="wrapper">

	<!-- /#sidebar-wrapper -->
    <c:import charEncoding="UTF-8" url="/WEB-INF/jsp/view/layout/sidemenu.jsp" />
    

    <!-- Page Content -->
    <div id="page-content-wrapper">

			<c:import charEncoding="UTF-8"
			url="/WEB-INF/jsp/view/layout/header.jsp" />

  <div class="search">
    <h1 class ="text-secondary">고객정보 찾기</h1>
    <h3 class ="text-secondary">고객 정보를 입력해주세요</h3>
    
    <form action="<c:url value='/selectCustomer.do' />" name = "selecttype" id = "form" method="post" accept-charset="UTF-8">     
    <c:import charEncoding="UTF-8" url="/WEB-INF/jsp/view/layout/customerseach.jsp" /> <!-- 검색기능 호출 -->    
    </form>
   
    
   </div>
     
    </div>
    <!-- /#page-content-wrapper -->

  <!-- /#wrapper -->
  </div>
  
  <c:import charEncoding="UTF-8" url="/WEB-INF/jsp/view/layout/footer.jsp" />
  
  <!-- Bootstrap core JavaScript -->
    <script src="https://code.jquery.com/jquery-3.4.1.js"></script>

</body>
</html>