<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags" %>

<!doctype html>
<html lang="kr">
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>코드그룹</title>
	<!-- CDN : content Delivery Network  -->
	<link rel="preconnect" href="https://fonts.googleapis.com">
	<style>
		@import url('https://fonts.googleapis.com/css2?family=Gowun+Dodum&family=Nanum+Brush+Script&family=Song+Myung&display=swap');
		.ng-font2{
			font-family: 'Gowun Dodum', sans-serif;
		}
  


body {
	margin: 0;
	box-sizing: border-box;
	margin: 0;
  padding: 0;
}
a{
	text-decoration: none;
	color:white;
}

li{
	list-style: none;
}

/* 네비바 */
.container_nav{
  width: 100%;
  height: 70px;
  background:#9e9e9e;
  position: relative;
}

.desk-nav-bar{
  width: 100%;
  height: 100%;
}

.desk-nav-bar ul{
  list-style: none;
  width: 730px;
  margin: 0 auto;
}

.desk-nav-bar ul li{
  float: left;
  width: 120px;
  text-align: center;
  padding: 23px 10px;
  text-transform: uppercase;
  cursor: pointer;
  transition: all 0.5s ease;
}

.desk-nav-bar ul li a{
  text-decoration: none;
  color: #fff;
  font-size: 18px;
  letter-spacing: 2px;
  transition: all 0.5s ease;
}

.desk-nav-bar ul li.active{
  background: #444759;
}

.desk-nav-bar ul li:hover{
  background: #444759;
}

.hamburger-btn{
  display: none;
}

.mob-nav-bar{
  display: none;
}

@media screen and (max-width: 730px){
	.desk-nav-bar{
	  display: none;
	}
	.hamburger-btn{
	  display: block;
	  position: absolute;
	  top: 50%;
	  transform: translateY(-50%);
	  right: 5%;
	  cursor: pointer;
	  font-size: 28px;
	  color: #fff;
	}
	.mob-nav-bar{
	  display: block;
	  width: 250px;
	  height: 100vh;
	  background: #444759;
	  position: absolute;
	  top: 0px;
	  left: -250px;
	  transition: all 0.5s ease;
	}
	.mob-nav-bar ul{
	  list-style: none;
	  text-align: center;
	  padding: 20px 0;
	}
	.mob-nav-bar ul li{
	  padding: 20px 0;
	  cursor: pointer;
	  text-transform: uppercase;
	  transition: all 0.5s ease;
	}
	.mob-nav-bar ul li a{
	  text-decoration: none;
	  color: #fff;
	}
	.mob-nav-bar ul li:hover{
	  background: #ea3b50;
	}
}



.code_wrap{
	width:100%;
	margin-right: auto;
	margin-left: auto;
}
.code_wrap h1{
	text-align: left;
	margin-left:55px;
}

h1, h2, h3, h4, h5, h6 {
  margin: 0;
}
.search_box{
	border:1px solid #e0e0e0;
	width:80%;
	margin:150px auto 150px auto;
	padding:25px;
}
.search_top{
	display:flex;
	justify-content:start;
}
.search_top input{
	width:200px;
	height:30px;
	border-style:none;
	border-bottom:2px solid;
	margin: 0px 15px;
}
.search_bottom{
	display:flex;
	justify-content: start;
}
.search_bottom li input{
	width:250px;
	height:30px;
	margin:0px 15px;
	border-style: none;
	border-bottom:2px solid;
}

select{
	width:250px;
	height:38px;
	text-align: center;
	font-weight: bold;
	margin-left:15px;
	margin-right:25px;
	border-radius: 15px;
}


.container {
	width:80%;
	margin-right: auto;
	margin-left: auto;
	display: flex;
	justify-content: center;
	align-items: center;
}

.table {
	width: 100%;
	border: 1px solid #EEEEEE;
}

.table-header {
  display: flex;
  width: 100%;
  background: #424242;
  padding: 18px 0;
}

.table-row {
  display: flex;
  width: 100%;
  padding: 8px 0;
}
.table-row:nth-of-type(odd) {
  background: #EEEEEE;
}

.table-data, .header__item {
  flex: 1 1 20%;
  text-align: center;
}

.table-data-ch, .header__item-ch{
	width:50px;
	color:white;
	text-align: center;
}
.table-data-num, .header__item-num{
	width:100px;
	color:black;
	text-align: center;
}


	</style>
</head>
<body class="ng-font2">
	<!-- 네비게이션 바 -->
<div class="container_nav">
  <div class="desk-nav-bar">
    <ul>
      <li><a href="#">홈</a></li>
      <li class="active"><a href="#">회원관리</a></li>
      <li><a href="#">코드관리</a></li>
      <li><a href="#">게시판관리</a></li>
      <li><a href="#">aboutus</a></li>
    </ul>
  </div>
  
  <div class="hamburger-btn">
    <i class="fas fa-bars"></i>
    <i class="fas fa-times"></i>
  </div>
  
  <div class="mob-nav-bar">
    <ul>
      <li><a href="#">home</a></li>
      <li><a href="#">ㅇ</a></li>
      <li><a href="#">services</a></li>
      <li><a href="#">team</a></li>
      <li><a href="#">aboutus</a></li>
    </ul>
  </div>
</div>
<!-- 코드 테이블 -->     
	<div class="code_wrap">	
		<div class="search_box">
		<h1>회원관리</h1>
			<ul class="search_top">
				<li>
					<select>
						<option>찾아보기
					</select>
				</li>
				<li>
					<select>
						<option>찾아보기
					</select>
				</li>
				<li class="search_text"><input type="text">
				<li class="search_text"><input type="text">
			</ul>
			<ul class="search_bottom">
				<li>
					<select>
						<option>검색구분
					</select>
				</li>
				<li><input type="text" placeholder="검색어">
				<li><button>검색</button>
				<li><button>취소</button>
			</ul>
		</div>
	</div>
	

	<div class="container">
		<div class="table">
			<div class="table-header">
				<div class="header__item-ch"><input type="checkbox" class="filter__link" href="#"></div>
				<div class="header__item-num">#</div>
				<div class="header__item">아이디</div>
				<div class="header__item">등급</div>
				<div class="header__item">이름</div>
				<div class="header__item">성별</div>
				<div class="header__item">생년월일</div>
				<div class="header__item">주소</div>
				<div class="header__item">국적</div>
			</div>
			<div class="table-content">
				<c:forEach items="${list}" var="list" varStatus="status">	
					<div class="table-row">
							<div class="table-data-ch"><input type="checkbox"></div>		
							<div class="table-data-num"></div>
							<div class="table-data"><c:out value="${list.user_id }"/></div>
							<div class="table-data"><c:out value="${list.user_level }"/></div>
							<div class="table-data"><c:out value="${list.user_name }"/></div>
							<div class="table-data"><c:out value="${list.user_gender }"/></div>
							<div class="table-data"></div>
							<div class="table-data"></div>
							<div class="table-data"></div>
					</div>
				</c:forEach>
			</div>	
		</div>
	</div>

	<script src="https://kit.fontawesome.com/86d85c3d85.js" crossorigin="anonymous"></script>

</body>

</html>