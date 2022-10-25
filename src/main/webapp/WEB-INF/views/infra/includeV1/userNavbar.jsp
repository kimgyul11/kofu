<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

        <!-- 네비게이션바 영역 시작-->
    <div class="navbar">
        <div class="logo">
            <a href="airLanguageHome">AirLanguage</a>
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
            <c:choose>
            	<c:when test="${empty sessSeq }">
            		<li><a href="airLogin">로그인</a></li>
            		<li><a href="/member/airSignupView">신규가입</a></li>
            	</c:when>
            	<c:otherwise>
		            <li><a href="quelist">게시판</a>		
		            <li><a href="quereg">질문하기</a>
		            <%-- <li class="signinStatus"><a href="/member/airMypage"><c:out value="${sessSeq }"/>님 환영합니다.</a></li> --%>
		            <li class="signinStatus"><a onclick="location.href='/airMypage?memberSeq=<c:out value="${sessSeq}"/>'"><c:out value="${sessId }"/>님 환영합니다.</a></li>
		            <li><a href="airLogin" id="btnLogout">로그아웃</a>
            	</c:otherwise>
            </c:choose>
        </ul>
    </div><!-- 네비게이션바 영역 종료-->