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
    <link rel="stylesheet" href="/resources/xdmin/css/questionView.css">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Gowun+Batang&display=swap" rel="stylesheet">
    <title>Document</title>
</head>
<body>
    <div class="navbar">
        <div class="logo">
            <a href="#">AirLanguage</a>
        </div>
        <div class="search_box">
            <div class="dropdown">
                <div class="default_option">관심언어로 검색</div>  
                <ul>
                    <li>All</li>
                    <li>Recent</li>
                    <li>Popular</li>
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

    <!-- Contenedor Principal -->
	<div class="comments-container">
		<ul id="comments-list" class="comments-list">
            <!-- 메인레벨 질문 -->
            <li>
				<div class="comment-main-level">
					<!-- 이미지 -->
					<div class="comment-avatar"><img src="https://post-phinf.pstatic.net/MjAxODA5MTBfMTk4/MDAxNTM2NTcwNjUwMDUy.F2G6NyAsR5sRYmOL-A8tQJxz6NuHVDARJ3g28EOBoNgg.g2JnkXNFM6A4C7ZloyowHQc_4skHr1PtOsKG0vA641sg.JPEG/%EC%84%B8%EC%A2%85.jpg?type=w1200" alt=""></div>
					<!-- 코멘트 전체 상자. -->
					<div class="comment-box">
						<div class="comment-head">
							<h6 class="comment-name by-author"><a href="#">kimgiyul</a></h6>
							<span>8월 15일 12:12</span>
							<i class="fa-solid fa-comment"></i>
							<i class="fa fa-heart"></i>
                            <i class="fa-solid fa-bookmark"></i>
						</div>
						<div class="comment-content">
							"나랏말싸미 듕귁에 달아 문자와로 서르 사맛디 아니할쎄 이런 젼차로 어린 백셩이 니르고져 홀 배 이셔도 마참내 제 뜨들 시러펴디 몯 할 노미 하니라 내 이랄 위하야 어엿비 너겨 새로 스믈 여듧 짜랄 맹가노니 사람마다 해여 수비 니겨 날로 쑤메 뼌한킈 하고져 할따라미니라 "
                            을 영어로 번역해주세요
                        </div>
					</div>
				</div>
				<!-- 답글달았을때 리스트입니다. -->
				<ul class="comments-list reply-list">
					<li>
						<!-- 이미지 -->
						<div class="comment-avatar"><img src="http://i9.photobucket.com/albums/a88/creaticode/avatar_2_zps7de12f8b.jpg" alt=""></div>
						<!-- Contenedor del Comentario -->
						<div class="comment-box">
							<div class="comment-head">
								<h6 class="comment-name"><a href="http://creaticode.com/blog">NON2312</a></h6>
								<span>8월 15일 18:32</span>
								<i class="fa-solid fa-comment"></i>
                                <i class="fa fa-heart"></i>
                                <i class="fa-solid fa-bookmark"></i>
							</div>
							<div class="comment-content">
								Even Koreans won't know.
							</div>
						</div>
					</li>

					<li>
						<!-- 이미지 -->
						<div class="comment-avatar"><img src="https://post-phinf.pstatic.net/MjAxODA5MTBfMTk4/MDAxNTM2NTcwNjUwMDUy.F2G6NyAsR5sRYmOL-A8tQJxz6NuHVDARJ3g28EOBoNgg.g2JnkXNFM6A4C7ZloyowHQc_4skHr1PtOsKG0vA641sg.JPEG/%EC%84%B8%EC%A2%85.jpg?type=w1200" alt=""></div>
						<!-- Contenedor del Comentario -->
						<div class="comment-box">
							<div class="comment-head">
								<h6 class="comment-name by-author"><a href="#">kimgiyul</a></h6>
								<span>8월 15일 18:45</span>
								<i class="fa-solid fa-comment"></i>
                                <i class="fa fa-heart"></i>
                                <i class="fa-solid fa-bookmark"></i>
							</div>
							<div class="comment-content">
								All right. I'll ask you another question
							</div>
						</div>
					</li>
				</ul>
			</li>

            <!-- 메인레벨 답변 -->
			<li>
				<div class="comment-main-level">
					<!-- 이미지 -->
					<div class="comment-avatar"><img src="http://i9.photobucket.com/albums/a88/creaticode/avatar_2_zps7de12f8b.jpg" alt=""></div>
					<!-- Contenedor del Comentario -->
					<div class="comment-box">
						<div class="comment-head">
							<h6 class="comment-name"><a href="http://creaticode.com/blog">NON2312</a></h6>
							<span>8월15일 16:42</span>
							<i class="fa-solid fa-comment"></i>
							<i class="fa fa-heart"></i>
                            <i class="fa-solid fa-bookmark"></i>
						</div>
						<div class="comment-content">
                            It's difficult to translate into English.
                        </div>
					</div>
				</div>
			</li>
            <li>
                <div class="comment-main-level">
					<!-- 이미지 -->
					<div class="comment-avatar"><img src="https://post-phinf.pstatic.net/MjAxODA5MTBfMTk4/MDAxNTM2NTcwNjUwMDUy.F2G6NyAsR5sRYmOL-A8tQJxz6NuHVDARJ3g28EOBoNgg.g2JnkXNFM6A4C7ZloyowHQc_4skHr1PtOsKG0vA641sg.JPEG/%EC%84%B8%EC%A2%85.jpg?type=w1200" alt=""></div>
					<!-- 코멘트 전체 상자. -->
					<div class="comment-box">
						<div class="comment-head">
							<h6 class="comment-name by-author"><a href="#">kimgiyul</a></h6>
							<span>8월 15일 12:12</span>
							<i class="fa-solid fa-comment"></i>
							<i class="fa fa-heart"></i>
                            <i class="fa-solid fa-bookmark"></i>
						</div>
						<div class="comment-content">
							"나랏말싸미 듕귁에 달아 문자와로 서르 사맛디 아니할쎄 이런 젼차로 어린 백셩이 니르고져 홀 배 이셔도 마참내 제 뜨들 시러펴디 몯 할 노미 하니라 내 이랄 위하야 어엿비 너겨 새로 스믈 여듧 짜랄 맹가노니 사람마다 해여 수비 니겨 날로 쑤메 뼌한킈 하고져 할따라미니라 "
                            을 영어로 번역해주세요
                        </div>
					</div>
				</div>
            </li>
		</ul>
        
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