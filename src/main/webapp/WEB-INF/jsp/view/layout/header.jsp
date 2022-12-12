<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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
<meta name="viewport" content="width=device-width, initial-scale=1">
<link href="css/customer/popup.css" rel="stylesheet">
</head>
<body>
<div style="width: 100%; height: 100px; background-color:  black; text-align: center;">
<h4 style="font-size: 60px; color: red;">김 성 환 회 장 님 께 서 일 궈 내 신 최 강 대 산</h4>

</div>
<!--  header start  -->
		<nav
				class="navbar navbar-expand-lg navbar-light bg-light border-bottom">
				<button type ="button" style = "margin : 0px; min-width: 100px; height: 35px"
					class="button button--winona button--border-thin button--round-s"
					id="menu-toggle"><span style = "padding:0px;">목록</span></button>

				<button class="navbar-toggler" type="button" data-toggle="collapse"
					data-target="#navbarSupportedContent"
					aria-controls="navbarSupportedContent" aria-expanded="false"
					aria-label="Toggle navigation">
					<span class="navbar-toggler-icon"></span>
				</button>

				<div class="collapse navbar-collapse" id="navbarSupportedContent">
					<ul class="navbar-nav ml-auto mt-2 mt-lg-0">

					</ul>
				</div>
			</nav>
			
</body>
  <script>
	$("#menu-toggle").click(function(e) {
		e.preventDefault();
		$("#wrapper").toggleClass("toggled");
	});
</script>
<!--  header end  -->
</html>
  
