<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags" %>



<html>
<head>
	<!DOCTYPE html>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
   	<link rel="stylesheet" href="/resources/xdmin/css/airSignup.css" />
    <title>signup</title>
</head>
<body>
<form name="form" action="airSignup" method="post" enctype="multipart/form-data">
<input type="hidden" id="ifmmIdAllowedNy" name="ifmmIdAllowedNy">
	<!-- Navbar s  -->
	<%@include file="../../../infra/includeV1/userNavbar.jsp"%>
	<!-- Navbar e  -->      
    <div class="inputWrap">
        <ul class="input_box">
            <li>
                <div class="profileWrap">
                    <div class="profileCircle">
                        <img class="profileImg"src="<c:out value="${item.path}"/><c:out value="${item.uuidName}"/>" >
                    </div>
                    <div class="profileImgUpload">
                        <input id="uploadedImage" name="uploadedImage" type="file" id="upload_file" accept="image/*"  >
                        <label for="uploadedImage">이미지선택<i class="fa-regular fa-file-image"></i></label>
                    </div>
                </div>
            </li>
            <li>
            <input type="text" name="user_id" id="user_id"placeholder="아이디를 입력하세요" >
            <input type="hidden" id="ifmmIdAllowedNy" name="ifmmIdAllowedNy" value="0">
            </li>
            
            <div class="Feedback_ment" id="ifmmIdFeedback"></div>
     
            <li><input type="password" id="ifmmPassword" name="user_pw" placeholder="비밀번호를 입력해주세요">
            <div class="Feedback_ment" id="ifmmPasswordFeedback"></div>
            <li><input type="password" id="ifmmPasswordChk"placeholder="비밀번호 재입력">
            <div class="Feedback_ment" id="ifmmPasswordChkFeedback"></div>
            <li><input type="text" name="user_name" placeholder="이름">
            <li>
                <div class="radiowrap">
                    <h1>성별을 선택하세요</h1>
                    <input type="radio" id="man" name="user_gender" value="17" />
                    <label for="man">남성</label>
                    <input type="radio" id="girl" name="user_gender" value="18" />
                    <label for="girl">여성</label>
                </div>  
            </li>
            <li><input type="text" name="user_email" placeholder="이메일">
            <li><input type="date" name="user_dob" id="user_dob" placeholder="생년월일">
            <li class="language_select_wrap">
                <select name="user_favoriteLanguage" id="user_favoriteLanguage" >
                    <option value="">주요 언어 선택</option>
                    <option value="9" <c:if test="${item.user_favoriteLanguage eq 9 }">selected</c:if>>한국어</option>
                    <option value="10"  <c:if test="${item.user_favoriteLanguage eq 10 }">selected</c:if>>중국어</option>
                    <option value="11"  <c:if test="${item.user_favoriteLanguage eq 11 }">selected</c:if>>일본어</option>
                    <option value="12"  <c:if test="${item.user_favoriteLanguage eq 12 }">selected</c:if>>영어</option>
                </select>
            </li>
            <li class="language_select_wrap">
                <select name="lean_language" id="lean_language" >
                    <option value="">배우는 언어 선택</option>
                    <option value="9" <c:if test="${item.lean_language eq 9 }">selected</c:if>>한국어</option>
                    <option value="10"  <c:if test="${item.lean_language eq 10 }">selected</c:if>>중국어</option>
                    <option value="11"  <c:if test="${item.lean_language eq 11 }">selected</c:if>>일본어</option>
                    <option value="12"  <c:if test="${item.lean_language eq 12 }">selected</c:if>>영어</option>
                </select>
            </li>
            <li>
                <div class="btn_wrap">
                    <button>취소</button>
                    <button type="submit">확인</button>
                </div>
            </li>
                    
        </ul>
    </div>
    <script src="https://kit.fontawesome.com/86d85c3d85.js" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js" integrity="sha512-894YE6QWD5I59HgZOGReFYm4dnWc1Qt5NtvYSaNcOP+u1T9qYdvdihz0PPSiiqn/+/3e7Jo4EaG7TubfWGUrMQ==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
	<script type="text/javascript">	
	
	
		/* ajax ID*/
		$("#user_id").on("focusout", function(){
			var id = $("#user_id").val();
			var num = id.search(/[0-9]/g);
			var eng = id.search(/[a-z]/ig);
			if(id.length < 1){
				document.getElementById("user_id").classList.add('is-invalid');
				document.getElementById("ifmmIdFeedback").classList.remove('valid-feedback');
				document.getElementById("ifmmIdFeedback").classList.add('invalid-feedback');
				document.getElementById("ifmmIdFeedback").innerText = "아이디를 입력해주세요.";
				document.getElementById("ifmmIdAllowedNy").value = 0;
				return false;
			}else if(id.length < 4 || id.length > 15){
				document.getElementById("user_id").classList.add('is-invalid');
				document.getElementById("ifmmIdFeedback").classList.remove('valid-feedback');
				document.getElementById("ifmmIdFeedback").classList.add('invalid-feedback');
				document.getElementById("ifmmIdFeedback").innerText = "영문, 숫자 포함 4~15자를 입력해주세요.";
				document.getElementById("ifmmIdAllowedNy").value = 0;
				return false;
			} else if(id.search(/\s/) != -1){
				document.getElementById("user_id").classList.add('is-invalid');
				document.getElementById("ifmmIdFeedback").classList.remove('valid-feedback');
				document.getElementById("ifmmIdFeedback").classList.add('invalid-feedback');
				document.getElementById("ifmmIdFeedback").innerText = "공백 없이 입력해주세요.";
				document.getElementById("ifmmIdAllowedNy").value = 0;
				return false;
			} else if(num < 0 || eng < 0){
				document.getElementById("user_id").classList.add('is-invalid');
				document.getElementById("ifmmIdFeedback").classList.remove('valid-feedback');
				document.getElementById("ifmmIdFeedback").classList.add('invalid-feedback');
				document.getElementById("ifmmIdFeedback").innerText = "영문,숫자 중 2가지 이상을 혼합하여 입력해주세요.";
				document.getElementById("ifmmIdAllowedNy").value = 0;
				return false;
			}
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
							document.getElementById("ifmmIdFeedback").classList.add('sucessFeedback_ment');
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
		
		
		$("#ifmmPassword").on("focusout", function(){
			var pw = $("#ifmmPassword").val();
			var num = pw.search(/[0-9]/g);
			var eng = pw.search(/[a-z]/ig);
			var spe = pw.search(/[`~!@@#$%^&*|₩₩₩'₩";:₩/?]/gi);
			
			if(pw.length < 10 || pw.length > 20){
				document.getElementById("ifmmPassword").classList.add('is-invalid');
				document.getElementById("ifmmPasswordFeedback").classList.remove('valid-feedback');
				document.getElementById("ifmmPasswordFeedback").classList.add('invalid-feedback');
				document.getElementById("ifmmPasswordFeedback").innerText = "10자리 ~ 20자리 이내로 입력해주세요.";
				document.getElementById("ifmmPasswordAllowedNy").value = 0;
				return false;
			}else if(pw.search(/\s/) != -1){
				document.getElementById("ifmmPassword").classList.add('is-invalid');
				document.getElementById("ifmmPasswordFeedback").classList.remove('valid-feedback');
				document.getElementById("ifmmPasswordFeedback").classList.add('invalid-feedback');
				document.getElementById("ifmmPasswordFeedback").innerText = "비밀번호는 공백 없이 입력해주세요.";
				document.getElementById("ifmmPasswordAllowedNy").value = 0;
				return false;
			}else if( (num < 0 && eng < 0) || (eng < 0 && spe < 0) || (spe < 0 && num < 0) ){
				document.getElementById("ifmmPassword").classList.add('is-invalid');
				document.getElementById("ifmmPasswordFeedback").classList.remove('valid-feedback');
				document.getElementById("ifmmPasswordFeedback").classList.add('invalid-feedback');
				document.getElementById("ifmmPasswordFeedback").innerText = "영문,숫자, 특수문자 중 2가지 이상을 혼합하여 입력해주세요.";
				document.getElementById("ifmmPasswordAllowedNy").value = 0;
				return false;
			}else {
				document.getElementById("ifmmPassword").classList.add('is-valid');
				document.getElementById("ifmmPassword").classList.remove('is-invalid');
				document.getElementById("ifmmPasswordFeedback").classList.remove('invalid-feedback');
				document.getElementById("ifmmPasswordFeedback").classList.add('valid-feedback');
				document.getElementById("ifmmPasswordFeedback").innerText = "사용 가능 합니다.";
				document.getElementById("ifmmPasswordAllowedNy").value = 1;
			}
		});
		$("#ifmmPasswordChk").on("focusout", function(){
			if($('#ifmmPassword').val() != $('#ifmmPasswordChk').val()){
				document.getElementById("ifmmPasswordChk").classList.add('is-invalid');
				document.getElementById("ifmmPasswordChkFeedback").classList.remove('valid-feedback');
				document.getElementById("ifmmPasswordChkFeedback").classList.add('invalid-feedback');
				document.getElementById("ifmmPasswordChkFeedback").innerText = "비밀번호가 일치하지 않습니다.";
				document.getElementById("ifmmPasswordChkAllowedNy").value = 0;
	        } else{
	        	document.getElementById("ifmmPasswordChk").classList.add('is-valid');
				document.getElementById("ifmmPasswordChk").classList.remove('is-invalid');
				document.getElementById("ifmmPasswordChkFeedback").classList.remove('invalid-feedback');
				document.getElementById("ifmmPasswordChkFeedback").classList.add('valid-feedback');
				document.getElementById("ifmmPasswordChkFeedback").innerText = "비밀번호가 일치합니다.";
				document.getElementById("ifmmPasswordChkAllowedNy").value = 1;
	        }
		});
		
		const reader = new FileReader();
		reader.onload = (readerEvent) => {
		    document.querySelector("#img_section").setAttribute("src", readerEvent.target.result);
		    //파일을 읽는 이벤트가 발생하면 img_section의 src 속성을 readerEvent의 결과물로 대체함
		};
		document.querySelector("#upload_file").addEventListener("change", (changeEvent) => {
		    //upload_file 에 이벤트리스너를 장착
		    const imgFile = changeEvent.target.files[0];
		    reader.readAsDataURL(imgFile);
		    //업로드한 이미지의 URL을 reader에 등록
		})
		const exampleModal = document.getElementById('exampleModal')
			exampleModal.addEventListener('show.bs.modal', event => {
			// Button that triggered the modal
		const button = event.relatedTarget
			// Extract info from data-bs-* attributes
		const recipient = button.getAttribute('data-bs-whatever')
			// If necessary, you could initiate an AJAX request here
			// and then do the updating in a callback.
			//
			// Update the modal's content.
		const modalTitle = exampleModal.querySelector('.modal-title')
		const modalBodyInput = exampleModal.querySelector('.modal-body input')
			
			modalTitle.textContent = `New message to ${recipient}`
			modalBodyInput.value = recipient
		})
		

	</script>
</body>

</html>