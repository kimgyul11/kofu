<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags" %>

<!DOCTYPE html>
<html lang="kr">
<head>
    <meta charset="UTF-8">
    <link rel="stylesheet" href="/resources/xdmin/css/home.css" />
    <title>HOME</title>
</head>
<body>
<form name="form">
<input type="hidden" name="memberSeq" value="<c:out value="${sessSeq }"/>" >

<!-- Navbar s  -->
<%@include file="../../../infra/includeV1/userNavbar.jsp"%>
<!-- Navbar e  -->   
	<div class="mainSearchWrap">
	
    <h1>언제,어디서나 원어민과 함께</h1> 
    <h2>AIR LANGUAGE</h2>
    <div class="mainimgbox">
    	<img class="mainimg" src="https://cdn-icons-png.flaticon.com/512/476/476505.png">
    </div>
    <div class="searchbar">
	    <ul class="search__option">
	        <li class="btn">
	            <input type="radio" id="ko" name="shOption" value="9" <c:if test="${vo.shOption eq 9}">selected</c:if>>
	            <label class="listitem" for="ko"><img src="https://cdn-icons-png.flaticon.com/512/5111/5111586.png" alt=""></label>
	        </li>
	        <li class="btn">
	            <input type="radio" id="cn" name="shOption" value="10" <c:if test="${vo.shOption eq 10}">selected</c:if>>
	            <label class="listitem" for="cn"><img src="https://cdn-icons-png.flaticon.com/512/323/323363.png" alt=""></label>
	        </li>
	        <li class="btn">
	            <input type="radio" id="jp" name="shOption" value="11" <c:if test="${vo.shOption eq 11}">selected</c:if>>
	            <label class="listitem" for="jp"><img src="https://cdn-icons-png.flaticon.com/512/323/323308.png" alt=""></label>
	        </li>
	        <li class="btn">
	            <input type="radio" id="en" name="shOption" value="12" <c:if test="${vo.shOption eq 12}">selected</c:if>>
	            <label class="listitem" for="en"><img src="https://cdn-icons-png.flaticon.com/512/197/197484.png" alt=""></label>
	        </li>
	    </ul>
	    <div class="search__value">
	        <input type="text" placeholder="검색어를 입력하세요" name="shValue" value="<c:out value="${vo.shValue}"/>" id="search" onkeyup="enterkey();">
	    </div>
	</div>
</div>
 	 <a href="#" class="navbar__toogleBtn">
		<i class="fa-solid fa-bars"></i>
	</a>
 <div class="showbox">
        <ul class="boxwrap">
            <li class="box"><h1>지금 바로 출발할 준비 되었나요?</h1></li>
            <li class="box"><h1>AIR LANGUAGE에서 </h1></li>
            <li class="box"><h1>무한한 가능성을 펼쳐보세요</h1></li>
            <li class="box"><h1></h1></li>
            <li class="box"><img src="https://cdn-icons-png.flaticon.com/512/4524/4524057.png" ></li>
        </ul>
        <div class="boxwrap2">
            <div class="mimgbox">
                <img src="https://cdn-icons-png.flaticon.com/512/436/436354.png" alt="">
            </div>
            <ul class="mtextbox">
                <li><h1>새로운 언어를 배울 시간</h1></li>
                <li><h1>자신의 언어로 도와주거나</h1></li>
                <li><h1>다른사람들에게 도움을 받아보세요</h1></li>
            </ul>
        </div>
        <div class="coment">
            <div class="imgbox">
                <img src="https://cdn-icons-png.flaticon.com/512/9041/9041407.png">
            </div>
            <div class="textbox">
                <h1>자유롭게 묻고 답해보세요</h1>
                <h2 style="color:tomato;">지금 바로 질문하기>></h2><br><br>
                <p>모르는 단어를 물어보거나<br>궁금한 모든것을 자신의 언어로 물어보세요</p>
            </div>
        </div>
        <div class="coment">
            <div class="textbox">
                <h1>언제든지 꺼내보세요</h1>
                <h2><a onclick="location.href='airMypage?memberSeq=<c:out value="${sessSeq}"/>'">마이페이지로 이동</h2><br><br>
                <p>내가 궁금한 질문들을 저장해보세요<br>마이페이지에서 확인 하실 수 있습니다.</p>
            </div>
            <div class="imgbox">
                <img src="https://cdn-icons-png.flaticon.com/512/5494/5494525.png">
            </div>
        </div>
        <div class="coment">
            <div class="imgbox">
                <img src="https://cdn-icons-png.flaticon.com/512/5352/5352459.png">
            </div>
            <div class="textbox">
                <h1>당신의 가능성을 펼칠 시간</h1>
                <h2>지금바로 시작 해보세요</h2><br><br>
            </div>
        </div>
    </div>
</form>
   

<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js" integrity="sha512-894YE6QWD5I59HgZOGReFYm4dnWc1Qt5NtvYSaNcOP+u1T9qYdvdihz0PPSiiqn/+/3e7Jo4EaG7TubfWGUrMQ==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
<script src="https://kit.fontawesome.com/86d85c3d85.js" crossorigin="anonymous"></script>
<script type="text/javascript">
//미디어쿼리 버튼
const toggleBtn = document.querySelector('.navbar__toogleBtn');
const menu = document.querySelector('.nav_right_Wrap');

toggleBtn.addEventListener('click', () =>{
    menu.classList.toggle('active');
});

var goUrlList = "quelist";
var form = $("form[name=form]");
	$("#btnForm").on("click", function() {
		form.attr("action", goUrlList).submit();
	});
	
	$("#btnsearch").on("click", function() {
		form.attr("action", goUrlList).submit();
	});
	
function enterkey() {
	if (window.event.keyCode == 13) {
	     // 엔터키가 눌렸을 때 실행할 내용
	     if($("input[name=shOption]:radio:checked").length < 1){
			alert("언어를 선택해 주세요!");
			$("#search").focus();
	     }else if($("#search").val() == ""){
	    	 alert("검색어를 입력해주세요");
	         $("#search").focus();
	         return false;
	     }else{
	    	 form.attr("action", goUrlList).submit();	 
	     }
	}
}
	
	
	
$("#btnLogout").on("click", function(){
	$.ajax({
		async: true 
		,cache: false
		,type: "post"
		,url: "/member/logoutProc"
		,data: {}
		,success: function(response) {
			if(response.rt == "success") {
				location.href = URL_LOGINFORM;
			} else {
				// by pass
			}
		}
		,error : function(jqXHR, textStatus, errorThrown){
			alert("ajaxUpdate " + jqXHR.textStatus + " : " + jqXHR.errorThrown);
		}
	});
});	

var seq = $("input:hidden[name=memberSeq]");
var goUrlForm = "/member/airMaypage";
goForm = function(keyValue) {
	/* if(keyValue != 0) seq.val(btoa(keyValue)); */
	seq.val(keyValue);
	form.attr("action", goUrlForm).submit();
}



//첫번째영역
let observer = new IntersectionObserver((e)=>{
    e.forEach((box)=>{
        if(box.isIntersecting){
            box.target.style.opacity = 1;
            box.target.style.transform = 'translateY(30px)';
        }else{
            box.target.style.opacity = 0;
            box.target.style.transform = 'translateY(30%)';
        }
    })
})
let box = document.querySelectorAll(".box")
observer.observe(box[0])
observer.observe(box[1])
observer.observe(box[2])
observer.observe(box[4])
//감시해주는 객체

//두번째영역
let observer2 = new IntersectionObserver((e)=>{
    e.forEach((box2)=>{
        if(box2.isIntersecting){
            box2.target.style.opacity = 1;
            box2.target.style.transform = 'translateX(-15%)';
        }else{
            box2.target.style.opacity = 0;
            box2.target.style.transform = 'translateX(-10%)';
        }
    })
})
let box2 = document.querySelectorAll(".boxwrap2")
observer2.observe(box2[0]);


//세번째영역
let observer3 = new IntersectionObserver((e)=>{
    e.forEach((box3)=>{
        if(box3.isIntersecting){
            box3.target.style.opacity = 1;
            box3.target.style.transform = 'translateY(-40%)';
        }else{
            box3.target.style.opacity = 0;
            box3.target.style.transform = 'translateY(-15%)';
        }
    })
})
let box3 = document.querySelectorAll(".coment")
observer3.observe(box3[0]);
observer3.observe(box3[1]);
observer3.observe(box3[2]);
//감시해주는 객체



</script>

</body>
</html>