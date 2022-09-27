<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags" %>


<!doctype html>
<html lang="kr">
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>로그인</title>
	<!-- CDN : content Delivery Network  -->
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous">
	<link rel="preconnect" href="https://fonts.googleapis.com">
	<link href="../css/style.css" rel="stylesheet" type="text/css">
	<style>
		@charset "UTF-8";
		@import url('https://fonts.googleapis.com/css2?family=Gowun+Dodum&family=Nanum+Brush+Script&family=Song+Myung&display=swap');
		.ng-font2{
			font-family: 'Gowun Dodum', sans-serif;
		}
		body{
			height:1300px;
			background-color:#fafafa;
		}
		.input-form{
			max-width: 680px;
			margin-top: 150px;
			padding: 32px;
			background:white;
			-webkit-border-radius: 10px;
			-moz-border-radius: 10px;
			border-radius: 10px;
			-webkit-box-shadow: 0 8px 20px 0 rgba(0, 0, 0, 0.15);
			-moz-box-shadow: 0 8px 20px 0 rgba(0, 0, 0, 0.15);
			box-shadow: 0 8px 20px 0 rgba(0, 0, 0, 0.15);
		}
		
	</style>
</head>
<body class="ng-font2">
<form>
	<nav class="navbar navbar-expand-sm bg-dark navbar-dark">
		<div class="container-fluid">
			<a class="navbar-brand" href="../Home/home.html"><i class="fa-solid fa-plane-departure"></i>AIR LANGUAGE</a>
			<button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-targer="#collapasibleNavbar">
				<span class="navbar-toggler-icon"></span>
			</button>
			<div class="collapse navbar-collapse justify-content-end" id="collapsibleNavbar">
				<ul class="navbar-nav">
					<li class="nav-item">
						<a class="nav-link" href="#"><i class="fa-solid fa-left-long"></i></a>
					</li>
					<li class="nav-item">
						<a class="nav-link" href="#"><i class="fa-solid fa-house"></i></a>
					</li>			
				</ul>
			</div>
		</div>
	</nav>
	<div class="container">
		<div class="input-form-background row">
			<div class="input-form col-md-12 mx-auto" >
				<div class="row text-center">
					<div class="col-4 mx-auto">
						<h3 class="mb-3"><i class="fa-solid fa-plane-departure"></i>AIR LANGUAGE</h4>
					</div>
				</div>
				<div class="row">
					<div class="col-md-8 mx-auto">
						<div class="form-floating mb-3">
							<input type="email" class="form-control" id="user_id" placeholder="name@example.com">
							<label for="floatingInput">아이디</label>
						</div>
					</div>
				</div>		
				<div class="row">	
					<div class="col-md-8 mx-auto">
						<div class="form-floating mb-3">
							<input type="password" class="form-control" id="user_pw" placeholder="name@example.com">
							<label for="floatingInput">비밀번호</label>
							<div class="form-check form-switch mb-3">
								<input class="form-check-input" type="checkbox" role="switch" id="flexSwitchCheckChecked" checked>
								<div class="mb-3"></div>
								<label class="form-check-label" for="flexSwitchCheckChecked">자동로그인</label>
								<div class="mb-2"></div>
							</div>
						</div>
					</div>
				</div>
				<div class="row text-center">
					<div class="col-5 d-grid gap-2 mx-auto mb-2">
						<button class="btn btn-light m-2" type="button" id="btnLogin" style="background-color:#eeeeee">로그인</button>
					</div>
				</div>
				<ul class="nav justify-content-center">
					<li class="nav-item">
						<a class="nav-link active"  href="signup.html">회원가입</a>
					</li>
					<li class="nav-item">
						<a class="nav-link" href="find_id.html">아이디 찾기</a>
					</li>
					<li class="nav-item">
						<a class="nav-link" href="find_password_hp.html">비밀번호 찾기</a>
					</li>
				</ul>
				<hr>
				<div class="mb-2"></div>	
				<div class="row">
					<div class="d-grid gap-2 col-8 mx-auto">
		  				<button class="btn btn-light m-2" type="button" style="background-color:#e91e63"><i class="fa-brands fa-google"></i>구글로그인</button>
					</div>
				</div>
				<div class="row">
					<div class="d-grid gap-2 col-8 mx-auto">
		  				<button class="btn btn-primary m-2" type="button"><i class="fa-brands fa-facebook-f"> </i> 페이스북 로그인</button>
					</div>
				</div>
				<div class="row">
					<div class="d-grid gap-2 col-8 mx-auto">
		  				<button class="btn btn-light m-2" type="button"style="background-color:#fdd835"><img src="https://cdn-icons-png.flaticon.com/512/2111/2111683.png" style="width:20px; height:20px;"> 카카오 로그인</button>
					</div>
				</div>	
				<div class="row">
					<div class="d-grid gap-2 col-8 mx-auto">
		  				<button class="btn btn-light m-2" type="button" style="background-color:#2DB400;"><i class="fa-brands fa-neos"></i>네이버 로그인</button>
					</div>
				</div>					
			</div>
		</div>
	</div>
	sessSeq: <c:out value="${sessSeq }"/><br>
	sessName: <c:out value="${sessName }"/><br>
	sessId: <c:out value="${sessId }"/><br>
</form>	
	<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js" integrity="sha512-894YE6QWD5I59HgZOGReFYm4dnWc1Qt5NtvYSaNcOP+u1T9qYdvdihz0PPSiiqn/+/3e7Jo4EaG7TubfWGUrMQ==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2" crossorigin="anonymous"></script>
	<script src="https://kit.fontawesome.com/86d85c3d85.js" crossorigin="anonymous"></script>
	<script>
	$("#btnLogin").on("click", function(){

		$.ajax({
			async: true 
			,cache: false
			,type: "post"
			/* ,dataType:"json" */
			,url: "/member/loginProc"
			/* ,data : $("#formLogin").serialize() */
			,data : { "user_id" : $("#user_id").val(), "user_pw" : $("#user_pw").val()}
			,success: function(response) {
				if(response.rt == "success") {
						alert("완료");
				} else {
					alert("회원없음");
				}
			}
			,error : function(jqXHR, textStatus, errorThrown){
				alert("ajaxUpdate " + jqXHR.textStatus + " : " + jqXHR.errorThrown);
			}
		});
	});
	
	</script>
</body>

</html>
