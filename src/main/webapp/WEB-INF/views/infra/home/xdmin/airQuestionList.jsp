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
<form name = "form" action="">
<input type="hidden" name="questionSeq">
<input type="hidden" name="thisPage" value="<c:out value="${vo.thisPage}" default="1"/>">
<input type="hidden" name="rowNumToShow" value="<c:out value="${vo.rowNumToShow}"/>">
<input type="hidden" name="bookmark_UserId" value="<c:out value="${sessSeq}"/>">
	<!-- Navbar s  -->
	<%@include file="../../../infra/includeV1/userNavbar.jsp"%>
	<!-- Navbar e  -->    
    <div class="container">
    <a href="#" class="navbar__toogleBtn">
   			<i class="fa-solid fa-bars"></i>
		</a>
        <!-- 언어별 버튼영역 s -->
        <div class="language_catagory_wrap">
            <p>언어별 선택 <i class="fa-solid fa-magnifying-glass"></i></p>
            <ul class="catagory_list">
                <li class="list_item"><button name="languageOption" type="submit" value="9"><img src="https://cdn-icons-png.flaticon.com/512/330/330591.png" alt=""></li>
                <li class="list_item"><button name="languageOption" type="submit" value="10"><img src="https://cdn-icons-png.flaticon.com/512/5111/5111624.png" alt=""></li>
                <li class="list_item"><button name="languageOption" type="submit" value="11"><img src="https://cdn-icons-png.flaticon.com/512/555/555646.png" alt=""></li>
                <li class="list_item"><button name="languageOption" type="submit" value="12"><img src="https://cdn-icons-png.flaticon.com/512/555/555526.png" alt=""></li>
            </ul>
        </div><!-- 언어별 버튼영역e-->
		<!-- 본문영역 s -->
		<c:set var="listCodeleanLanguage" value="${CodeServiceImpl.selectListCachedCode('2')}"/>    	    
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
				            <li><c:out value="${list.user_id }"/></li>
				        </ul>
				        <ul class="header-date">
				          <c:forEach items="${listCodeleanLanguage}" var="Language" varStatus="statusGender">
	                            <c:if test="${list.language_select eq Language.ccSeq}"><li>질문 언어 :<c:out value="${Language.cc_name }"/></li></c:if>
	                        </c:forEach>
				            <li>작성일:<fmt:formatDate value="${list.writetime }" pattern="yyyy-MM-dd hh:mm"/></li>
				            
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

	    		
			        <%-- <div class="box_container">
			            <div class="box_wrap">
			                <ul class="box_head">
			                    <li>
			                        <ul class="box_profile">
			                            <li class="profile_imgWrap"><img src="https://cdn-icons-png.flaticon.com/512/3135/3135715.png" alt=""></li>
			                            <li class="profile_idwrap"><c:out value="${list.user_id }"/></li>
			                            <li class="profile_lvwrap">
			                            	<c:choose>
			                            		<c:when test="${list.user_level eq 1}"><h1>레벨1</h1></c:when>
			                            	</c:choose>
			                            </li>
			                        </ul>
			                    </li>
			                    <li>
			                        <ul class="box_info">
				                        <li>
					                        <c:forEach items="${listCodeleanLanguage}" var="Language" varStatus="statusGender">
					                            <c:if test="${list.language_select eq Language.ccSeq}">질문 언어 :<c:out value="${Language.cc_name }"/></c:if>
					                        </c:forEach>
				                        </li>
			                        	<li>작성일:<c:out value="${list.writetime }"/></li>
			                        	<li>답변수:<c:out value="${list.questionCount }"/></li>    
			                        </ul>
			                    </li>
			                </ul>
				                <a href="javascript:goForm(<c:out value="${list.questionSeq }"/>)">
				                    <div class="box_body">
				                        <p><c:out value="${list.content }"/></p>  
				                    </div>
				                </a>
			                <ul class="box_footer">
			                	<input type="hidden" value="<c:out value="${list.questionSeq}"/>" name="question_questionSeq" >
			                    <button><i class="fa-regular fa-message"></i></button>
			                </ul>
			            </div>
			        </div> --%>
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
<script src="https://kit.fontawesome.com/86d85c3d85.js" crossorigin="anonymous"></script>
<script src="https://code.jquery.com/jquery-1.12.4.min.js"></script>
<script type="text/javascript">
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
	
    var goUrlInst = "qlbookmark"; 			/* #-> */
    
	$("#bookmarkInst").on("click", function(){
		form.attr("action", goUrlInst).submit();
	});
</script>
</body>
</html>