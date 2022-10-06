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
<!-- Navbar s  -->
<%@include file="../../../infra/includeV1/userNavbar.jsp"%>
<!-- Navbar e  -->    

    <!-- 질문리스트 시작-->
    <div class="container">
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
		                <div class="bubble_content">
		                	<a href="queview">
		                    	<p><c:out value="${list.content }"/></p>
		                    </a>
		                </div>
		                <ul class="bubble_footer">
		                    <li><a href=""><i class="fa-solid fa-bookmark"></i></a></li>
		                    <li><a href=""><i class="fa-solid fa-comment"></i></a></li>
		                </ul>
		            </div>
		        </div>
			</c:forEach>
		</c:otherwise>
	</c:choose>
    </div>
    <div class="pagination_wrap">
        <div class="pagination">
            <a href="#">&laquo;</a>
            <a href="#">1</a>
            <a class="active" href="#">2</a>
            <a href="#">3</a>
            <a href="#">4</a>
            <a href="#">5</a>
            <a href="#">6</a>
            <a href="#">&raquo;</a>
        </div>
    </div>

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
</script>
</body>
</html>