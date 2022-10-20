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
<form name="form">
<input type="hidden" value="<c:out value="${vo.questionSeq}"/>" id="questionSeq" name="questionSeq" >
<input type="hidden" value="<c:out value="${sessId }"/>" id="userID" name="userID">
<input type="hidden" value="<c:out value="${vo.ansSeq}"/>" id="ansSeq" name="ansSeq" >

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
				<textarea name="ansContent" value="<c:out value="${item.ansContent }"/>" placeholder="<c:out value="${item.userID }"/>님이 당신의 답변을 기다리고 있습니다."></textarea>
			</div>
			<div class="answerfooter">
				<ul class="fileupload">
					<li><input type="hidden">
				</ul>
				<ul class="answerbtn">
					<li><button><i class="fa-regular fa-image"></i></button>
					<li><button type="button" id="btnsave"><i class="fa-regular fa-floppy-disk"></i></button>
				</ul>
			</div>
		</div><!--답변창e -->
		
		<br><br>
		<br><br>

<%-- 		<c:when test="${not empty homeList.ansQuestionSeq}"> --%>
			<c:if test="${not empty vo.questionSeq}">
			<c:forEach items="${homeList}" var="homeList" varStatus="status">
				<ul id="comments-list" class="comments-list">
	         		<li><!-- 질문s -->
					<div class="comment-main-level">
						<div class="comment-box">
							<div class="comment-head">
								<h6 class="comment-name by-author"><a href="#"><c:out value="${homeList.ansUserId}"/></a></h6>
								<ul class="iconlist">
									<li><c:out value="${homeList.ansWriteTime }"/>
									<li><i class="fa-solid fa-comment"></i>
									<li><i class="fa fa-heart"></i>
		                          <li><i class="fa-solid fa-bookmark"></i>
								</ul>
							</div>
							<div class="comment-content">
								<c:out value="${homeList.ansContent}"/>
			               </div>
						</div>
					</div>
					</li><!-- 질문e -->
				</ul>
		</c:forEach>
		</c:if>
	</div>
	</form>
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
        
        var form = $("form[name=form]");
    	var seq = $("input:hidden[name=ansSeq]");
        var goUrlInst = "answerInst";     
        
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