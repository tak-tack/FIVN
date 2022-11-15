<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page trimDirectiveWhitespaces="true" %>
<!DOCTYPE html>
<html>
<head>
<title></title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">
  
  <link rel="stylesheet" type="text/css" href="./css/SearchBar.css">
	<link href="./css/pushy-buttons.css" rel="stylesheet">
	

</head>
<body>

<div class="wrapper" style="width:auto">
      <input type="radio" name="selecttype" id="option-1" value="customerCustomer_name" checked>
      <input type="radio" name="selecttype" id="option-2" value="customerPhone_number">
      <input type="radio" name="selecttype" id="option-3" value="customerCar_number">
      <input type="radio" name="selecttype" id="option-4" value="customerCar_information_number">
      <input type="radio" name="selecttype" id="option-5" value="customerCar_characteristic">
      <input type="radio" name="selecttype" id="option-6" value="visit_day">
      
      <label for="option-1" class="option option-1">
        
        <span>이름</span>
      </label>
      <label for="option-2" class="option option-2">
       
        <span>전화번호</span>
      </label>
      <label for="option-3" class="option option-3">
        
        <span>차량번호</span>
      </label>
      <label for="option-4" class="option option-4">
        
        <span>차대번호</span>
      </label>
      <label for="option-5" class="option option-5">
        
        <span>차종</span>
      </label>
       <label for="option-6" class="option option-6">
        
        <span>방문날짜</span>
      </label>
      
      
    </div>
    
  <br>
  
 		<div class="keywordsearch">       
            <input type="text" name="keyword" class = "searchTerm" size="10" placeholder="고객 정보를 입력해주세요..."  style = "width:400px; height: 50px;" required>
            
                   <button type="submit"  class="searchButton" value="검색">
        			 <i class="fa fa-search">검색</i>
   
   </button>
           </div>    
           
                   
</body>
</html>