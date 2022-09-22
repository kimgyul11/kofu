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
	<link rel="stylesheet" href="/resources/xdmin/css/signup.css" />
</head>
<body class="ng-font2">
	<nav class="navbar navbar-expand-sm bg-dark navbar-dark">
		<div class="container-fluid">
			<a class="navbar-brand" href="loginForm.html"><i class="fa-solid fa-plane-departure"></i>AIR LANGUAGE</a>
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
<!-- nav끝 -->	

<!-- 가입 양식폼 -->	
	<div class="container">
		<div class="input-background">
			<div class="input-form">
				<div class="row"> <!--인풋 영역 감싸는부분 -->
					<div class="col-md-12">
						<div class="text-box">
							<div class="box">
								<img class="profile" src="https://cdn.pixabay.com/photo/2017/02/25/22/04/user-icon-2098873_960_720.png">
							</div>
							<div id="profile-bottom">
								이미지를 선택하세요
							</div>
							<hr>
							<div class="row m-2">
							<p class="m-0">아이디</p>
								<div class="col">
									<input type="text" class="form-control"placeholder="아이디 입력해주세요">
								</div>
								<div class="col">
									<a class="btn btn-primary" href="#" role="button">중복확인</a>
								</div>
							</div>
							<div class="row m-2">
							<p class="m-0">비밀번호</p>
								<div class="col">
									<input type="text" class="form-control"placeholder="특수문자,대문자 포함8자이상">
								</div>
							</div>
							<div class="row m-2">
							<p class="m-0">비밀번호 확인</p>
								<div class="col">
									<input type="text" class="form-control"placeholder="비밀번호를 재입력해주세요">
								</div>
							</div>
							<div class="row m-2">
							<p class="m-0">이름</p>
								<div class="col">
									<input type="text" class="form-control"placeholder="이름을 입력하세요">
								</div>
							</div>
							<div class="row m-2">
							<p class="m-0">생년월일</p>
								<div class="col-md-3">
									<div class="form-floating mb-3">
										<input type="text" class="form-control" id="floatingInput" placeholder="">
										<label for="floatingInput">년도</label>
									</div>
								</div>
								<!--월 입력 -->
								<div class="col-md-3">
									<div class="form-floating mb-3">
										<input type="text" class="form-control" id="floatingInput" placeholder="">
										<label for="floatingInput">월</label>
									</div>
								</div>
								<!--일 입력 -->
								<div class="col-md-3">
									<div class="form-floating mb-3">
										<input type="text" class="form-control" id="floatingInput" placeholder="">
										<label for="floatingInput">일</label>
									</div>
								</div>	
								<!--성별입력  -->	
								<div class="col-md-3">
									<div class="form-floating">
										<select class="form-select" id="floatingSelect" aria-label="Floating label select example">
											<option selected>선택</option>
											<option value="남">남</option>
											<option value="여">여</option>
										</select>
										<label for="floatingSelect">성별 선택</label>
									</div>															
								</div>
							</div>
							<div class="row m-2">
								<p class="m-0">이메일</p>
								<div class="col">
									<input type="text" class="form-control"placeholder="이메일을 입력하세요">
								</div>
							</div>
							<div class="row m-2">
								<p class="m-0">국적</p>
								<div class="col">
									<select class="form-select" aria-label="Default select example">
								  		<option selected>국가를 선택하세요</option>
								  		<option value="한국">한국</option>
								  		<option value="미국">미국</option>
								  		<option value="중국">중국</option>
								  		<option value="일본">일본</option>
									</select>
								</div>
							</div>
							<div class="row m-2">
								<p class="m-0">관심언어</p>
								<div class="col">
									<input type="text" class="form-control"placeholder="관심언어를 추가해보세요">
								</div>
							</div>
							<div class="row m-2">
								<p class="m-0">사용가능언어</p>
								<div class="col-6">
									<select class="form-select" aria-label="Default select example">
								  		<option selected>언어를 선택해주세요</option>
								  		<option value="한국">한국어</option>
								  		<option value="미국">영어</option>
								  		<option value="중국">중국어</option>
								  		<option value="일본">일본어</option>
									</select>
								</div>
								<div class="col-6">
									<select class="form-select" aria-label="Default select example">
								  		<option selected>레벨을 선택해주세요</option>
								  		<option value="상">상</option>
								  		<option value="중">중</option>
								  		<option value="하">하</option>
									</select>
								</div>
							</div>
							<br>
							<div class="d-flex gap-2 justify-content-center">
								<a href="complete">
								<button class="btn btn-outline-success" type="button">완료</button>
  								</a>
  								<button type="button" class="btn btn-outline-danger" data-bs-toggle="modal" data-bs-target="#exampleModal">
									 취소
								</button>
							</div>
							<!-- Modal -->
							<div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
								<div class="modal-dialog">
										<div class="modal-content">
										<div class="modal-header">
										<h5 class="modal-title" id="exampleModalLabel">알림</h5>
										<button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
										</div>
										<div class="modal-body">
										취소하고 홈화면으로 이동하시겠습니까?<br>
										작성중인 내용은 전부 삭제됩니다.
										</div>
										<div class="modal-footer">
										<button type="button" class="btn btn-secondary" data-bs-dismiss="modal">취소</button>
										<a href="../Home/home.html">
											<button type="button" class="btn btn-primary">확인</button>
										</a>
										</div>
									</div>
								</div>
							</div>							
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>


	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2" crossorigin="anonymous"></script>
	<script src="https://kit.fontawesome.com/86d85c3d85.js" crossorigin="anonymous"></script>
</body>

</html>
