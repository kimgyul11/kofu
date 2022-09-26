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
    <link rel="stylesheet" href="/resources/xdmin/css/questionList.css">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Gowun+Dodum&family=Sunflower&display=swap" rel="stylesheet">    
    <title>AirLanguage</title>
</head>
<body>
    <!-- 네비게이션바 -->
    <div class="navbar">
        <div class="logo">
            <a href="#">AirLanguage</a>
        </div>
        <div class="search_box">
            <div class="dropdown">
                <div class="default_option">관심언어로 검색</div>  
                <ul>
                    <li>한국어</li>
                    <li>영어</li>
                </ul>
            </div>
            <div class="search_field">
                <input type="text" class="input" placeholder="Search">
                <i class="fas fa-search"></i>
            </div>
        </div>
        <div class="nav_right">
            <ul>
                <li class="nr_li dd_main">
                    <img src="https://t1.daumcdn.net/cfile/tistory/132C56244AAB40B35D">
                    <!-- 메뉴리스트 -->
                    <div class="dd_menu">
                        <div class="dd_left">
                            <ul>
                                <li><i class="fa-solid fa-user"></i></li>
                                <li><i class="fa-solid fa-gear"></i></li>
                                <li><i class="fas fa-sign-out-alt"></i></li>
                            </ul>
                        </div>
                        <div class="dd_right">
                            <ul>
                                <li>내정보</li>
                                <li>설정</li>
                                <li>Logout</li>
                            </ul>
                        </div>
                    </div>
                </li>
                <li class="nr_li">
                    <i class="fa-solid fa-bell"></i>
                </li>
                <li class="nr_li">
                    <i class="fa-solid fa-house"></i>
                </li>
                <li>
                    <div class="btn_wraper">
                        <div class="btn btn_1">
                            <a href="quereg">질문하기</a>
                        </div>
                    </div>
                </li>
            </ul>
        </div>
    </div>
    <!-- 네비게이션 종료 -->

    <!-- 질문리스트 시작-->
    <div class="container">
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
		                    <li>질문 언어 :<c:out value="${list.language_select}"/></li>
		                    <li>작성자 : <c:out value="${list.userID }"/></li>
		                    <li>작성일 : <c:out value="${list.writetime }"/></li>
		                </ul>
		                <div class="bubble_content">
		                	<a href="#">
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