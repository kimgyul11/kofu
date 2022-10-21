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
    <link rel="stylesheet" href="/resources/xdmin/css/questionList.css">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Gowun+Dodum&family=Sunflower&display=swap" rel="stylesheet">    
    <title>AirLanguage</title>
</head>
<body>

<form name = "form">
<input type="hidden" value="<c:out value="${vo.questionSeq}"/>" id="questionSeq" name="questionSeq" >
<input type="hidden" name="thisPage" value="<c:out value="${vo.thisPage}" default="1"/>">
<input type="hidden" name="rowNumToShow" value="<c:out value="${vo.rowNumToShow}"/>">
<!-- Navbar s  -->
<%@include file="../../../infra/includeV1/userNavbar.jsp"%>
<!-- Navbar e  -->    
    <!-- 질문리스트 시작-->
    <div class="container">
    	<ul class="menubuttonList">
			<li><button name="languageOption" type="submit" value="9">한국어</button>
			<li><button name="languageOption" type="submit" value="10">중국어</button>
			<li><button name="languageOption" type="submit" value="11">일본어</button>
			<li><button name="languageOption" type="submit" value="12">영어</button>
			<%-- <input type="hidden" name="languageOption" value="<c:out value="${vo.languageOption}"/>"> --%>
		</ul>
    <c:set var="listCodeleanLanguage" value="${CodeServiceImpl.selectListCachedCode('2')}"/>
    <c:choose>
    	<c:when test="${fn:length(list) eq 0}">
			<p>검색조건이 없습니다.
	    </c:when>
	    <c:otherwise>
			    <c:forEach items="${list}" var="list" varStatus="status">
			        <div class="quelist_box">
			            <div class="quelist_profile">
			                <a href="#">
			                    <img src="https://post-phinf.pstatic.net/MjAxODA5MTBfMTk4/MDAxNTM2NTcwNjUwMDUy.F2G6NyAsR5sRYmOL-A8tQJxz6NuHVDARJ3g28EOBoNgg.g2JnkXNFM6A4C7ZloyowHQc_4skHr1PtOsKG0vA641sg.JPEG/%EC%84%B8%EC%A2%85.jpg?type=w1200" alt="" class="">
			                </a>
			                </div>
			            <div class="bubble">
			                <ul class="bubble_head">
			                <li>
			                <c:forEach items="${listCodeleanLanguage}" var="Language" varStatus="statusGender">
			                   <c:if test="${list.language_select eq Language.ccSeq}"> 질문 언어 :<c:out value="${Language.cc_name }"/></c:if>
			                </c:forEach>
			                </li>
			                    <li>작성자 : <c:out value="${list.userID }"/></li>
			                    <li>작성일 : <c:out value="${list.writetime }"/></li>
			                </ul>
			                <a href="javascript:goForm(<c:out value="${list.questionSeq }"/>)">
			                	<div class="bubble_content">
			                    	<p><c:out value="${list.content }"/></p>
			                	</div>
			                </a>
			                <ul class="bubble_footer">
			                    <li><a href=""><i class="fa-solid fa-bookmark"></i></a></li>
			                    <li><a href=""><i class="fa-solid fa-comment"></i></a></li>
			                </ul>
			            </div>
			        </div>
			</c:forEach>
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
	var seq = $("input:hidden[name=questionSeq]");
	var goUrlForm = "/queview";
	var form = $("form[name=form]");
	var goUrlList = "/quelist";

	
	/* 페이지네이션 리스트*/
	goList = function(thisPage) {
		$("input:hidden[name=thisPage]").val(thisPage);
		form.attr("action", goUrlList).submit();
	}
	
	goForm = function(keyValue) {

		/* if(keyValue != 0) seq.val(btoa(keyValue)); */
		seq.val(keyValue);
		form.attr("action", goUrlForm).submit();
	}
	
	


    
</script>
</body>
</html>