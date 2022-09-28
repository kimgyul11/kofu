<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="/resources/xdmin/css/questionReg.css">
    <title>AirLanguage</title>
</head>
<body>
<form name="form"> 
<input type="hidden" name="questionSeq">
    <!-- 네비게이션바s -->
<div class="navbar">
	<div class="logo">
		<a href="#">AirLanguage</a>
	</div>
	<!-- nav 검색창s -->
	<div class="search_box">
		<div class="dropdown">
		<div class="default_option">관심언어로 검색</div>  
			<ul>
			    <li>한국어</li>
			    <li>영어</li>
			</ul>
		</div>
		<div class="search_field">
			<input type="text" class="input" placeholder="Search">
			<i class="fas fa-search"></i>
		</div>
	</div>
	<!--nav 오른쪽 메뉴  -->
	<div class="nav_right">
		<ul>
			<li class="nr_li dd_main">
				<!-- <img src="https://t1.daumcdn.net/cfile/tistory/132C56244AAB40B35D"> -->
				<div class="dd_menu">
					<div class="dd_left">
						<ul>
							<li><i class="fa-solid fa-user"></i></li>
							<li><i class="fa-solid fa-gear"></i></li>
							<li><i class="fas fa-sign-out-alt"></i></li>
						</ul>
					</div>
					<div class="dd_right">
						<ul>
							<li>내정보</li>
							<li>설정</li>
							<li>Logout</li>
						</ul>
					</div>
				</div>
	        </li>
			<li class="nr_li"><i class="fa-solid fa-bell"></i></li>
			<li class="nr_li"><i class="fa-solid fa-house"></i></li>
			<li>
				<div class="btn_wraper">
					<div class="btn btn_1"><a href="">질문하기</a></div>
				</div>
	        </li>
	    </ul>
	</div>
</div>

<div class="container">
	<div class="texthead">
		<h3>질문하기<i class="fa-regular fa-lightbulb"></i></h3>
	</div>
	
	<p>언어를 선택해주세요</p>
	<select  id="language_select"name='language_select' placeholder="언어를 선택해주세요">
		<option>선택</option>
		<option value="1" <c:if test="${item.language_select eq 1 }">selected</c:if>>한국어</option>
		<option value="2" <c:if test="${item.language_select eq 2 }">selected</c:if>>영어</option>
		<option value="3" <c:if test="${item.language_select eq 3 }">selected</c:if>>프랑스어</option>
		<option value="4" <c:if test="${item.language_select eq 4 }">selected</c:if>>일본어</option>
		<option value="5" <c:if test="${item.language_select eq 5 }">selected</c:if>>베트남어</option>
	</select>
	<p>에 대한 </p>
	<div class="textbox">
		<textarea name="content" id="content" placeholder="단어나 문장을 입력해보세요" value="<c:out value="${item.content }"/>"></textarea>
	</div>
	<input type="hidden"
	<ul class="buttonlist">
	    <li><i class="fa-regular fa-image"></i></li>
	    <li><i class="fa-solid fa-microphone"></i></li>
	</ul>
	<div class="btn_container">
	    <button class="btn_item1" id="btnsave"type="button">등록하기</button>
	</div> 
</div>
</form>
    
	<!-- 제이쿼리  -->
	<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js" integrity="sha512-894YE6QWD5I59HgZOGReFYm4dnWc1Qt5NtvYSaNcOP+u1T9qYdvdihz0PPSiiqn/+/3e7Jo4EaG7TubfWGUrMQ==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
    <script src="https://kit.fontawesome.com/86d85c3d85.js" crossorigin="anonymous"></script>
    <script>
        var dd_main = document.querySelector(".dd_main");
    
        dd_main.addEventListener("click", function(){
            this.classList.toggle("active");
        })
        const toggleBtn = document.querySelector('.default_option');
        const menu = document.querySelector('.dropdown ul');
        const icons = document.querySelector('.navbar_linkicon');
    
        toggleBtn.addEventListener('click', () => {
        menu.classList.toggle('active');
        icons.classList.toggle('active');
        });
        
    /* 질문 등록 */
    var form = $("form[name=form]");
    var seq = $("input:hidden[name=questionSeq]");
    var goUrlInst = "questionInst"; 			/* #-> */
    
    $("#btnsave").on("click",function(){
    	if (seq.val() == "0" || seq.val() == ""){
	   		// insert
	   		form.attr("action", goUrlInst).submit();
	   	} else {
	   		// update
	   		/* keyName.val(atob(keyName.val())); */
	   		form.attr("action", goUrlUpdt).submit();
	   	}
	 	});
    </script>
</body>
</html>