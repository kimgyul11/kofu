<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags" %>

<!DOCTYPE html>
<html lang="kr">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="/resources/xdmin/css/airLogin.css" />
    <title>AirLanguage</title>
</head>
<body>
<form autocomplete="off">
	<div class="wrap">
		<div class="border">
			<h1 class="title">AIR LANGUAGE</h1>	
			<div class="input_items">
			    <input class="input_item" type="text" id="user_id" placeholder="아이디를 입력해주세요" value="test11">
			    <input class="input_item" type="password" id="user_pw" placeholder="비밀번호를 입력해주세요" onkeyup="login();" value="1234">
			    <button class="btn" type="button" id="btnLogin">로그인</button>
			    <div class="margin">OR</div>
			</div>
			<ul class="loginItems">
				<li class="loginItem" id="naverBtn">
					<img class="loginItem_img" src="https://cdn-icons-png.flaticon.com/512/8142/8142645.png">
				</li>
				<li class="loginItem" id="kakaoBtn">
					<img class="loginItem_img" src="https://cdn-icons-png.flaticon.com/512/4494/4494622.png">
				</li>
				<li class="loginItem">
					<a href="/member/airSignupView">
						<img class="loginItem_img" src="https://cdn-icons-png.flaticon.com/512/6159/6159448.png">
					</a>
				</li>
			</ul>
	    </div>
	</div>
        
   	<form name="form">
		<input type="hidden" name="user_name"/>
		<input type="hidden" name="snsId"/>
		<input type="hidden" name="user_email"/>
		<input type="hidden" name="token"/>
	</form>
    </form>
   
    <script src="https://static.nid.naver.com/js/naveridlogin_js_sdk_2.0.2.js" charset="utf-8"></script>
    <script src="https://kit.fontawesome.com/86d85c3d85.js" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js" integrity="sha512-894YE6QWD5I59HgZOGReFYm4dnWc1Qt5NtvYSaNcOP+u1T9qYdvdihz0PPSiiqn/+/3e7Jo4EaG7TubfWGUrMQ==" crossorigin="anonymous" referrerpolicy="no-referrer"></script> 
    <script src="https://developers.kakao.com/sdk/js/kakao.js"></script>
    <script type="text/javascript">
    
    function login() {
    	  $.ajax({
    	    async: true,
    	    cache: false,
    	    type: "post",
    	    url: "/member/loginProc",
    	    data: {
    	      "user_id": $("#user_id").val(),
    	      "user_pw": $("#user_pw").val()
    	    },
    	    success: function (response) {
    	      if (response.rt == "success") {
    	        alert("로그인 완료");
    	        location.href = "/airLanguageHome";
    	      } else {
    	        alert("회원없음");
    	      }
    	    },
    	    error: function (jqXHR, textStatus, errorThrown) {
    	      alert("ajaxUpdate " + jqXHR.textStatus + " : " + jqXHR.errorThrown);
    	    }
    	  });
    	}

    	$("#btnLogin").on("click", function(){
    	  login();
    	});

    	$(document).on("keydown", function(event){
    	  if (event.keyCode === 13) {
    	    login();
    	  }
    	});
        //-----------------------------카카오로그인------------------------------------------------
        
        
        Kakao.init('5c3c7104a83d9002a7ea31b4428c735d'); // test 용
    	console.log(Kakao.isInitialized());
/*     	Kakao.init('ec2655da82c3779d622f0aff959060e6');
    	console.log(Kakao.isInitialized()); */
    	
    	$("#kakaoBtn").on("click", function() {
    		/* Kakao.Auth.authorize({
   		      redirectUri: 'http://localhost:8080/member/kakaoCallback',
   		    }); */
    		
    		Kakao.Auth.login({
   		      success: function (response) {
   		        Kakao.API.request({
   		          url: '/v2/user/me',
   		          success: function (response) {
   		        	  
   		        	  var accessToken = Kakao.Auth.getAccessToken();
   		        	  Kakao.Auth.setAccessToken(accessToken);

   		        	  var account = response.kakao_account;
   		        	  
   		        	  console.log(response)
   		        	  console.log("email : " + account.email);
   		        	  console.log("name : " + account.name);
   		        	  console.log("nickname : " + account.profile.nickname);
  	        	  
	  	        	  $("input[name=snsId]").val("카카오로그인");
	  	        	  $("input[name=user_name]").val(account.profile.nickname);
	  	        	  $("input[name=user_email]").val(account.email);
	  	        	  $("input[name=token]").val(accessToken);
	  	        	  
	  	       
	  	        	  
	  	        	 /*  $("form[name=form]").attr("action", "/member/kakaoLoginProc").submit(); */
					
	  	        	  $.ajax({
						async: true
						,cache: false
						,type:"POST"
						,url: "/member/kakaoLoginProc"
						,data: {"user_name": $("input[name=user_name]").val(), "snsId": $("input[name=snsId]").val(),  "user_email": $("input[name=user_email]").val(), "token": $("input[name=token]").val()}
						,success : function(response) {
							if (response.rt == "fail") {
								alert("아이디와 비밀번호를 다시 확인 후 시도해 주세요.");
								return false;
							} else {
								window.location.href = "/airLanguageHome";
							}
						},
						error : function(jqXHR, status, error) {
							alert("알 수 없는 에러 [ " + error + " ]");
						}
					});
   		          },
   		          fail: function (error) {
   		            console.log(error)
   		          },
   		        })
   		      },
   		      fail: function (error) {
   		        console.log(error)
   		      },
   		    })
		});
        
    	//네이버로그인---------------------------------------------------------------------
    	/* naver login test s */
   		
   		/* var naverLogin = new naver.LoginWithNaverId(
			{
				clientId: "b8EhDTV3tvvAE_gRRBoJ",
				callbackUrl: "http://localhost:8080/userLogin",
				isPopup: false,
				loginButton: {color: "green", type: 3, height: 70} 
			}
		); */
		   $("#naverBtn").on("click", function() {
				var naverLogin = new naver.LoginWithNaverId(
						{
							clientId: "aFywpcUOCSvdpR7BZ5St",
							callbackUrl: "http://localhost:8080/airLogin",
							isPopup: true
						}
					);
					
					naverLogin.init();
					
					naverLogin.getLoginStatus(function (status) {
						
						if(!status)
							naverLogin.authorize();
		                else
		                    setLoginStatus();  //하늘님 메소드 실행 -> Ajax
					});

	   		function setLoginStatus() {
				$.ajax({
					async: true
					,cache: false
					,type:"POST"
					,url: "/member/naverLoginProc"
					,data: {"user_name": naverLogin.user.name, "snsId": "네이버로그인", "user_email": naverLogin.user.email}
				,success : function(response) {
						if (response.rt == "fail") {
							alert("아이디와 비밀번호를 다시 확인 후 시도해 주세요.");
							return false;
						} else {
							window.location.href = "/airLanguageHome";
						}
					},
					error : function(jqXHR, status, error) {
						alert("알 수 없는 에러 [ " + error + " ]");
					}
				});
			}
		   });
    </script>    
</body>
</html>