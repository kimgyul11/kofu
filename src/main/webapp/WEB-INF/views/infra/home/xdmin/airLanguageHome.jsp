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
    <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@300&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="/resources/xdmin/css/home.css" />
    <title>HOME</title>
</head>
<body>
<form name="form">

    <!--  헤더영역 -->
    <header class="backcol">
        <nav class="navbar">
            <a href="#" class="navbar_icon">
                <i class="fa-solid fa-plane-departure"></i>
                <span>Air Language</span>        
            </a>
            <ul class="navbar_linkicon">
            <c:choose>
            	<c:when test="${empty sessSeq }">
	            	<li><a href="airLogin">로그인</a></li>
	            	<li><a href="/member/airSignupView">신규가입</a></li>
	            </c:when>
	            <c:otherwise>
		            <li class="signinStatus"><a href="#"><c:out value="${sessId }"/>님 환영합니다.</a></li>
	                <li><a href="login" id="btnLogout">로그아웃</a></li>
                </c:otherwise>
            </c:choose>
                <li><a href="/quelist">게시판</a></li>
            </ul>
            <a href="#" class="navbar_togglebtn">
                <i class="fa-solid fa-bars"></i>
            </a>
        </nav>
        <div class="smallsep heading"></div>
        <div class="title">
            <h1>언제,어디서나 원어민과 함께</h1> 
            <h2>AIR LANGUAGE</h2>
        </div>
    </header>    

<!-- 빠른검색 영역 -->
<div class="search_warp">
    <div class="search_haed">
        <h1>빠른검색</h1>
        <h2>원하는 단어를 빠르게 검색해보세요</h2>
    </div>
    <div class="search_select">
        <span class="custom-select">
        <select id="shOption" name="shOption">
            <option value=""<c:if test="${empty vo.shOption}">selected</c:if>>언어를 선택하세요</option>
            <option value="9"<c:if test="${vo.shOption eq 9}">selected</c:if>>한국어</option>
            <option value="10"<c:if test="${vo.shOption eq 10}">selected</c:if>>중국어</option>
            <option value="11"<c:if test="${vo.shOption eq 11}">selected</c:if>>일본어</option>
            <option value="11"<c:if test="${vo.shOption eq 12}">selected</c:if>>한국어</option>
        </select>
        </span>
        <p>에 대한</p>
    </div>
    <div class="search_textbox">
        <input type="text" name="shValue" id="shValue" value="<c:out value="${vo.shValue}"/>" placeholder="검색어를 입력하세요">
    </div>
    <div class="search_btn">
        <div class="button" type="button" onclick id="btnForm">검색하기</div>
    </div>
</div>



<!-- 소개영역 -->
<div class="container">
    <div class="topline">
        <div class="topline_text">
            <h1>AIR LANGUAGE를 소개합니다</h1>
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
    <div class="signup_container">
        <div class="signup_head">
            <h3>지금 바로 가입</h3>
        </div>
        <div class="signup_body">
            <img src="" alt="">
            <button>가입하기</button>
        </div>
    </div>
</form>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js" integrity="sha512-894YE6QWD5I59HgZOGReFYm4dnWc1Qt5NtvYSaNcOP+u1T9qYdvdihz0PPSiiqn/+/3e7Jo4EaG7TubfWGUrMQ==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
<script src="https://kit.fontawesome.com/86d85c3d85.js" crossorigin="anonymous"></script>
<script type="text/javascript">
var goUrlList = "quelist";
var form = $("form[name=form]")
	$("#btnForm").on("click", function() {
		form.attr("action", goUrlList).submit();
	});
	
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
	
</script>

</body>
</html>