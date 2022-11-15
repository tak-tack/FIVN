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

  <div class="d-flex" id="wrapper">

 
    <c:import charEncoding="UTF-8" url="/WEB-INF/jsp/view/layout/sidemenu.jsp" />
    <!-- /#sidebar-wrapper -->

    <!-- Page Content -->
    <div id="page-content-wrapper">

      <c:import charEncoding="UTF-8"
			url="/WEB-INF/jsp/view/layout/header.jsp" />
      
      
         <div class="search">
    <h1 class ="text-secondary">고객정보 삭제</h1>
    <h3 class ="text-secondary">삭제할 고객 정보를 입력해주세요</h3>
    
    <form action="<c:url value='/deleteCustomerimpromationform.do' />" name = "form" id = "form" method="post" accept-charset="UTF-8"> 
             <c:import charEncoding="UTF-8" url="/WEB-INF/jsp/view/layout/customerseach.jsp" /> <!-- 검색기능 호출 -->
        
</form>
</div>
      
    </div>
    <!-- /#page-content-wrapper -->

  </div>
  <!-- /#wrapper -->

  <!-- Bootstrap core JavaScript -->
  <script src="vendor/jquery/jquery.min.js"></script>
  <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

  <c:import charEncoding="UTF-8" url="/WEB-INF/jsp/view/layout/footer.jsp" />
</body>
</html>