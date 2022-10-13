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
    <link rel="stylesheet" href="/resources/xdmin/css/questionView.css">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Gowun+Batang&display=swap" rel="stylesheet">
    <title>AIRLANGUAGE</title>
</head>
<body>
<!-- Navbar s  -->
<%@include file="../../../infra/includeV1/userNavbar.jsp"%>
<!-- Navbar e  -->    

    <!-- Contenedor Principal -->
	<div class="comments-container">
		<ul id="comments-list" class="comments-list">
            <li><!-- 프로필이미지s -->
				<div class="comment-avatar">
					<img src="https://post-phinf.pstatic.net/MjAxODA5MTBfMTk4/MDAxNTM2NTcwNjUwMDUy.F2G6NyAsR5sRYmOL-A8tQJxz6NuHVDARJ3g28EOBoNgg.g2JnkXNFM6A4C7ZloyowHQc_4skHr1PtOsKG0vA641sg.JPEG/%EC%84%B8%EC%A2%85.jpg?type=w1200" alt="">
				</div>
            </li><!-- 프로필이미지e -->
            <li><!-- 질문s -->
				<div class="comment-main-level">
					<div class="comment-box">
						<div class="comment-head">
							<h6 class="comment-name by-author"><a href="#"><c:out value="${item.userID }"/></a></h6>
							<span><c:out value="${item.language_select }"/></span>
							<ul class="iconlist">
								<li><c:out value="${item.writetime }"/>
								<li><i class="fa-solid fa-comment"></i>
								<li><i class="fa fa-heart"></i>
	                            <li><i class="fa-solid fa-bookmark"></i>
							</ul>
						</div>
						<div class="comment-content">
							<c:out value="${item.content }"/>
                        </div>
					</div>
				</div>
			</li><!-- 질문e -->
		</ul>
		<!--답변창s -->
		<div class="answerWrap">
			<div class="answerContent">
				<textarea placeholder="<c:out value="${item.userID }"/>님이 당신의 답변을 기다리고 있습니다."></textarea>
			</div>
			<div class="answerfooter">
				<ul class="fileupload">
					<li><input type="hidden">
				</ul>
				<ul class="answerbtn">
					<li><button><i class="fa-regular fa-image"></i></button>
					<li><button><i class="fa-regular fa-floppy-disk"></i></button>
				</ul>
			</div>
		</div><!--답변창e -->
		<br><br>
		<hr>
		<br><br>
		
		<c:if test="${not empty item.ansQuestionSeq}">
<ul id="comments-list" class="comments-list">
         <li><!-- 프로필이미지s -->
	<div class="comment-avatar">
		<img src="https://post-phinf.pstatic.net/MjAxODA5MTBfMTk4/MDAxNTM2NTcwNjUwMDUy.F2G6NyAsR5sRYmOL-A8tQJxz6NuHVDARJ3g28EOBoNgg.g2JnkXNFM6A4C7ZloyowHQc_4skHr1PtOsKG0vA641sg.JPEG/%EC%84%B8%EC%A2%85.jpg?type=w1200" alt="">
	</div>
         </li><!-- 프로필이미지e -->
         <li><!-- 질문s -->
	<div class="comment-main-level">
		<div class="comment-box">
			<div class="comment-head">
				<h6 class="comment-name by-author"><a href="#"><c:out value="${item.ansUserId}"/></a></h6>
				<ul class="iconlist">
					<li><c:out value="${item.ansWriteTime }"/>
					<li><i class="fa-solid fa-comment"></i>
					<li><i class="fa fa-heart"></i>
                          <li><i class="fa-solid fa-bookmark"></i>
				</ul>
			</div>
			<div class="comment-content">
				<c:out value="${item.ansContent}"/>
               </div>
		</div>
	</div>
</li><!-- 질문e -->
</ul>
</c:if>
<!-- 메인레벨 답변 -->
	<c:choose>
	<c:when test="${not empty item.ansQuestionSeq}">
	<li>
	<div class="comment-main-level">
	<!-- 이미지 -->
	<div class="comment-avatar"><img src="http://i9.photobucket.com/albums/a88/creaticode/avatar_2_zps7de12f8b.jpg" alt=""></div>
	<!-- Contenedor del Comentario -->
	<div class="comment-box">
		<div class="comment-head">
			<h6 class="comment-name"><a href="http://creaticode.com/blog"><c:out value="${item.ansUserId }"/></a></h6>
			<span><c:out value="${item.ansWriteTime }"/></span>
			<i class="fa-solid fa-comment"></i>
			<i class="fa fa-heart"></i>
			<i class="fa-solid fa-bookmark"></i>
		</div>
		<div class="comment-content">
			<c:out value="${item.ansContent }"/>
		</div>
	</div>
</div>
</li>
</c:when>
<c:otherwise></c:otherwise>
</c:choose>










	</div>
	
	
	
	
	
	<script src="https://code.jquery.com/jquery-1.12.4.min.js"></script>
    <script src="https://kit.fontawesome.com/86d85c3d85.js" crossorigin="anonymous"></script>
    <script>
    
    	var seq = $("input:hidden[name=questionSeq]");
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
    </script>
</body>
</html>