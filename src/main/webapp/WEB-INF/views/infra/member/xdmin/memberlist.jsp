<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags" %>

<jsp:useBean id="CodeServiceImpl" class="com.kofu.infra.modules.code.CodeServiceImpl"/>
<!doctype html>
<html lang="kr">
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>코드그룹</title>
	<!-- CDN : content Delivery Network  -->
	<link rel="preconnect" href="https://fonts.googleapis.com">
	<link rel="stylesheet" href="/resources/xdmin/xdmin_css/xdminMemberList.css" />
</head>
<body class="ng-font2">
<form name="form">
<input type="hidden" name="memberSeq" value="<c:out value="${vo.memberSeq}"/>">
	<!-- 네비게이션 바 -->
<div class="container_nav">
  <div class="desk-nav-bar">
    <ul>
      <li><a href="#">홈</a></li>
      <li class="active"><a href="#">회원관리</a></li>
      <li><a href="#">코드관리</a></li>
      <li><a href="#">게시판관리</a></li>
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
						<option>검색조건
					</select>
				</li>
				<li><input type="text" placeholder="검색어를 입력해주세요">
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
				<div class="header__item">배우는언어</div>
				<div class="header__item">국적</div>
			</div>
			
			<div class="table-content">
			<c:set var="listCodeGender" value="${CodeServiceImpl.selectListCachedCode('4')}"/>
			<c:set var="listCodeleanLanguage" value="${CodeServiceImpl.selectListCachedCode('2')}"/>
			<c:set var="listCodecountry" value="${CodeServiceImpl.selectListCachedCode('1')}"/>
				<c:choose>
					<c:when test="${fn:length(list) eq 0}">
					<div class="table-row">
						<div class="header__item-ch" colspan="10">no data</td>
					</div>
			    </c:when>
			    <c:otherwise>
				<c:forEach items="${list}" var="list" varStatus="status">	
					<div class="table-row">
						<div class="table-data-ch"><input type="checkbox"></div>
								
						<div class="table-data-num" ><a href="/member/memberView?memberSeq=<c:out value="${list.memberSeq }"/>"><c:out value="${list.memberSeq }"/></a></div>
						<div class="table-data"><c:out value="${list.user_id }"/></div>
						<div class="table-data"><c:out value="${list.user_level }"/></div>
						<div class="table-data"><c:out value="${list.user_name }"/></div>
						<%-- <div class="table-data"><c:out value="${list.user_gender }"/></div> --%>
						<div class="table-data"><!-- 성별 공통코드 -->
							<c:forEach items="${listCodeGender}" var="listGender" varStatus="statusGender">
								<c:if test="${list.user_gender eq listGender.ccSeq}"><c:out value="${listGender.cc_name }"/></c:if>
							</c:forEach>
						</div>
						<div class="table-data"><c:out value="${list.user_dob }"/></div>
						<div class="table-data"><!-- 언어 공통코드 -->
							<c:forEach items="${listCodeleanLanguage}" var="Language" varStatus="statusGender">
								<c:if test="${list.lean_language eq Language.ccSeq}"><c:out value="${Language.cc_name }"/></c:if>
							</c:forEach>
						</div>
						<div class="table-data"><!-- 국가 공통코드 -->
							<c:forEach items="${listCodecountry}" var="country" varStatus="statusGender">
								<c:if test="${list.user_conutry eq country.ccSeq}"><c:out value="${country.cc_name }"/></c:if>
							</c:forEach>
						</div>
					</div>
				</c:forEach>
			</c:otherwise>
        	</c:choose>	
			</div>	
		</div>
		<ul class="buttonbox">
		<li class="button">
		<li><button id="btnForm">추가</button>
	</ul>
	</div>
	</form>
	<script src="https://kit.fontawesome.com/86d85c3d85.js" crossorigin="anonymous"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js" integrity="sha512-894YE6QWD5I59HgZOGReFYm4dnWc1Qt5NtvYSaNcOP+u1T9qYdvdihz0PPSiiqn/+/3e7Jo4EaG7TubfWGUrMQ==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
	<link rel="stylesheet" href="http://code.jquery.com/ui/1.8.18/themes/base/jquery-ui.css" type="text/css" />
	<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>
	<script src="http://code.jquery.com/ui/1.8.18/jquery-ui.min.js"></script>
<script type="text/javascript">
	var seq = $("input:hidden[name=memberSeq]");
	var goUrlForm = "/member/memberView";
	var goUrlList = "/member/memberlist";
	var form = $("form[name=form]")
	
	
	$('#btnForm').on("click", function() {
		goForm(0);                
	});
	
	goForm = function(keyValue) {
    	/* if(keyValue != 0) seq.val(btoa(keyValue)); */
    	seq.val(keyValue);
		form.attr("action", goUrlForm).submit();
	}
</script>
</body>

</html>