<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags" %>


<!DOCTYPE html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="/resources/xdmin/css/AirMypage.css" />
    <title>My page</title>
</head>
<body>
<form name=form>
<input type="hidden" name="memberSeq" id="memberSeq"value="<c:out value="${sessSeq }"/>"  >
	<!-- Navbar s  -->
	<%@include file="../../../infra/includeV1/userNavbar.jsp"%>
	<!-- Navbar e  -->  
    
    <!--메인 영역  -->
    <div class="container">
        <div class="mypage_Wrap">
            <div class="mypage_left_Wrap">
                <div class="profile_box">
                    <div class="profile">
                        <img src="https://cdn-icons-png.flaticon.com/512/1226/1226086.png" alt="">
                    </div>
                    <ul class="profile_input">
                        <li><p>아이디</p><input type="text" readonly name="memberSeq" value="<c:out value="${sessId}"/>" ></li>
                        <li><p>이름</p><input type="text" readonly value="<c:out value="${sessName }"/>" name="user_name"></li>
                        <li><p>성별</p><input type="text" readonly value="<c:out value="${item.user_gender }"/>"></li>
                        <li><p>주 언어</p><input type="text" readonly></li>
                        <li><p>배우는 언어</p><input type="text"readonly ></li>
                        <li><button>편집</button></li>
                    </ul>
                </div>
            </div>
            <div class="mypage_right_Wrap">
                <div class="write_box">
                    <ul class="write_input">
                        <h1>나의 이력 리스트</h1>
                        <li>
                            <p>질문내역</p>
                            <a href="#"><div class="write_input_item">질문내역 카운트되는곳</div></a>
                        </li>
                        <li>
                            <p>답변내역</p>
                            <a href="#"><div class="write_input_item">답변내역 카운트되는곳</div></a>
                        </li>
                        <li>
                            <p>좋아요 받은 답변</p>
                            <a href="#"><div class="write_input_item">좋아요내역 카운트되는곳</div></a>
                        </li>
                        <li>
                            <p>채택된 게시물</p>
                            <a href="#"><div class="write_input_item">채택된 게시물 카운트되는곳</div></a>
                        </li>                  
                    </ul>
                </div>
            </div>
        </div>
    </div>

</form>
    <script src="https://kit.fontawesome.com/86d85c3d85.js" crossorigin="anonymous"></script>

</body>
</html>