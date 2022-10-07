<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

	<nav class="nav_warp">
        <div class="nav_logo">
            <a href=""><i class="fa-solid fa-plane-departure"></i>AirLanguage</a>
        </div>
        <ul class="nav_list">
        	<li><a><c:out value="${sessId }"/>님 환영합니다.</a></li>
            <li><a href="#">프로필이미지</a></li>
            <li><a   id="btnLogout">로그아웃</a></li>
        </ul>
    </nav>

    <!-- 사이드 메뉴 -->
    <ul class="side-menu">
        <li><a href="#"><i class="fa-solid fa-house"></i>홈</a></li>
        <li><a href="/xdmin/codeList"><i class="fa-solid fa-folder"></i>코드관리</a></li>
        <li><a href="/AircodeGroup/codeGroupList"><i class="fa-regular fa-folder"></i>코드그룹관리</a></li>
        <li><a href="/xadmin/memberlist"><i class="fa-regular fa-user"></i>멤버관리</a></li>
        <li><a href="/xadmin/boardList"><i class="fa-solid fa-clipboard-list"></i>게시판관리</a></li>
    </ul>