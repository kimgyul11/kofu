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
<input type="hidden" value="<c:out value="${vo.questionSeq}"/>" id="bookmarkSeq" name="bookmarkSeq">

<!-- Navbar s  -->
<%@include file="../../../infra/includeV1/userNavbar.jsp"%>
<!-- Navbar e  -->    
<!--질문창 s-->
	<div class="container">
        <div class="questionBox">
            <ul class="queBox_head">
                <ul class="head_left">
                <c:choose>
				<c:when test="${item.path ne null}">
 					<li class="qprofile"><img src="<c:out value="${item.path}"/><c:out value="${item.uuidName}"/>"></li>
 					<li class="qid"><c:out value="${item.user_id }"/></li>
				</c:when>
  				<c:otherwise>
					<a href="#"><li class="qprofile"><img src="https://cdn-icons-png.flaticon.com/512/149/149071.png" alt=""></li></a>	
	                <li class="qid"><c:out value="${item.user_id }"/></li>
  				</c:otherwise>
  			</c:choose>
                </ul>	
               	<ul class="head_right">
               	<c:set var="listCodeleanLanguage" value="${CodeServiceImpl.selectListCachedCode('2')}"/>
               	<c:forEach items="${listCodeleanLanguage}" var="Language" varStatus="statusGender">
                           <c:if test="${item.language_select eq Language.ccSeq}">
                				<li><c:out value="${Language.cc_name }"/></li>
                			</c:if>
                	</c:forEach>
                	<li><fmt:formatDate value="${item.writetime }" pattern="yyyy-MM-dd hh:mm"/></li>
           		</ul>
            </ul>
            <div class="queBox_body">
                <p><c:out value="${item.content }"/></p>
            </div>
            <div class="queBox_footer">
         	 	<c:if test="${item.user_id eq sessId }">
           			<button>수정하기</button>
              	</c:if>
				<c:choose>
					<c:when test="${empty bookmar.bookmarkSeq}">
						<button type="button" id="bookInst"><i class="fa-regular fa-bookmark"></i></button>
					</c:when>
					<c:otherwise>
						<button type="button" id="bookInst"><i class="fa-solid fa-bookmark"></i></button>
					</c:otherwise>
				</c:choose>		
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
		
		
<%-- 		<c:if test="${not empty vo.questionSeq}">
		<c:forEach items="${homeList}"  var="homeList" varStatus="status">
		<input type="hidden" class="likeAnswerSeq" name="likeAnswerSeq" id="likeAnswerSeq"value="<c:out value="${homeList.ansSeq }"/>">
		<input type="hidden" value="<c:out value="${homeList.likeSeq }"/>" id="likeSeq" name="likeSeq">
		<div class="answer_wrap">
		   <ul class="answer_profile">
		   <c:choose>
				<c:when test="${homeList.path ne null}">
 					<li class="ans_profileWrap"><img class="ans_profile" src="<c:out value="${homeList.path}"/><c:out value="${homeList.uuidName}"/>"></li>
		       		<li class="ans_name"><c:out value="${homeList.user_id}"/></li>
				</c:when>
  				<c:otherwise>
					<li class="ans_profileWrap"><img class="ans_profile" src="https://cdn-icons-png.flaticon.com/512/149/149071.png" alt=""></li>
  					<li class="ans_name"><c:out value="${homeList.user_id}"/></li>
  				</c:otherwise>
  			</c:choose>
		   </ul>
		   <div class="answer_bubble">
		       <p class="date"><c:out value="${homeList.ansWriteTime }"/></p>
		       <div class="bubble_content">
		           <c:out value="${homeList.ansContent}"/>
		        </div>
		        <ul class="bubble_bottom">
		            <li class="likebtn">하트</li>
		        </ul>
		    </div>
		</div>
		</c:forEach>
		</c:if>	 --%>
		<br><br>
		<br><br>
		<section id="answer__wrap">
		<c:if test="${not empty vo.questionSeq}">
			<input type="hidden" name="ansSeq">
			<c:forEach items="${homeList}"  var="homeList" varStatus="status">
			<input type="hidden" class="likeAnswerSeq" name="likeAnswerSeq" id="likeAnswerSeq"value="<c:out value="${homeList.ansSeq }"/>">
			<input type="hidden" value="<c:out value="${homeList.likeSeq }"/>" id="likeSeq" name="likeSeq">
			
			    <div class="answerbox" id="">
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
			        <div class="footer" id="footer">
				        <c:if test="${item.user_id eq sessId }">
		           			<button type="button" onclick="anspikc(<c:out value="${homeList.ansSeq}"/>);">채택하기</button> 
		              	</c:if>
			            <button>신고하기</button>
			            좋아요수:<c:out value="${fn:length(listCount)}"/>
			              <input type="text" value="<c:out value="${homeList.likeUseNy }"/>" id="likeUseNy" name="likeUseNy">
			            <c:choose>
							<c:when test="${empty homeList.likeUseNy}">
								<button  class="likeInst" type="button" <%-- onclick="javascript:goLike(<c:out value="${homeList.ansSeq }"/>);" --%>><i onclick="javascript:goLike(<c:out value="${homeList.ansSeq }"/>);" id="ruv" class="fa-regular fa-heart"></i></button>
							</c:when>
							<c:otherwise>
								<button  class="likeInst" type="button"  <%-- onclick="javascript:goLike(<c:out value="${homeList.ansSeq }"/>);" --%>><i onclick="javascript:goLike(<c:out value="${homeList.ansSeq }"/>);" id="ruv" class="fa-solid fa-heart"></i></button>
							</c:otherwise>
						</c:choose>
			        </div>
			    </div>
			</c:forEach>
		</c:if>
		</section>
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
 					var likeicon = "";
 					if(response.rt == "success") {
						likeicon += '<i class="fa-solid fa-heart"></i>';
						
						$("#ruv").removeClass("fa-regular fa-heart");
						$('#ruv').html(likeicon);
						$("#answer__wrap").load(window.location.href + " #answer__wrap");
						/* $(this).html("♥");
						  $("#footer").load(window.location.href + "#footer"); */
						/* $("#likeBTN").load(location.href+" #likeBTN"); */
					} else if(response.rt == "delete"){
						likeicon += '<i class="fa-regular fa-heart"></i>';
						$("#ruv").removeClass("fa-solid fa-heart");
						$('#ruv').html(likeicon);
						$("#answer__wrap").load(window.location.href + " #answer__wrap");
						/* $(this).html('♡');
						$("#footer").load(window.location.href + "#footer"); */
						/* $("#likeBTN").load(location.href+" #likeBTN"); */
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