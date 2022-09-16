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
	<form method="post" name=form>
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
	<!-- 배너화면 -->
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
	<!-- 입력창 시작 -->
	<div class="container-fuild">
		<div class="row content_wrap">
		<h3>코드관리</h3>
			<div class="col-md-12">
				<div class="row m-4">
					<div class="col-md-6">
						<p>코드그룹명</p>
						<select class="form-select" aria-label="Default select example" name="ccgSeq">
							<c:forEach items="${list}" var="list" varStatus="status">
								  <option value=<c:out value="${list.ccg_groupname}"/>><c:out value="${list.ccg_groupname }"/></option>
							</c:forEach>
						</select>
					</div>
					<div class="col-md-6">
						<p>코드그룹</p>
						<select class="form-select" aria-label="Default select example" name="ccg_groupname">
							<%-- <c:forEach items="${list}" var="list" varStatus="status">
								  <option value=<c:out value="${item.ccg_seq}"/>><c:out value="${item.ccg_groupname }"/></option>
							</c:forEach> --%>
						</select>
					</div>
				</div>
				<div class="row m-4">
					<div class="col-md-6">
						<p>코드</p>
						<input type="text" class="form-control" placeholder="자동생성" >
					</div>
					<div class="col-md-6">
						<p>코드(Another)</p>
						<input type="text" class="form-control" >
					</div>
				</div>
				<div class="row m-4">
					<div class="col-md-6">
						<p>코드 이름(한글)</p>
						<input type="text" class="form-control" name="cc_name" value="<c:out value="${item.cc_name }"/>">
					</div>
					<div class="col-md-6 ">
						<p>코드 이름(영문)</p>
						<input type="text" class="form-control" name="cc_nameEng" value="<c:out value="${item.cc_nameEng }"/>">
					</div>
				</div>
				<div class="row m-4">
					<div class="col-md-6">
						<p>사용 여부</p>
						<select class="form-select" aria-label="Default select example"name="cc_useNy">
							  <option selected>선택하세요</option>
							  <option value="0" <c:if test="${item.cc_useNy eq 0}">selected</c:if>>N</option>
							  <option value="1" <c:if test="${item.cc_useNy eq 1}">selected</c:if>>Y</option>
						</select>
					</div>
					<div class="col-md-6 ">
						<p>순서</p>
						<input type="text" class="form-control" >
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
						<select class="form-select" aria-label="Default select example" name="cc_delNy">
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
				<div class="p-2"><button id="btnUelete" type="button" name="btnUelete"class="btn btn-danger"><i class="fa-solid fa-x"></i></button></div>
				<div class="p-2"><button id="btnDelete" type="button" class="btn btn-danger" ><i class="fa-solid fa-trash-can"></i></button></div>
				<div class="p-2"><button id="btnSave" type="button" class="btn btn-success" ><i class="fa-solid fa-floppy-disk"></i></button></div>
			</div>
			<!-- Modal -->
				<div class="modal fade" id="modalConfirm" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
				  <div class="modal-dialog">
				    <div class="modal-content">
				      <div class="modal-header">
				        <h5 class="modal-title" id="exampleModalLabel">Modal title</h5>
				        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
				      </div>
				      <div class="modal-body">
				        ...
				      </div>
				      <div class="modal-footer">
				        <button type="button" class="btn btn-secondary"  data-bs-dismiss="modal">취소</button>
				        <button type="button" class="btn btn-primary" id="btnModalUelete" name="btnModalUelete">확인</button>
				        <button type="button" class="btn btn-primary"id="btnModalDelete" name="btnModalDelete">확인</button>
				      </div>
				    </div>
				  </div>
				</div>
		</div>
	</div>
	<input type="hidden" name="ccSeq" value="<c:out value ="${item.ccSeq }"/>" >
	</form>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js" integrity="sha512-894YE6QWD5I59HgZOGReFYm4dnWc1Qt5NtvYSaNcOP+u1T9qYdvdihz0PPSiiqn/+/3e7Jo4EaG7TubfWGUrMQ==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>	
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2" crossorigin="anonymous"></script>
	<script src="https://kit.fontawesome.com/86d85c3d85.js" crossorigin="anonymous"></script>
	<script type="text/javascript">
		function test(){			
			if(document.getElementById("ccg_groupname").value == '' || document.getElementById("ccg_groupname").value == null){
				alert("값을 제대로 입력해주세요 ");
				document.getElementById("ccg_groupname").value ="";
				document.getElementById("ccg_groupname").focus();
				return false;
			}else if(document.getElementById("ccg_groupnameEng").value == '' || document.getElementById("ccg_groupnameEng").value == null){
				alert("값을 제대로 입력해주세요 ");
				document.getElementById("ccg_groupnameEng").value ="";
				document.getElementById("ccg_groupnameEng").focus();
				return false;
			}else if(document.getElementById("UseNY").value == ''){
				alert("값을 선택해주세요 ")
				document.getElementById("UseNY").focus();
				return false;
			}
		}
		
		var goUrlList = "/code/code"; 			/* #-> */
		var goUrlInst = "/code/codeInst"; 			/* #-> */
		var goUrlUpdt = "/code/codeUpdt";				/* #-> */
		var goUrlUele = "/code/codeUele";				/* #-> */
		var goUrlDele = "/code/codeDele";				/* #-> */
		
		var seq = $("input:hidden[name=ccSeq]");				/* #-> */
		
		var form = $("form[name=form]");
		var formVo = $("form[name=formVo]");
		
		
		$("#btnSave").on("click", function(){
			if (seq.val() == "0" || seq.val() == ""){
		   		// insert
		   		form.attr("action", goUrlInst).submit();
		   	} else {
		   		// update
		   		/* keyName.val(atob(keyName.val())); */
		   		form.attr("action", goUrlUpdt).submit();
		   	}
		}); 
		
		$("#btnUelete").on("click", function(){
			$(".modal-title").text("확 인");
			$(".modal-body").text("해당 데이터를 삭제하시겠습니까 ?");
			$("#btnModalUelete").show();
			$("#btnModalDelete").hide();
			$("#modalConfirm").modal("show");
		});
		

		$("#btnDelete").on("click", function(){
			$(".modal-title").text("확 인");
			$(".modal-body").text("해당 데이터를 삭제하시겠습니까 ?");
			$("#btnModalUelete").hide();
			$("#btnModalDelete").show();
			$("#modalConfirm").modal("show");
		});
		
		
		$("#btnModalUelete").on("click", function(){
			$("#modalConfirm").modal("hide");
			form.attr("action", goUrlUele).submit();
		});
		
		
		$("#btnModalDelete").on("click", function(){
			$("#modalConfirm").modal("hide");
			form.attr("action", goUrlDele).submit();
		});
		
		
		
	</script>
</body>
</html>