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
    <link rel="stylesheet" href="/resources/xdmin/css/mypageMod.css">
    <title>수정</title>
</head>
<body>
        <div class="navbar">
            <div class="logo">
                <a href="#"><i class="fa-solid fa-plane-departure"></i>AirLanguage</a>
            </div>
            <div class="search_box">
                <div class="dropdown">
                    <div class="default_option">관심언어로 검색</div>  
                    <ul>
                        <li>영어</li>
                        <li>한국어</li>
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
    
    <!--마이페이지 리스트  -->
    <div class="container1">
        <div class="info_head">
            <ul class="info_haed_nav">
                <li>
                <img src="https://t1.daumcdn.net/cfile/tistory/132C56244AAB40B35D" alt=""class="info_head_profile">
                </li>
                <li>세종대왕</li>
                <li>한국어,상급자</li>
            </ul>
            <ul class="info_head_link">
                <li><a href="#"><i class="fa-solid fa-square-pen"></i></i></a><li>
                <li></li>
            </ul>
        </div>
        <div class="info_main">
            <div class="main_item1">
                <ul class="main_item1_head">
                    <li>사용언어</li>
                    <li></li>
                    <li></li>
                </ul>
                <div class="main_item1_body">
                    한국어 : 유창함
                </div>
            </div>
            <div class="main_item2">
                <a href="#" class="main_item2_quetion">
                    <ul class="que_title">
                        <li>질문수</li>
                        <li><i class="fa-solid fa-question"></i></li>
                    </ul>
                    <div class="que_body">
                        <p>0</p>
                    </div>
                </a>
                <a href="#" class="main_item2_answer">
                    <ul class="ans_title">
                        <li>답변수</li>
                        <li><i class="fa-solid fa-pen-to-square"></i></li>
                    </ul>
                    <div class="ans_body">
                        <p>12</p>
                    </div>
                </a>
            </div>
            <a href="#" class="main_itembox">
                <ul class="itembox_list">
                    <li><i class="fa-solid fa-thumbs-up"></i></li>
                    <li> 좋아요수</li>
                </ul>
                <span>55</span>
            </a>
            <a href="#" class="main_itembox">
                <ul class="itembox_list">
                    <li><i class="fa-solid fa-clipboard-check"></i></li>
                    <li> 채택된 답변수</li>
                </ul>
                <span>12</span>
            </a>
            <a href="#" class="main_itembox">
                <ul class="itembox_list">
                    <li><i class="fa-solid fa-bookmark"></i></li>
                    <li> 즐겨찾기</li>
                </ul>
                <span>2</span>
            </a>
        </div>
    </div>

    <!-- 두번째 정보 -->
    <div class="container2">    
        <div class="infobox">
            <ul class="infobox_head">
                <li><i class="fa-solid fa-language"></i><span>사용언어</span></li>
                <li><a href="#">+추가하기</a></li>
            </ul>
            <div class="infobox_body">
                <input type="text">
            </div> 
        </div>
        <div class="infobox">
            <ul class="infobox_head">
                <li><i class="fa-solid fa-pen-fancy"></i><span>관심언어</span></li>
                <li><a href="#">+추가하기</a></li>
            </ul>
            <div class="infobox_body">
                <input type="text" value="한국어">
            </div> 
        </div>
        <div class="infobox">
            <ul class="infobox_head2">
                <li><i class="fa-solid fa-earth-asia"></i><span>거주국가</span></li>
                
            </ul>
            <div class="infobox_body">
                <input type="text">
            </div> 
        </div>
        <div class="infobox">
            <ul class="infobox_head2">
                <li><i class="fa-solid fa-face-smile"></i><span>자기소개</span></li>
            </ul>
            <div class="infobox_body_introduce">
                <textarea name="" id="" cols="90" rows="10" placeholder="자기소개를 입력해주세요"></textarea>
                </p>
            </div> 
        </div>
    </div>
    <div class="btn_container">
        <button class="btn_item2">취소</button>
        <button class="btn_item1">저장</button>
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