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
	<title>로그인</title>
	<!-- CDN : content Delivery Network  -->
	<link rel="preconnect" href="https://fonts.googleapis.com">
	<link rel=stylesheet href="/resources/xdmin/xdmin_css/xdminLogin.css"> 
</head>
<body class="ng-font2">
	<div class="wrapper">
  <div class="container">
    <div class="col-left">
      <div class="login-text">
        <h2>AIR LANGUAGE</h2>
        <p>환영합니다<br>관리자 페이지입니다.</p>
        <!-- <a class="btn" href="">Sign Up</a> -->
      </div>
    </div>
    <div class="col-right">
      <div class="login-form">
        <h2>관리자 로그인</h2>
        <form>
          <p>
            <label>ID<span>*</span></label>
            <input type="text" placeholder="ID를 입력해주세요." required>
          </p>
          <p>
            <label>PASSWORD<span>*</span></label>
            <input type="password" placeholder="비밀번호를 입력해주세요." required>
          </p>
          <p>
            <input type="submit" value="로그인" />
          </p>
          <p>
            <a href="">비밀번호를 잊으셨나요?</a>
          </p>
        </form>
      </div>
    </div>
  </div>
</div>

	<script src="https://kit.fontawesome.com/86d85c3d85.js" crossorigin="anonymous"></script>
</body>

</html>