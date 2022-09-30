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
	<link rel="preconnect" href="https://fonts.googleapis.com">
	<link rel=stylesheet href="/resources/xdmin/xdmin_css/xdminLogin.css"> 
</head>
<body class="ng-font2">
<div class="wrapper">
	<div class="container">
		<div class="col-left">
			<div class="login-text">
				<h2>AIR LANGUAGE</h2>
				<p>환영합니다<br>관리자 페이지입니다.</p>
				<!-- <a class="btn" href="">Sign Up</a> -->
			</div>
		</div>
		<div class="col-right">
			<div class="login-form">
				<h2>관리자 로그인</h2>
				<form>
				<p>
					<label>ID<span>*</span></label>
					<input id="user_id" type="text" placeholder="ID를 입력해주세요." required>
				</p>
				<p>
					<label>PASSWORD<span>*</span></label>
					<input id="user_pw" type="password" placeholder="비밀번호를 입력해주세요." required>
				</p>
				<p>
					<button id="btnLogin" type="button">로그인</button>
				</p>
				<p>
					<a href="">비밀번호를 잊으셨나요?</a>
				</p>
				</form>
			</div>
		</div>
	</div>
</div>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js" integrity="sha512-894YE6QWD5I59HgZOGReFYm4dnWc1Qt5NtvYSaNcOP+u1T9qYdvdihz0PPSiiqn/+/3e7Jo4EaG7TubfWGUrMQ==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
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
						alert("로그인 완료");
						location.href = "/AircodeGroup/codeGroupList";
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