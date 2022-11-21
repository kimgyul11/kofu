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
<input type="hidden" value="<c:out value="${vo.questionSeq}"/>" id="questionSeq" name="questionSeq">
<input type="hidden" value="<c:out value="${sessId }"/>" id="userID" name="userID">
<input type="hidden" value="<c:out value="${sessSeq }"/>" id="ansUserId" name="ansUserId">
<input type="hidden" value="<c:out value="${sessSeq }"/>" id="likeUserId" name="likeUserId">
<input type="hidden" value="<c:out value="${sessSeq}"/>" id="bookmark_UserId" name="bookmark_UserId">

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
         	 	<c:if test="${item.user_id eq sessId }">
           			<button>수정하기</button>
              	</c:if>
            </div>
        </div>
        <input type="text" value="<c:out value="${vo.questionSeq}"/>" id="bookmarkSeq" name="bookmarkSeq">
   			<c:choose>
			<c:when test="${empty bookmar.bookmarkSeq}">
				<button type="button" id="bookInst"><i class="fa-regular fa-bookmark"></i></button>
			</c:when>
			<c:otherwise>
   				<button type="button" id="bookInst"><i class="fa-solid fa-bookmark"></i></button>
   			</c:otherwise>
          	</c:choose>		
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
		<br><br>
		<br><br>
		<c:if test="${not empty vo.questionSeq}">
			<input type="hidden" name="ansSeq">
			<c:forEach items="${homeList}"  var="homeList" varStatus="status">
			<input text="hidden" class="likeAnswerSeq" name="likeAnswerSeq" id="likeAnswerSeq"value="<c:out value="${homeList.ansSeq }"/>">
			<input text="hidden" value="<c:out value="${homeList.likeSeq }"/>" id="likeSeq" name="likeSeq">
			
			    <div class="answerbox">
			    	<div class="answer-hearderWrap">
				        <ul class="answer-header">
				            <li class="profile-item">
				                <figure class="user-photo"style="background-image: url(http://t1.daumcdn.net/friends/prod/editor/dc8b3d02-a15a-4afa-a88b-989cf2a50476.jpg);"></figure>
				            </li> 
				            <li class="profile-item"><c:out value="${homeList.user_id}"/></li>
				            <li class="profile-item"><c:out value="${homeList.ansWriteTime }"/></li>
				        </ul>
				        <c:if test="${homeList.ansSelect eq 1 }"><div class="picbox"><img src="https://cdn-icons-png.flaticon.com/512/3135/3135728.png"></div></c:if> 
			        </div>
			        <div class="answer-body">
			            <p><c:out value="${homeList.ansContent}"/></p>
			        </div>
			        <div class="footer">
				        <c:if test="${item.user_id eq sessId }">
		           			<button type="button" onclick="anspikc(<c:out value="${homeList.ansSeq}"/>);">채택하기</button> 
		              	</c:if>
			            <button>신고하기</button>
			              <input type="text" value="<c:out value="${homeList.likeUseNy }"/>" id="likeUseNy" name="likeUseNy">
			            <c:choose>
							<c:when test="${empty homeList.likeUseNy}">
								<button class="likeInst" type="button" onclick="javascript:goLike(<c:out value="${homeList.ansSeq }"/>);">♡</button>
							</c:when>
							<c:otherwise>
								<button class="likeInst" type="button"  onclick="javascript:goLike(<c:out value="${homeList.ansSeq }"/>);">♥</button>
							</c:otherwise>
						</c:choose>
			        </div>
			    </div>
			</c:forEach>
		</c:if>
    </div>
<!--질문창 e-->
	</div>
	</form>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js" integrity="sha512-894YE6QWD5I59HgZOGReFYm4dnWc1Qt5NtvYSaNcOP+u1T9qYdvdihz0PPSiiqn/+/3e7Jo4EaG7TubfWGUrMQ==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
    <script src="https://kit.fontawesome.com/86d85c3d85.js" crossorigin="anonymous"></script>
    <script>
        var form = $("form[name=form]");
    	var seq = $("input:hidden[name=ansSeq]");
        var goUrlInst = "answerInst";     
    	var likeSeq = $("input:hidden[name=likeSeq]");
    	var goUrlSelect = "answerSelect";
    	var selectSeq = $("input:hidden[name=ansSeq]");
    	
    	
        $("#btnsave").on("click",function(){
    	   		// insert
    	   		alert("작성완료");
    	   		form.attr("action", goUrlInst).submit();
    	 	});
    	$("#like").on("click",function(){
    		form.attr("action",goLikeInst).submit();
  	 	});
		function anspikc(keyValue){
	    	seq.val(keyValue);
	    	alert('채택이 완료되었습니다.');
			form.attr("action", goUrlSelect).submit();
		}
		//좋아요버튼 ajax.
		function goLike(keyValue) {
		$.ajax({
				async: false
				,cache: false
				,type: "post"
				,url: "/likeProc"
				,data: {"likeUserId" : $("#likeUserId").val(), "likeAnswerSeq" : JSON.stringify(keyValue)} 
 				,success: function(response) {
					if(response.rt == "success") {
						alert("좋아요등록완료");
						$().text("♥")
					} else if(response.rt == "delete"){
						alert("좋아요삭제");
						$().text('♡');
					} else{
						alert("오류");
					}
				}
				,error : function(jqXHR, textStatus, errorThrown){
					alert("ajaxUpdate " + jqXHR.textStatus + " : " + jqXHR.errorThrown);
				}
			});
		}
		
		
		//북마크  ajax.
		$("#bookInst").on("click",function(){
		$.ajax({
				async: false
				,cache: false
				,type: "post"
				,url: "/bookmarkproc"
				,data: {"bookmark_UserId" : $("#bookmark_UserId").val(), "question_questionSeq" :$('#questionSeq').val()} 
 				,success: function(response) {
 					var bookmarkicon = "";
					if(response.rt == "success") {
						bookmarkicon += '<i class="fa-solid fa-bookmark"></i>';
						alert("북마크에 추가되었습니다.");
						$('#bookInst').html(bookmarkicon)
					} else if(response.rt == "delete"){
						alert("북마크삭제");
						bookmarkicon +='<i class="fa-regular fa-bookmark"></i>';
						$('#bookInst').html(bookmarkicon);
					} else{
						alert("오류");
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