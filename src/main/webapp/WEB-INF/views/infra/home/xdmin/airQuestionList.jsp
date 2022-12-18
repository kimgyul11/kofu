<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags" %>
<jsp:useBean id="CodeServiceImpl" class="com.kofu.infra.modules.code.CodeServiceImpl"/>

<!DOCTYPE html>
<html lang="kr">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="/resources/xdmin/css/airQuestionList.css">
    <title>AIRLANGUAGE</title>
</head>
<body>
<form name="form">
<input type="hidden" name="questionSeq">
<input type="hidden" name="thisPage" value="<c:out value="${vo.thisPage}" default="1"/>">
<input type="hidden" name="rowNumToShow" value="<c:out value="${vo.rowNumToShow}"/>">
<input type="hidden" name="bookmark_UserId" value="<c:out value="${sessSeq}"/>">
	<!-- Navbar s  -->
	<%@include file="../../../infra/includeV1/userNavbar.jsp"%>
	<!-- Navbar e  -->
    <a href="#" class="navbar__toogleBtn">
		<i class="fa-solid fa-bars"></i>
	</a>
        <!-- 언어별 버튼영역 s -->
        <div class="language_catagory_wrap" id="lagbtn">
            <p>언어별 선택 <i class="fa-solid fa-magnifying-glass"></i></p>
            <ul class="catagory_list">
                <li class="list_item"><button name="languageOption" type="submit" value="9"><img src="https://cdn-icons-png.flaticon.com/512/330/330591.png" alt=""></li>
                <li class="list_item"><button name="languageOption" type="submit" value="10"><img src="https://cdn-icons-png.flaticon.com/512/5111/5111624.png" alt=""></li>
                <li class="list_item"><button name="languageOption" type="submit" value="11"><img src="https://cdn-icons-png.flaticon.com/512/555/555646.png" alt=""></li>
                <li class="list_item"><button name="languageOption" type="submit" value="12"><img src="https://cdn-icons-png.flaticon.com/512/555/555526.png" alt=""></li>
            </ul>
        </div><!-- 언어별 버튼영역e-->
<!--  파파고api test   -->
<!-- <textarea class="papagoTextareaA"id="send_text"></textarea>
<button type="button" id="jsonConvertStringSend">Eng번역</button>
<button type="button" id="jsonConvertStringSendjp">jpn번역</button>
<textarea class="papagoTextareaB" id="result_text"></textarea> -->
		<!-- 본문영역 s -->
		<c:set var="listCodeleanLanguage" value="${CodeServiceImpl.selectListCachedCode('2')}"/> 
		<div id="top"></div>   	    
        <c:choose>
    		<c:when test="${fn:length(list) eq 0}">
    			<h2>검색조건이 없습니다.</h2>
   			</c:when>
	    	<c:otherwise>
	    	<div class="questionArea">
	    		<c:forEach items="${list}" var="list" varStatus="status">
				<!-- 질문박스s -->
				<div class="questionBox">
				     <div class="questionBox-header">
				         <ul class="header-info">
				         <c:choose>
         					<c:when test="${list.path ne null}">
         						<li class="info-img"><img src="<c:out value="${list.path}"/><c:out value="${list.uuidName}"/>"></li>
   							</c:when>
	         				<c:otherwise>
	         					<li class="info-img"><img src="https://cdn-icons-png.flaticon.com/512/2026/2026487.png"></li>
	         				</c:otherwise>
	         			</c:choose>
				            <li class="open-modal"><c:out value="${list.user_id }"/></li>
				        </ul>
				        <ul class="header-date">
				          <%-- <c:forEach items="${listCodeleanLanguage}" var="Language" varStatus="statusGender">
	                            <c:if test="${list.language_select eq Language.ccSeq}">
	                            	<li>질문 언어 :<c:out value="${Language.cc_name }"/></li>
	                            </c:if>
	                        </c:forEach> --%>
	                        <c:if test="${list.language_select eq 9}">
	                        	<li class="language-select">질문언어<div class="test-item-kor"></li>
	                        </c:if>
	                        <c:if test="${list.language_select eq 10}">
	                        	<li class="language-select">질문언어<div class="test-item-cha"></li>
	                        </c:if>
	                        <c:if test="${list.language_select eq 11}">
	                        	<li class="language-select">질문언어<div class="test-item-jpa"></li>
	                        </c:if>
	                        <c:if test="${list.language_select eq 12}">
	                        	<li class="language-select">질문언어<div class="test-item-usa"></li>
	                        </c:if>
				            	<li class="language-select">작성일:<fmt:formatDate value="${list.writetime }" pattern="yyyy-MM-dd hh:mm"/></li>
				        </ul>
				    </div>
				    <div class="questionBox-body" onclick="goForm(<c:out value="${list.questionSeq }"/>)">
				        <p><c:out value="${list.content }"/></p>
				    </div>
				    <div class="questionCount">
				        <div class="bubble"><c:out value="${list.questionCount }"/></div>
				    </div>
				</div>
				<!-- 질문박스e -->
<div class="userInfo-modal_background"> 
        <div class="userInfo-modal_wrap">
            <div class="userInfo-modal-Box">
                <div>
                    <span class="close-modal">&times;</span>
                </div>
                    <div class="profile-head">
                    	<c:choose>
         					<c:when test="${list.path ne null}">
         						<img class="profile-head_img" src="<c:out value="${list.path}"/><c:out value="${list.uuidName}"/>">
   							</c:when>
	         				<c:otherwise>
	         					<img class="profile-head_img" src="https://cdn-icons-png.flaticon.com/512/2026/2026487.png">
	         				</c:otherwise>
	         			</c:choose>
                        	<p><c:out value="${list.user_id }"/></p>
                        </div>
                        <ul class="profile-body">
                        <c:forEach items="${listCodeleanLanguage}" var="Language" varStatus="statusGender">
                           <c:if test="${list.user_favoriteLanguage eq Language.ccSeq}">
                            <li class="profile-body_item">
                                <p>주로 사용하는 언어</p>
                                <span><c:out value="${Language.cc_name }"/></span>
                            </li>
                            </c:if>
                            </c:forEach>
                            <c:forEach items="${listCodeleanLanguage}" var="Language" varStatus="statusGender">
                           <c:if test="${list.lean_language eq Language.ccSeq}">
                            <li class="profile-body_item">
                                <p>현재 배우는 언어</p>
                                <span><c:out value="${Language.cc_name }"/></span>
                            </li>
                            </c:if>
                            </c:forEach>
                            <li class="profile-body_item">
                                <p>좋아요 받은 수</p>
                                <span>cout</span>
                            </li>
                            <li class="profile-body_item">
                                <p>채택 답변 수</p>
                                <span>cout</span>
                            </li>
                        </ul>
                        <div class="profile-introduce">
                            <p>여기에 텍스트 소개들어갑니다</p>
                        </div>
              
            </div>
        </div>
    </div>
				</c:forEach>
				</div>	    		
			</c:otherwise>
		</c:choose>
	
		<div class="pagination_wrap">
			<ul class="pagination modal-2">
				<c:if test="${vo.startPage gt vo.pageNumToShow}">
				<li> <a href="javascript:goList(${vo.startPage - 1})" class="prev">&laquo </a></li>
				</c:if>
					<c:forEach begin="${vo.startPage}" end="${vo.endPage}" varStatus="i">
						<c:choose>    
							<c:when test="${i.index eq vo.thisPage}">
								<li> <a  class="active" href="javascript:goList(${i.index})">${i.index}</a></li>
							</c:when>
							<c:otherwise>
								<li><a href="javascript:goList(${i.index})">${i.index}</a></li>
							</c:otherwise>
						</c:choose>
					</c:forEach> 
				<c:if test="${vo.endPage ne vo.totalPages}">   
					<li><a  class="next" href="javascript:goList(${vo.endPage + 1})">  &raquo;</a></li>
				</c:if>	
			</ul>
			<br>
		</div>
	</div>
	</form>
	<button class="arrow-up">
        <i class="fa-solid fa-arrow-up"></i>
    </button>
    <button class="question-reg">
        <i class="fa-solid fa-pen"></i>
    </button>
<script src="https://kit.fontawesome.com/86d85c3d85.js" crossorigin="anonymous"></script>
<script src="https://code.jquery.com/jquery-1.12.4.min.js"></script>
<script type="text/javascript">
	var memberseq = $("input:hidden[name=memberSeq]");
	var questionSeq = $("input:hidden[name=questionSeq]");
	var bookSeq = $("input:hidden[name=bookmarkSeq]");
	var goUrlForm = "/queview";
	var form = $("form[name=form]");
	var goUrlList = "/quelist";
	/* 페이지네이션 리스트*/
	goList = function(thisPage) {
		$("input:hidden[name=thisPage]").val(thisPage);
		form.attr("action", goUrlList).submit();
	}
	
	/* 게시글로 이동하기 */
	goForm = function(keyValue) {
		questionSeq.val(keyValue);
		form.attr("action", goUrlForm).submit();
	}
	

    
    
    /* 파파고 번역기 */
    //번역을 위해서 button 이벤트를 위해서 사용하는 것
	$("#jsonConvertStringSend").on(
		"click",
		function() {
			var str = document.getElementById("send_text").value;
			
			$.ajax({
				async : true,
				cache : false,
				type : "post",
				url : "trans",
				data : {"str" : str},
				success : function(response) {
					let tmp = JSON.parse(response);
					console.log(tmp.message.result.translatedText);
					
					document.getElementById("result_text").value = tmp.message.result.translatedText;
				},
				error : function(jqXHR, textStatus, errorThrown) {
					alert("ajaxUpdate " + jqXHR.textStatus + " : "
							+ jqXHR.errorThrown);
				}
			});
		});
    
	

	
	// Modal을 가져온다
	const modal = document.getElementsByClassName("userInfo-modal_background");
	// Modal을 띄우는 클래스 이름을 가져온다.
	const openModalBtn = document.getElementsByClassName("open-modal");
	// Modal을 닫는 close 클래스를 가져온다.
	const closeModalBtn = document.getElementsByClassName("close-modal");
	var funcs = [];


	// Modal을 띄우고 닫는 클릭 이벤트를 정의한 함수
	function Modals(num) {
		return function(){
			// 해당 클래스의 내용을 클릭하면 Modal을 띄운다.
			openModalBtn[num].onclick = function(){
				modal[num].style.display = "block";
				console.log(num);
			};
			
			// 닫기 버튼 클릭하면 Modal이 닫힌다.
			closeModalBtn[num].onclick = function() {
				modal[num].style.display = "none";
			};
		};
	}
	// 원하는 Modal 수만큼 Modal 함수를 호출해서 funcs 함수에 정의한다.
	for(var i = 0; i< openModalBtn.length; i++){
		funcs[i] = Modals(i);
	}
	// 원하는 Modal 수만큼 funcs 함수를 호출한다.
	for(var j = 0; j< openModalBtn.length; j++){
		funcs[j]();
	}
	//미디어쿼리 버튼
	const toggleBtn = document.querySelector('.navbar__toogleBtn');
	const menu = document.querySelector('.nav_right_Wrap');

	toggleBtn.addEventListener('click', () =>{
	    menu.classList.toggle('active');
	});
	
	
	//arrow-up
	const navbar = document.querySelector('.navbar');
	const navbarHeight = navbar.getBoundingClientRect().height;
	
	const arrowUp = document.querySelector('.arrow-up');
	const questionreg = document.querySelector('.question-reg');
	document.addEventListener('scroll',()=>{
	    if(window.scrollY>navbarHeight){
	        arrowUp.classList.add('visible');
	        questionreg.classList.add('visible');
	    }else{
	        arrowUp.classList.remove('visible');
	        arrowUp.classList.remove('visible');
	    }
	});
	//화살표 클릭시 이동
	arrowUp.addEventListener('click', () =>{
	    scrollIntoView('#lagbtn');
	});
	function scrollIntoView(selector) {
	    const scrollTo = document.querySelector(selector);
	    scrollTo.scrollIntoView({ behavior: 'smooth' });
	};
</script>
</body>
</html>