<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="/resources/xdmin/css/questionReg.css">
    <title>Document</title>
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
                                <a href="">질문하기</a>
                            </div>
                        </div>
                    </li>
                </ul>
            </div>
        </div>
        
    <div class="container">
        <div class="texthead">
            <h3>질문하기</h3>
        </div>
        <p>언어를 선택해주세요</p>
        <select name="" id="">
            <option value="1">영어(미국)</option>
            <option value="1">한국어(한국)</option>
        </select>
        <textarea name="" id="" cols="30" rows="10" placeholder="단어나 문장을 입력해보세요"></textarea>
        <ul class="buttonlist">
            <li><i class="fa-regular fa-image"></i></li>
            <li><i class="fa-solid fa-microphone"></i></li>
        </ul>
        <div class="btn_container">
            <button class="btn_item1">등록하기</button>
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