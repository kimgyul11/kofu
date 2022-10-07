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
<form name=form action="signup">
<input type="hidden" id="ifmmIdAllowedNy" name="ifmmIdAllowedNy">
<input type="hidden" name="memberSeq">
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
								<label for="imgupload">이미지 선택</label>
								<input type="file" id="imgupload" style="display:none;"></input>
							</div>
							<hr>
							<div class="row m-2">
							<p class="m-0">아이디</p>
								<div class="col">
									<input type="text" class="form-control" name="user_id" id="user_id" value="<c:out value="${item.user_id }"/>" placeholder="아이디 입력해주세요">
									<div class="feedback" id="ifmmIdFeedback"></div>
								</div>
								
								<!-- <div class="col">
									<a class="btn btn-primary" href="#" role="button">중복확인</a>
								</div> -->
							</div>
							<div class="row m-2">
							<p class="m-0">비밀번호</p>
								<div class="col">
									<input type="text" class="form-control" name="user_pw" id="user_pw"value="<c:out value="${itme.user_pw }"/>" placeholder="특수문자,대문자 포함8자이상">
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
									<input type="text" name="user_name" id="user_name"value="<c:out value="${itme.user_name }"/>" class="form-control"placeholder="이름을 입력하세요">
									<div class="feedback" id="ifmmIdFeedback"></div>
								</div>
							</div>
							<!-- <div class="row m-2">
							<p class="m-0">생년월일</p>
								<div class="col-md-3">
									<div class="form-floating mb-3">
										<input type="text" class="form-control" id="floatingInput" placeholder="">
										<label for="floatingInput">년도</label>
									</div>
								</div>
								월 입력
								<div class="col-md-3">
									<div class="form-floating mb-3">
										<input type="text" class="form-control" id="floatingInput" placeholder="">
										<label for="floatingInput">월</label>
									</div>
								</div>
								일 입력
								<div class="col-md-3">
									<div class="form-floating mb-3">
										<input type="text" class="form-control" id="floatingInput" placeholder="">
										<label for="floatingInput">일</label>
									</div>
								</div>	
								성별입력 	
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
							</div> -->
							<div class="row m-2">
							<p class="m-0">생년월일</p>
								<div class="col">
									<input type="text" name="user_dob" id="user_dob"value="<c:out value="${itme.user_dob }"/>" class="form-control"placeholder="ex)19921013">
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
								<div class="col-12 mt-2">
									<div class="filewrap">
										<label class="imguploadtwo"for="imguploadtwo">업로드 <i class="fa-solid fa-image"></i></label>
										<input style="display: none;" type="file" id="imguploadtwo"onchange="addFile(this);" multiple />
										<div class="file-list"></div>
									</div>
								</div>
								<div class="col-12">
									<input type="file" name="img" id="img" multiple="multiple">
									<input type="file" name="img" id="img2" >
									<button type="button" id="save" >제출</button>
								</div>
							</div>
							<br>
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
	<script>
		var goUrlList = "/codeGroup/codeGroupList"; 			/* #-> */
		var goUrlInst = "/member/signup"; 			/* #-> */
		var goUrlUpdt = "/codeGroup/codeGroupUpdt";				/* #-> */
		var goUrlUele = "/codeGroup/codeGroupUele";				/* #-> */
		var goUrlDele = "/codeGroup/codeGroupDele";				/* #-> */
	
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
		var seq = $("input:hidden[name=memberSeq]");				/* #-> */
		var form = $("form[name=form]");
	
		
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
		
	/* 파일업로드s */
var fileNo = 0;
var filesArr = new Array();

// Ver1.
/* 첨부파일 추가 */
function addFile(obj){
    var maxFileCnt = 5;   // 첨부파일 최대 개수
    var attFileCnt = document.querySelectorAll('.filebox').length;    // 기존 추가된 첨부파일 개수
    var remainFileCnt = maxFileCnt - attFileCnt;    // 추가로 첨부가능한 개수
    var curFileCnt = obj.files.length;  // 현재 선택된 첨부파일 개수

    // 첨부파일 개수 확인
    if (curFileCnt > remainFileCnt) {
        alert("첨부파일은 최대 " + maxFileCnt + "개 까지 첨부 가능합니다.");
    } else {
        for (const file of obj.files) {
            // 첨부파일 검증
            if (validation(file)) {
                // 파일 배열에 담기
                var reader = new FileReader();
                reader.onload = function () {
                    filesArr.push(file);
                };
                reader.readAsDataURL(file);

                // 목록 추가
                let htmlData = '';
                htmlData += '<div id="file' + fileNo + '" class="filebox">';
                htmlData += '   <p class="name">' + file.name + '</p>';
                htmlData += '   <a class="delete" onclick="deleteFile(' + fileNo + ');"><i class="far fa-minus-square"></i></a>';
                htmlData += '</div>';
                $('.file-list').append(htmlData);
                fileNo++;
            } else {
        continue;
            }
        }
    }
    // 초기화
    document.querySelector("input[type=file]").value = "";
}

/* 첨부파일 검증 */
function validation(obj){
    const fileTypes = ['application/pdf', 'image/gif', 'image/jpeg', 'image/png', 'image/bmp', 'image/tif', 'application/haansofthwp', 'application/x-hwp'];
    if (obj.name.length > 100) {
        alert("파일명이 100자 이상인 파일은 제외되었습니다.");
        return false;
    } else if (obj.size > (100 * 1024 * 1024)) {
        alert("최대 파일 용량인 100MB를 초과한 파일은 제외되었습니다.");
        return false;
    } else if (obj.name.lastIndexOf('.') == -1) {
        alert("확장자가 없는 파일은 제외되었습니다.");
        return false;
    } else if (!fileTypes.includes(obj.type)) {
        alert("첨부가 불가능한 파일은 제외되었습니다.");
        return false;
    } else {
        return true;
    }
}

/* 첨부파일 삭제 */
function deleteFile(num) {
    document.querySelector("#file" + num).remove();
    filesArr[num].is_delete = true;
}

/* 폼 전송 */
function submitForm() {
    // 폼데이터 담기
    var form = document.querySelector("form");
    var formData = new FormData(form);
    for (var i = 0; i < filesArr.length; i++) {
        // 삭제되지 않은 파일만 폼데이터에 담기
        if (!filesArr[i].is_delete) {
            formData.append("attach_file", filesArr[i]);
        }
    }

    $.ajax({
        method: 'POST',
        url: '/register',
        dataType: 'json',
        data: formData,
        async: true,
        timeout: 30000,
        cache: false,
        headers: {'cache-control': 'no-cache', 'pragma': 'no-cache'},
        success: function () {
            alert("파일업로드 성공");
        },
        error: function (xhr, desc, err) {
            alert('에러가 발생 하였습니다.');
            return;
        }
    })
}

/* 밸리데이션 */
 /* $("#save").on("click", function(){

	var totalFilesize = 0;
	var obj = document.querySelector("#img").files;
	var obj2 = document.querySelector("#img2").files; 
	var fileCount = obj.length;
	var totalsize = 3;
	var eachsize = 10*1024;
	var totalfilesize = 100*1024;
	var allowedMaxTotalFileNumber = 0;
	var allowedEachFileSize = 0;
	var allowedTotalFileSize =0;
	var extArray1 = ["jpg","gif","png","jpeg","bmp","tif"];
	
	allowedMaxTotalFileNumber = allowedMaxTotalFileNumber == 0 ? totalsize : allowedMaxTotalfileNumber;
	allowedEachFileSize = allowedEachFileSize == 0 ? eachsize : allowedEachFileSize;
	allowedTotalFileSize = allowedTotalFileSize == 0 ? totalfilesize : allowedTotalFileSize;

	//허용확장자
	if(extArray1.indexOf(ext) == -1) {
		alert("허용된 확장자가 아닙니다.");
	//		$("#file"+seq).val("");
		return false;
	}
	
	//전체 파일 허용개수
	if(allowedMaxTotalFileNumber<fileCount){
		alert("전체 파일 갯수는" + allowedMaxTotalFileNumber +"개 까지 허용됩니다.")
		return false;
	}
	
	for(var i=0; i<obj.length;i++){
		if(obj[i].size > (10*1024)){
			alert("파일용량이 10MB를 초과하였습니다.");
			return false;
		}
	} */
	
	
/* 	alert(obj2);
	alert(obj2.length);
	
	for(var i=0; i<obj2.length; i++){
		alert(obj2[i].name + " : " + obj2[i].size)
		
		if (curFileCnt > remainFileCnt) {
        alert("첨부파일은 최대 " + maxFileCnt + "개 까지 첨부 가능합니다.");
    	}
	} */
	
})

	</script>
</body>

</html>
