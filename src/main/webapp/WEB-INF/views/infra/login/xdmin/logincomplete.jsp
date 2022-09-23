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
    <link rel="stylesheet" href="/resources/xdmin/css/signupComplete.css">
    <title>회원가입 완료</title>
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
                            <a href="">질문하기</a>
                        </div>
                    </div>
                </li>
            </ul>
        </div>
    </div>
    
    <!-- 완료박스 -->
<div class="complate_wrap">
    <div class="left_img">
        <img src="/resources/images/fireworks.png" alt="">
    </div>
    <div class="center_text">
        <h1>회원가입이 완료되었습니다!</h1>
        <h2>지금바로 AirLanguage로 떠나보세요</h2>
            <a href="/login"><button class="learn-more">
                <span class="circle" aria-hidden="true">
                <span class="icon arrow"></span>
                </span>
                <span class="button-text">로그인하기</span>
            </button></a>
    </div>
    <div class="right_img">
        <img src="/resources/images/clapping.png" alt="">
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