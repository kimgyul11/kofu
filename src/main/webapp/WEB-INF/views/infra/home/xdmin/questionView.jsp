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
    <title>AIRLANGUAGE</title>
</head>
<body>
<form name="form">

<input type="hidden" value="<c:out value="${vo.questionSeq}"/>" id="questionSeq" name="questionSeq" >
<input type="hidden" value="<c:out value="${sessId }"/>" id="userID" name="userID">
<input type="hidden" value="<c:out value="${sessSeq }"/>" id="ansUserId" name="ansUserId">
<input type="hidden" value="<c:out value="${vo.ansSeq}"/>" id="ansSeq" name="ansSeq" >

<!-- Navbar s  -->
<%@include file="../../../infra/includeV1/userNavbar.jsp"%>
<!-- Navbar e  -->    
<!--질문창 s-->
	<div class="container">
        <div class="questionBox">
            <ul class="queBox_head">
                <ul class="head_left">
                	<a href="#"><li class="qprofile"><img src="https://thumb.zumst.com/640x480/https://static.hubzum.zumst.com/hubzum/2020/07/06/10/db4a299640334858979ee4b349ae7a35.jpg" alt=""></li></a>	
	                <li class="qid"><c:out value="${item.user_id }"/></li>
	                <li class="qlevel">
	                <c:choose>
	               		<c:when test="${item.user_level eq 1}"><img src="https://cdn-icons-png.flaticon.com/512/4262/4262616.png" alt=""></c:when>
	               		<c:when test="${item.user_level eq 2}"><img src="https://cdn-icons-png.flaticon.com/512/4262/4262616.png" alt=""></c:when>
	               		<c:when test="${item.user_level eq 3}"><img src="https://cdn-icons-png.flaticon.com/512/4262/4262616.png" alt=""></c:when>
	               	</c:choose>
                	</li>
                </ul>	
               	<ul class="head_right">
                	<li><c:out value="${item.language_select }"/></li>
                	<li><c:out value="${item.writetime }"/></li>
           		</ul>
            </ul>
            <div class="queBox_body">
                <p><c:out value="${item.content }"/></p>
            </div>
            <div class="queBox_footer">
                <button><i class="fa-regular fa-bookmark"></i></button>
            </div>
        </div>
        <!-- 답변창s -->
        <div class="answerWrap">
			<div class="answerContent">
				<textarea name="ansContent" value="<c:out value="${dto.ansContent }"/>" placeholder="<c:out value="${item.user_id }"/>님이 당신의 답변을 기다리고 있습니다."></textarea>
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
    </div>
<!--질문창 e-->
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