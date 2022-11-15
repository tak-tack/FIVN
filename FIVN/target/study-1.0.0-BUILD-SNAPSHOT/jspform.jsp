<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<title>전자조달지원센터</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">

  <title>Simple Sidebar - Start Bootstrap Template</title>

  <!-- Bootstrap core CSS -->
  <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

  <!-- Custom styles for this template -->
  <link href="css/simple-sidebar.css" rel="stylesheet">
</head>


<body>
<!--  header  -->
<c:import charEncoding="UTF-8" url="/WEB-INF/jsp/study/layout/header.jsp" />
  <div class="d-flex" id="wrapper">
  
    <!--  sidemenu -->
    <c:import charEncoding="UTF-8" url="/WEB-INF/jsp/study/layout/sidemenu.jsp" />
   

    <!-- Page Content -->
    <div class="container-fluid col-sm-8">
    	<table class="table table-striped">
			<thead>
				<tr>
					<th>권한번호</th>
					<th>권한명</th>
					<th>권한설명</th>
				</tr>
			</thead>
			<tbody>
				<%-- <c:forEach items="${resultList}" var="val">
						<tr>
							<td>${권한번호 }</td>
							<td><a href="#">${권한명}</a></td>
							<td><a href="#">${권한설명}</a></td>
						</tr>
				</c:forEach> --%>
				<tr>
					<td><a href="#">1</a></td>
					<td><a href="#">PM</a></td>
					<td><a href="#">프로젝트 매니저</a></td>
				</tr>
				<tr>
					<td><a href="#">2</a></td>
					<td><a href="#">PL</a></td>
					<td><a href="#">프로젝트 리더</a></td>
				</tr>
				<tr>
					<td><a href="#">3</a></td>
					<td><a href="#">팀원</a></td>
					<td><a href="#">팀원</a></td>
				</tr>
			</tbody>
		</table>
    </div>
    <!-- /#page-content-wrapper -->

  </div>
  
  <!--  footer  -->
  <c:import charEncoding="UTF-8" url="/WEB-INF/jsp/study/layout/footer.jsp" />
</body>
</html>