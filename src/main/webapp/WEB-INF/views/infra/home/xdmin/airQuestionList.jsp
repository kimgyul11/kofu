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
<form name = "form">
<input type="hidden" value="<c:out value="${vo.questionSeq}"/>" id="questionSeq" name="questionSeq" >
<input type="hidden" name="thisPage" value="<c:out value="${vo.thisPage}" default="1"/>">
<input type="hidden" name="rowNumToShow" value="<c:out value="${vo.rowNumToShow}"/>">
    <!-- 네비게이션바 영역 시작-->
    <div class="navbar">
        <div class="logo">
            <a href="#">AirLanguage</a>
        </div>
        <div class="nav_search_box">
            <select name="" id="" >
                <option value="">언어선택</option>
                <option value="">한국어</option>
                <option value="">중국어</option>
                <option value="">일본어</option>
                <option value="">영어</option>
            </select>
            <input type="text" placeholder="단어를 입력해보세요.">
        </div>
        <ul class="nav_right_Wrap">
            <li><a href="">HOME</a>
            <li><a href="">MY PAGE</a>
            <li><a href="">로그아웃</a>
            <li><a href="">질문하기</a>
        </ul>
    </div><!-- 네비게이션바 영역 종료-->



    <div class="container">
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
	    		<c:forEach items="${list}" var="list" varStatus="status">
			        <div class="box_container">
			            <div class="box_wrap">
			                <ul class="box_head">
			                    <li>
			                        <ul class="box_profile">
			                            <li class="profile_imgWrap"><img src="https://cdn-icons-png.flaticon.com/512/3135/3135715.png" alt=""></li>
			                            <li class="profile_idwrap"><c:out value="${list.userID }"/></li>
			                            <li class="profile_lvwrap">LV.</li>
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
			                        </ul>
			                    </li>
			                </ul>
			                <a href="javascript:goForm(<c:out value="${list.questionSeq }"/>)">
			                    <div class="box_body">
			                        <p><c:out value="${list.content }"/></p>  
			                    </div>
			                </a>  
			                <ul class="box_footer">
			                    <button><i class="fa-regular fa-bookmark"></i></button>
			                    <button><i class="fa-regular fa-message"></i></button>
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