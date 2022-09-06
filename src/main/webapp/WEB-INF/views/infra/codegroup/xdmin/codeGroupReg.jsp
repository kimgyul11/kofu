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
	<title>코드</title>
	<!-- CDN : content Delivery Network  -->
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous">
	<link rel="preconnect" href="https://fonts.googleapis.com">
	<style>
	@import url('https://fonts.googleapis.com/css2?family=Gowun+Dodum&family=Nanum+Brush+Script&family=Song+Myung&display=swap');
		.ng-font2{
			font-family: 'Gowun Dodum', sans-serif;
		}
	body{
		font-family: 'Gowun Dodum', sans-serif;
	}
	p{
		font-size:15px;
		margin:0px;
		font-weight:600;
		color:black;
	}
	
	.profile_box{
	width:50px;
	height:50px;
	border-radius:70%;
	overflow:hidden;
	}
	.profile_box img{
		width:100%;
		height:100%;
		object-fit:cover;
	}
	.content_wrap{
		width:70%;
		margin:auto;
		padding:15px;
	}
	.container-fuild{
		margin-top:100px;
	}
	</style>
</head>
<body>
	<form method="post" action="/codeGroup/codeGroupInst">
	<nav class="navbar navbar-expand-sm ">
		<div class="container-fluid">
			<a class="navbar-brand" href="#">AIR LANGUAGE</a>
			<button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-targer="#collapasibleNavbar">
				<span class="navbar-toggler-icon"></span>
			</button>
			<div class="collapse navbar-collapse justify-content-end" id="collapsibleNavbar">
				<ul class="navbar-nav">
					<li class="nav-item">
						
						<div class="profile_box" style="background:black;">
	        				<img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQnqtDg1kbYjvjQ-V-W02jlz_Nko2XGdhjJ5HGg3NWMq0I5WUkYjmdOb2U0fWoltO438hY&usqp=CAU">
	        			</div>
					</li>
					<li class="nav-item">
						<p class="m-1">KIMGIYUL</p>
						<p class="m-1">Admin</p>
					</li>	
					<li class="nav-item">
						<select class="form-select form-control m-2" aria-label="Default select example">
					  		<option selected>언어</option>
						</select>
					</li>
				</ul>
			</div>
		</div>
	</nav>
	<nav class="navbar navbar-expand-lg" style="background-color: #e3f2fd;">
	<div class="container-fluid">
		<a class="navbar-brand" href="#">Navbar</a>
		<button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>
		<div class="collapse navbar-collapse" id="navbarNav">
			<ul class="navbar-nav">
				<li class="nav-item">
					<a class="nav-link active" aria-current="page" href="#">회원관리</a>
				</li>
				<li class="nav-item">
					<a class="nav-link" href="#">게시판관리</a>
				</li>
				<li class="nav-item">
					<a class="nav-link" href="#">코드관리</a>
				</li>
				<li class="nav-item">
					<a class="nav-link" href="#">시스템관리</a>
				</li>
			</ul>
		</div>
	</div>
	</nav>
	<div class="container-fuild">
		<div class="row content_wrap">
		<h3>코드그룹관리</h3>
			<div class="col-md-12">
				<div class="row m-4">
					<div class="col-md-6">
						<p>-</p>
						<select class="form-select" aria-label="Default select example">
							  <option selected>선택하세요</option>
							  <option value="1">N</option>
							  <option value="1">Y</option>
						</select>
					</div>
				</div>
				<div class="row m-4">
					<div class="col-md-6">
						<p>코드</p>
						<input type="text" class="form-control" placeholder="자동생성" disabled>
					</div>
					<div class="col-md-6">
						<p>코드(Another)</p>
						<input type="text" class="form-control" >
					</div>
				</div>
				<div class="row m-4">
					<div class="col-md-6">

						<p>코드 이름(한글)</p>
						<input type="text" class="form-control" name="ccg_groupname" >
					
					</div>
					<div class="col-md-6 ">
						<p>코드 이름(영문)</p>
						<input type="text" class="form-control" name="ccg_groupnameEng">
					</div>
				</div>
				<div class="row m-4">
					<div class="col-md-6">
						<p>사용 여부</p>
						<select class="form-select" aria-label="Default select example"name="UseNY">
							  <option selected>선택하세요</option>
							  <option value="0">N</option>
							  <option value="1">Y</option>
						</select>
					</div>
					<div class="col-md-6 ">
						<p>순서</p>
						<input type="text" class="form-control" name="delNy">
					</div>
				</div>
				<div class="row m-4">
					<div class="col-md-6">
						<p>설명</p>
						<div class="form-floating">
							  <textarea class="form-control" placeholder="Leave a comment here" id="floatingTextarea2" style="height: 100px"></textarea>
						</div>
					</div>
					<div class="col-md-6 ">
						<p>삭제여부</p>
						<select class="form-select" aria-label="Default select example" name="delNy">
							  <option value="0">N</option>
							  <option value="1">Y</option>
						</select>
					</div>
				</div>
				<div class="row m-4">
					<div class="col-md-6">
						<p>예비1(varchar type)</p>
						<input type="text" class="form-control" placeholder="영문(대소문자),숫자">
					</div>
					<div class="col-md-6 ">
						<p>예비2(varchartype)</p>
						<input type="text" class="form-control" placeholder="영문(대소문자),숫자">
					</div>
				</div>
				<div class="row m-4">
					<div class="col-md-6">
						<p>예비3(varchartype)</p>
						<input type="text" class="form-control" placeholder="영문(대소문자),숫자">
					</div>
				</div>
				<div class="row m-4">
					<div class="col-md-6">
						<p>예비1(Int type)</p>
						<input type="email" class="form-control" placeholder="숫자">
					</div>
					<div class="col-md-6 ">
						<p>예비2(Int type)</p>
						<input type="email" class="form-control" placeholder="숫자">
					</div>
				</div>
				<div class="row m-4">
					<div class="col-md-6">
						<p>예비3(Int type)</p>
						<input type="email" class="form-control" placeholder="숫자">
					</div>
				</div>
			</div>
			<div class="d-flex mt-5 ">
				<div class="me-auto p-2"><button type="button" class="btn btn-dark"><i class="fa-solid fa-list"></i></button></div>
				<div class="p-2"><button type="button" class="btn btn-danger"><i class="fa-solid fa-trash-can"></i></button></div>
				<div class="p-2"><button type="button" class="btn btn-success"><i class="fa-solid fa-bookmark"></i></button></div>
				<div class="p-2"><button type="submit" class="btn btn-dark"><i class="fa-solid fa-floppy-disk"></i></button></div>
			</div>
		</div>
	</div>
	</form>	
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2" crossorigin="anonymous"></script>
	<script src="https://kit.fontawesome.com/86d85c3d85.js" crossorigin="anonymous"></script>
</body>
</html>