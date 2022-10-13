<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags" %>

<html>
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>회원가입</title>
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous">
	<link rel="preconnect" href="https://fonts.googleapis.com">
	<link rel="stylesheet" href="/resources/xdmin/css/signup.css" />
</head>
<body class="ng-font2">
<form name="form" action="signup" method="post" enctype="multipart/form-data">
<input type="hidden" id="ifmmIdAllowedNy" name="ifmmIdAllowedNy">

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
							<div class="fileWrap">
								<label for="uploadedImage">이미지 선택</label>
								<input type="file" name="uploadedImage" id="uploadedImage" multiple>
							</div>
							<hr>
							<div class="row m-2">
							<p class="m-0">아이디</p>
								<div class="col">
									<input type="text" class="form-control" name="user_id" id="user_id" placeholder="아이디 입력해주세요">
									<div class="feedback" id="ifmmIdFeedback"></div>
								</div>
							</div>
							<div class="row m-2">
							<p class="m-0">비밀번호</p>
								<div class="col">
									<input type="text" class="form-control" name="user_pw" id="user_pw" placeholder="특수문자,대문자 포함8자이상">
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
									<input type="text" name="user_name" id="user_name" class="form-control"placeholder="이름을 입력하세요">
									<div class="feedback" id="ifmmIdFeedback"></div>
								</div>
							</div>
							<div class="row m-2">
							<p class="m-0">생년월일</p>
								<div class="col">
									<input type="text" name="user_dob" id="user_dob" class="form-control"placeholder="ex)19921013">
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
							<div class="d-flex gap-2 justify-content-center">
								<button class="btn btn-outline-success" type="submit">완료</button>
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
	</form>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js" integrity="sha512-894YE6QWD5I59HgZOGReFYm4dnWc1Qt5NtvYSaNcOP+u1T9qYdvdihz0PPSiiqn/+/3e7Jo4EaG7TubfWGUrMQ==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2" crossorigin="anonymous"></script>
	<script src="https://kit.fontawesome.com/86d85c3d85.js" crossorigin="anonymous"></script>
	<script type="text/javascript">	
		/* ajax ID*/
		$("#user_id").on("focusout", function(){
				$.ajax({
					async: true 
					,cache: false
					,type: "post"
					/* ,dataType:"json" */
					,url: "/member/checkId"
					/* ,data : $("#formLogin").serialize() */
					,data : { "user_id" : $("#user_id").val() }
					,success: function(response) {
						if(response.rt == "success") {
							document.getElementById("user_id").classList.remove('is-invalid');
							document.getElementById("user_id").classList.add('is-valid');
		
							document.getElementById("ifmmIdFeedback").classList.remove('invalid-feedback');
							document.getElementById("ifmmIdFeedback").classList.add('valid-feedback');
							document.getElementById("ifmmIdFeedback").innerText = "사용할 수 있는 아이디입니다.";
							
							document.getElementById("ifmmIdAllowedNy").value = 1;
							
						} else {
							document.getElementById("user_id").classList.add('is-invalid');
							
							document.getElementById("ifmmIdFeedback").classList.remove('valid-feedback');
							document.getElementById("ifmmIdFeedback").classList.add('invalid-feedback');
							document.getElementById("ifmmIdFeedback").innerText = "사용 불가능 합니다";
							
							document.getElementById("ifmmIdAllowedNy").value = 0;
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