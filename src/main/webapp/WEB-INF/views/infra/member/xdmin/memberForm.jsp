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
	<title>memberModform</title>
	<!-- CDN : content Delivery Network  -->
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous">
	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.7.1/font/bootstrap-icons.css">
	<link rel="preconnect" href="https://fonts.googleapis.com">
</head>
	<style>
	@import url('https://fonts.googleapis.com/css2?family=Gowun+Dodum&family=Nanum+Brush+Script&family=Song+Myung&display=swap');
		.ng-font2{			
			font-family: 'Gowun Dodum', sans-serif;
		}
	.input-form {
      max-width: 70%;
      margin-top: 80px;
      padding: 32px;
	}
	.box{
		width:150px;
		height:150px;
		border-radius:70%;
		overflow:hidden;
	}
	.profile{
		width:100%;
		height:100%;
		object-fit:cover;
	}
	</style>
<body class="ng-font2">
	<nav class="navbar" style="background-color:#eceff1">
		<div class="container-fluid">
			<a class="navbar-brand" href="memberList.html">
				<i class="fa-solid fa-biohazard"></i>
				WELCOME
			</a>
			
			<button class="btn btn-dark" type="button" data-bs-toggle="offcanvas" data-bs-target="#offcanvasRight"
			    aria-controls="offcanvasRight"><i class="bi bi-list"></i>
			</button>
			<div class="offcanvas offcanvas-end" tabindex="-1" id="offcanvasRight" aria-labelledby="offcanvasRightLabel">
			    <div class="offcanvas-header">
			        <h5 class="offcanvas-title" id="offcanvasRightLabel">메뉴</h5>
			        <button type="button" class="btn-close" data-bs-dismiss="offcanvas" aria-label="Close"></button>
			    </div>
		    	<div class="offcanvas-body">
		    		<div class="rightmenu">
		    			<i class="bi bi-person"></i>
		    		</div>
		    		
		    		<p>환영합니다.<b>관리자</b>님</p>
		    		<hr>
		    		<ul>
		    			<li>로그아웃<i class="fa-solid fa-right-from-bracket"></i>
		    			<li>설정<i class="fa-solid fa-gear"></i>
		    		</ul>
			    </div>
			</div>
		</div>
	</nav>
	<!-- 시작 -->
	<div class="container">
		<div class="input-form-backgroud row " >
        	<div class="input-form col-md-12 mx-auto"style="border:1px solid;">
				<h4 class="mb-3">회원정보수정</h4><hr>	
          		<div class="row justify-content-center" >
          			<div class="col-2">
	        			<div class="box" style="background:black;">
	        				<img class="profile" src="">
	        			</div>
        			</div>
        			<div class="row justify-content-center">
	        			<div class="input-group mb-3"style="width:50%">
	  						<input type="file" class="form-control" id="inputGroupFile02">
							<label class="input-group-text" for="inputGroupFile02">수정</label>
						</div>
					</div>
        		</div>
          		<form class="validation-form" novalidate>
            		<div class="row m-4">
						<div class="col-md-6">
							<p>아이디</p>
							<input type="text" class="form-control" >
						</div>
						<div class="col-md-6 ">
							<p>비밀번호</p>
							<input type="text" class="form-control">
						</div>
					</div>
            		<div class="row m-4">
						<div class="col-md-6">
							<p>국적</p>
							<input type="text" class="form-control" >
						</div>
						<div class="col-md-6 ">
							<p>언어</p>
							<input type="text" class="form-control">
						</div>
					</div>
					<div class="row m-4">
						<div class="col-md-6">
							<p>생년월일</p>
							<input type="text" class="form-control" placeholder="ex)19921013">
						</div>
						<div class="col-md-6 ">
							<p>성별</p>
							<select class="form-select" aria-label="Default select example">
						  		<option selected>성별을 선택하세요</option>
						  		<option value="남">남</option>
						  		<option value="여">여</option>
							</select>
						</div>
					</div>
		         	<div class="row m-4 ">
		            	<div class="col-md-12">
		            		<label for="kokuseki">국적</label>
		            		<input type="text" class="form-control"placeholder="국적을 입력하세요">
		            	</div>	
	            	</div>
	            	<div class="row m-4 ">
		            	<div class="col-md-12">
		            		<label for="kokuseki">이메일</label>
		            		<input type="email" class="form-control" id="email" placeholder="이메일을 입력하세요" required>
		            	</div>	
	            	</div>
		            	
		          
		           
		           		
		            <div class="mb-2">
		              	<label for="address">주소</label>
		              	<input type="text" class="form-control" id="address" placeholder="서울특별시 강남구" required>
		              	<div class="invalid-feedback">주소를 입력해주세요.</div>
		            </div>
		            <div class="mb-2">
		              	<label for="address2">상세주소<span class="text-muted">&nbsp;(필수 아님)</span></label>
		              	<input  type="text" class="form-control" id="address2" placeholder="상세주소를 입력해주세요.">
		            </div>
		            <input class="form-control" type="text" id="sample4_postcode" placeholder="우편번호">
					<input type="button" onclick="sample4_execDaumPostcode()" value="우편번호 찾기"><br>
					<input class="form-control" type="text" id="sample4_roadAddress" placeholder="도로명주소">
					<input class="form-control" type="text" id="sample4_jibunAddress" placeholder="지번주소">
					<span id="guide" style="color:#999;display:none"></span>
					<input type="text" id="sample4_detailAddress" placeholder="상세주소">
					<input type="text" id="sample4_extraAddress" placeholder="참고항목">
		            <hr class="mb-4">
		            
		            
		            <div class="row m-4">
						<div class="col-md-6">
							<p>아이디</p>
							<input type="text" class="form-control" >
						</div>
						<div class="col-md-6 ">
							<p>비밀번호</p>
							<input type="text" class="form-control">
						</div>
					</div>
		            
	          	</form>
        		<div class="mb-4">
	            	<div class="boder d-flex justify-content-center">
	            	<a href="memberList.html">
	            		<button class="btn btn-primary btn-lg btn-block" >수정완료</button>
	            	</a>	
            			<button class="btn btn-primary btn-lg btn-block"style="margin-left:5px;" type="submit">취소</button>
	            	</div>
	            </div>
	    	</div>
		</div>
		
		
	    <footer class="my-3 text-center text-small">
	    	<p class="mb-1">&copy; 2021 YD</p>
	     </footer>
    </div>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2" crossorigin="anonymous"></script>
	<script src="https://kit.fontawesome.com/86d85c3d85.js" crossorigin="anonymous"></script>
	<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script>
    //본 예제에서는 도로명 주소 표기 방식에 대한 법령에 따라, 내려오는 데이터를 조합하여 올바른 주소를 구성하는 방법을 설명합니다.
    function sample4_execDaumPostcode() {
        new daum.Postcode({
            oncomplete: function(data) {
                // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

                // 도로명 주소의 노출 규칙에 따라 주소를 표시한다.
                // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
                var roadAddr = data.roadAddress; // 도로명 주소 변수
                var extraRoadAddr = ''; // 참고 항목 변수

                // 법정동명이 있을 경우 추가한다. (법정리는 제외)
                // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
                if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
                    extraRoadAddr += data.bname;
                }
                // 건물명이 있고, 공동주택일 경우 추가한다.
                if(data.buildingName !== '' && data.apartment === 'Y'){
                   extraRoadAddr += (extraRoadAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                }
                // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
                if(extraRoadAddr !== ''){
                    extraRoadAddr = ' (' + extraRoadAddr + ')';
                }

                // 우편번호와 주소 정보를 해당 필드에 넣는다.
                document.getElementById('sample4_postcode').value = data.zonecode;
                document.getElementById("sample4_roadAddress").value = roadAddr;
                document.getElementById("sample4_jibunAddress").value = data.jibunAddress;
                
                // 참고항목 문자열이 있을 경우 해당 필드에 넣는다.
                if(roadAddr !== ''){
                    document.getElementById("sample4_extraAddress").value = extraRoadAddr;
                } else {
                    document.getElementById("sample4_extraAddress").value = '';
                }

                var guideTextBox = document.getElementById("guide");
                // 사용자가 '선택 안함'을 클릭한 경우, 예상 주소라는 표시를 해준다.
                if(data.autoRoadAddress) {
                    var expRoadAddr = data.autoRoadAddress + extraRoadAddr;
                    guideTextBox.innerHTML = '(예상 도로명 주소 : ' + expRoadAddr + ')';
                    guideTextBox.style.display = 'block';

                } else if(data.autoJibunAddress) {
                    var expJibunAddr = data.autoJibunAddress;
                    guideTextBox.innerHTML = '(예상 지번 주소 : ' + expJibunAddr + ')';
                    guideTextBox.style.display = 'block';
                } else {
                    guideTextBox.innerHTML = '';
                    guideTextBox.style.display = 'none';
                }
            }
        }).open();
    }
</script>
</body>
</html>

