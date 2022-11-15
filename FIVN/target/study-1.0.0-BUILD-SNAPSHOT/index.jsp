<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<title>Find-vehicle-Number</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">  
<script src="https://kit.fontawesome.com/51db22a717.js" crossorigin="anonymous"></script>
    <link href="https://fonts.googleapis.com/css2?family=Alata&display=swap" rel="stylesheet">
<script	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<link href="./css/login.css" rel="stylesheet" type="text/css">
</head>
<script type="text/javascript">
	function login(){
		var loginForm = document.loginForm;
		var username = loginForm.username.value;
		var password = loginForm.password.value;
		
		if(!username || !password){
			alert("아이디와 비밀번호 모두 입력해주세요.");
		}
		
		if(username=="qwe" && password=="123"){
			loginForm.action="main.do";
		}else{
			alert("아이디/비밀번호가 틀렸습니다. 다시입력해주세용.");
			
		}
		loginForm.submit();
	}
	
	$(document).ready(function() {
		$('.show00').show(); //페이지를 로드할 때 표시할 요소
		$('.show11').hide(); //페이지를 로드할 때 표시할 요소
		$('.show22').hide(); //페이지를 로드할 때 숨길 요소
		$('.show1').click(function(){
		$ ('.show22').hide(); //클릭 시 첫 번째 요소 숨김
		$ ('.show00').hide(); //클릭 시 첫 번째 요소 숨김
		$ ('.show11').show(); //클릭 시 두 번째 요소 표시
		$('.show2').click(function(){
		$ ('.show11').hide(); //클릭 시 첫 번째 요소 숨김
		$ ('.show00').hide(); //클릭 시 첫 번째 요소 숨김
		$ ('.show22').show(); //클릭 시 두 번째 요소 표시
		return false;
		});
		});
		});
</script>
<body>
    <div class="page-container">
        <div class="login-form-container shadow">
            <div class="login-form-right-side">
                <div class="top-logo-wrap">
                    
                </div>
                <h1>고객 관리 시스템</h1>
                <p></p>
            </div>
            <div class="login-form-left-side">
            <form name="loginForm" method="post">
                <div class="login-top-wrap">
                    
                </div>
                <div class="login-input-container">               
                    <div class="login-input-wrap input-id">                     
                        <i class="far fa-envelope"></i>
                        
                        <input placeholder="아이디" type="text" name="username" id="username">
                    </div>
                    <div class="login-input-wrap input-password">
                        <i class="fas fa-key"></i>
                        <input placeholder="비밀번호"  type="password" name="password" id="password">
                    </div>
                </div>
                <div class="login-btn-wrap">               
                    <input type="button" class="login-btn" onclick="login()"  value="로그인">                    
                    
                    
                </div>
                </form>
            </div>
        </div>
    </div>
</body>
</html>