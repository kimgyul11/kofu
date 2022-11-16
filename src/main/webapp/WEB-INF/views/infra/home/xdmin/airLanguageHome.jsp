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
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link rel="stylesheet" href="/resources/xdmin/css/home.css" />
    <link rel="stylesheet" href="/resources/xdmin/css/style.css" />
    <title>HOME</title>
</head>
<body>
<form name="form">
<input type="hidden" name="memberSeq" value="<c:out value="${sessSeq }"/>" >
<!-- Navbar s  -->
<%@include file="../../../infra/includeV1/userNavbar.jsp"%>
<!-- Navbar e  -->   
<div class="title">
    <h1>언제,어디서나 원어민과 함께</h1> 
    <h2>AIR LANGUAGE</h2>
    <div class="imgbox">
    	<img class="img" src="https://cdn-icons-png.flaticon.com/512/476/476505.png">
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








</form>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js" integrity="sha512-894YE6QWD5I59HgZOGReFYm4dnWc1Qt5NtvYSaNcOP+u1T9qYdvdihz0PPSiiqn/+/3e7Jo4EaG7TubfWGUrMQ==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
<script src="https://kit.fontawesome.com/86d85c3d85.js" crossorigin="anonymous"></script>
<script type="text/javascript">
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


//미디어쿼리 버튼
const toggleBtn = document.querySelector('.navbar__toogleBtn');
const menu = document.querySelector('.nav_right_Wrap');

toggleBtn.addEventListener('click', () =>{
    menu.classList.toggle('active');
});
</script>

</body>
</html>