<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ include file="../commonAttribute.jsp"%>
  <!-- Bootstrap core CSS -->
  
<head>
<title></title>
  <meta charset="utf-8">
  <meta name="description" content="">
  <meta name="author" content="">

  <title>Simple Sidebar - Start Bootstrap Template</title>
  
   <link rel="icon" href="data:;base64,iVBORw0KGgo="> 

  <!-- Bootstrap core CSS -->
    <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">   

  <!-- Custom styles for this template -->
  <link href="css/simple-sidebar.css" rel="stylesheet">
  <link href="css/customer/main.css" rel="stylesheet">
  
</head>

  
  <div class="bg-light border-right" id="sidebar-wrapper">
      <div class="sidebar-heading">목록</div>
      <div class="list-group list-group-flush">
        <a href="${_ContextPath}/main.do" class="list-group-item list-group-item-action bg-light">고객검색</a>
        <a href="${_ContextPath}/insertCustomerform.do" class="list-group-item list-group-item-action bg-light" >고객추가</a>
        <a href="${_ContextPath}/updateCustomerform.do" class="list-group-item list-group-item-action bg-light">고객수정</a>
        <a href="${_ContextPath}/deleteCustomerform.do" class="list-group-item list-group-item-action bg-light">고객삭제</a>
        <a href="${_ContextPath}/list.do" class="list-group-item list-group-item-action bg-light">고객전체</a>
        <a href="${_ContextPath}/less_test.do " class="list-group-item list-group-item-action bg-light">건의사항</a>
        <a href="#" class="list-group-item list-group-item-action bg-light">관리자페이지</a>
        <a href="${_ContextPath}/index.jsp" class="list-group-item list-group-item-action bg-light">로그아웃</a>
      </div>
    </div>
    
    