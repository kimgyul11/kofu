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
    <!--  헤더영역 -->
<div class="title">
    <h1>언제,어디서나 원어민과 함께</h1> 
    <h2>AIR LANGUAGE</h2>
    <div class="imgbox">
    	<img class="img" src="https://cdn-icons-png.flaticon.com/512/476/476505.png">
    </div>
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
<!-- 소개영역 -->
<div class="container">
    <div class="topline">
        <div class="topline_text">
            <h1>AIR LANGUAGE소개영역</h1>
        </div>
    </div>
    <main class="middleBx">
        <div class="box">
            <div class="imgBx">
                <img src="/resources/images/talking.png" >
            </div>
            <div class="content">
                <h2>-언어교환 플랫폼-<br><span>무엇이든 묻고 답하며 서로 성장해 나가는 언어교환 플랫폼</span></h2>
            </div>
        </div>
        <div class="box">
            <div class="imgBx">
                <img src="/resources/images/human.png" >
            </div>
            <div class="content">
                <h2>원어민들에게 묻는다<br><span></span></h2>
            </div>
        </div>
        <div class="box">
            <div class="imgBx">
                <img src="/resources/images/jigsaw.png" >
            </div>
            <div class="content">
                <h2>-상황에 맞는 표현-<br><span>적절한 상황에 어떻게 쓰이면<br> 좋을지 물어보세요</span></h2>
            </div>
        </div>
    </main>
</div>
<!-- 최근질문내역 -->
<div class="queContainer">
    <h1>최신 질문</h1>
    <h3>최근에 올라온 질문을 확인해보세요</h3>
    <div class="newQue_wrap" onclick="quelist">
        <div class="newQus_items">
            <div class="items_box">
                <p>sad</p>
                <div class="items_footer">1</div>
            </div>
        </div>
        <div class="newQus_items">
            <div class="items_box">
                <p>sad</p>
                <div class="items_footer">1</div>
            </div>
        </div>
    </div>
</div>    

	<!-- 카드영역 시작 -->
<div class="card_head">
    <h1>어떤질문을 하면 좋을까요?</h1>
    <p>어떤질문을 해야할지 모르겠다면<div class=""></div></p>
</div>
<div class="card_container">
    <div class="card">
        <img src="https://cdn.pixabay.com/photo/2020/08/09/15/55/notebook-5475884_1280.jpg">
        <h4>일기를 쓰거나</h4>
        <p>일본어로 일기를 써보았는데 어떤가요?<br>"過去に住んでいる人は進歩しなかった証拠過去に住んでいる人は進歩しなかった証拠"
        </p>
        <a href="quelist"><p>Move<p></a>
    </div>
    <div class="card">
        <img src="https://cdn.pixabay.com/photo/2022/08/19/01/06/ferris-wheel-7395944_1280.jpg">
        <h4>이런질문을 해보거나</h4>
        <p>이번에 한국으로 여행을 가는데 서울에 있는<br> 놀이공원을 알려주세요<br>-</p>   
        <a href="quelist">Move</a>
    </div>
    <div class="card">
        <img src="https://cdn.pixabay.com/photo/2022/01/23/18/31/minion-6961629_1280.jpg">
        <h4>이런질문도 해보세요</h4>
        <p>"제 한국어 발음 어떤가요?"<br>"私の日本語の発音はどうですか？"<br>"How Do I Look"</p> 
        <a href="quelist">Move</a>
    </div>
</div>
    <!-- 회원가입 페이지 -->
	<ul class="home_signup_wrap">
        <li><p>지금 바로 가입하기</p></li>
        <li><img src="https://cdn-icons-png.flaticon.com/512/1474/1474674.png" alt=""></li>
        <li><button>move>></button></li>
    </ul>
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


</script>

</body>
</html>