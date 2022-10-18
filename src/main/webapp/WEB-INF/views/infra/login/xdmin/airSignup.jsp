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
    <div class="navbar">
        <div class="logo">
            <a href="#">AirLanguage</a>
        </div>
        <ul class="nav_middel_menu">
            <li class="nav_search_box">
                <select name="" id="" >
                    <option value="">언어선택</option>
                    <option value="">한국어</option>
                    <option value="">중국어</option>
                    <option value="">일본어</option>
                    <option value="">영어</option>
                </select>
                <input type="text">
            </li>
            <li><a href="#">리스트</a></li>
            <li><a href="#">리스트</a></li>
            <li><a href="#">리스트</a></li>
        </ul>
    </div>
    <div class="inputWrap">
        <ul class="input_box">
            <li>
                <div class="profileWrap">
                    <div class="profileCircle">
                        <img class="profileImg"src="" alt="">
                    </div>
                    <div class="profileImgUpload">
                        <input id="uploadedImage" name="uploadedImage" type="file" >
                        <label for="uploadedImage">이미지선택<i class="fa-regular fa-file-image"></i></label>
                    </div>
                </div>
            </li>
            <li><input type="text" name="user_id" id="user_id"placeholder="아이디를 입력하세요"></li>
            <div class="Feedback_ment" id="ifmmIdFeedback"></div>
     
            <li><input type="password" name="user_pw" placeholder="비밀번호를 입력해주세요">
            <li><input type="password" placeholder="비밀번호 재입력">
            <li><input type="text" name="user_name" placeholder="이름">
            <li>
                <div class="radiowrap">
                    <h1>성별을 선택하세요</h1>
                    <input type="radio" id="man" name="contact" value="man" />
                    <label for="man">남성</label>
                    <input type="radio" id="girl" name="contact" value="girl" />
                    <label for="girl">여성</label>
                </div>  
            </li>
            <li><input type="text" name="user_email" placeholder="이메일">
            <li><input type="text" name="user_dob" placeholder="생년월일">
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