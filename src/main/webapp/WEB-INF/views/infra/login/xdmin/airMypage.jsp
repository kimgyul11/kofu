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
<form name="form">
<input type="hidden" id="memberSeq" name="memberSeq"  value="<c:out value="${sessSeq }"/>"  >
<input type="hidden" name="questionSeq">
	<!-- Navbar s  -->
	<%@include file="../../../infra/includeV1/userNavbar.jsp"%>
	<!-- Navbar e  -->  
    
    <!--메인 영역  -->
    <div class="container">
        <div class="mypage_Wrap">
            <div class="mypage_left_Wrap">
                <div class="profile_box">
                    <div class="profile">
                    	<c:choose>
         					<c:when test="${item.path ne null}">
         						<img src="<c:out value="${item.path}"/><c:out value="${item.uuidName}"/>">
   							</c:when>
	         				<c:otherwise>
	         					<img src="https://cdn-icons-png.flaticon.com/512/5987/5987462.png">
	         				</c:otherwise>
         				</c:choose>
                    </div>
                    <ul class="profile_input">
                        <li><p>아이디</p><input type="text" readonly value="<c:out value="${sessId}"/>" ></li>
                        <li><p>이름</p><input type="text" readonly value="<c:out value="${sessName }"/>" name="user_name"></li>
                        <li><p>성별</p><input type="text" readonly value="<c:out value="${item.user_gender }"/>"></li>
                        <li><p>주 언어</p>
                        	<select id='lean_language' name='lean_language' >
								<option value='9' <c:if test="${item.lean_language eq 9}">selected</c:if>>한국어</option>
								<option value='10' <c:if test="${item.lean_language eq 10}">selected</c:if>>중국어</option>
								<option value='11' <c:if test="${item.lean_language eq 11}">selected</c:if>>일본어</option>
								<option value='12' <c:if test="${item.lean_language eq 12}">selected</c:if>>영어</option>
							</select>
                        </li>
                        <li><p>배우는 언어</p>
                        <select id='user_favoriteLanguage' name='user_favoriteLanguage' >
							<option value='9' <c:if test="${item.user_favoriteLanguage eq 9}">selected</c:if>>한국어</option>
							<option value='10' <c:if test="${item.user_favoriteLanguage eq 10}">selected</c:if>>중국어</option>
							<option value='11' <c:if test="${item.user_favoriteLanguage eq 11}">selected</c:if>>일본어</option>
							<option value='12' <c:if test="${item.user_favoriteLanguage eq 12}">selected</c:if>>영어</option>
						</select>
                        </li>
                        <li><button id="btnform">저장</button></li>
                    </ul>
                </div>
            </div>
            <div class="mypage_right_Wrap">
				<ul id="ac">
					<li class="menu1">
						<p>질문내역
					    <span>총 질문 수: ${fn:length(list)}</span>
						<c:forEach items="${list}" var ="list" varStatus="status">
							<ul class="menu2">
							    <li onclick="goview(<c:out value="${list.questionSeq}"/>);"><p><c:out value="${list.content }"/></p></li>
							</ul>
						</c:forEach>
					</li>
					<li class="menu1">
						<p>답변내역
					    <span href="#">총 답변 수: ${fn:length(ansList)}</span>
						<c:forEach items="${ansList}" var ="ansList" varStatus="status">
							<ul class="menu2">
							    <li onclick="goans(<c:out value="${ansList.questionSeq}"/>);"><c:out value="${ansList.ansContent }"/></li>
							</ul>
						</c:forEach>
					</li>
					<li class="menu1">
						<p>채택내역
					    <span>총 채택 수 : ${fn:length(pickList)} </span>
						<c:forEach items="${pickList}" var ="pickList" varStatus="status">
							<ul class="menu2">
			    				<li onclick="goans(<c:out value="${pickList.questionSeq}"/>);"><c:out value="${pickList.ansContent }"/></li>
							</ul>
						</c:forEach>
					</li>
					 <li class="menu1">
					 	<p>북마크 내역
					     <span>북마크 수:${fn:length(bookmarkList)}</span>
					     <c:forEach items="${bookmarkList}" var ="bookmarkList" varStatus="status">
						     <ul class="menu2">
						         <li onclick="goans(<c:out value="${bookmarkList.questionSeq}"/>);"><c:out value="${bookmarkList.content }"/></li>
						     </ul>
					     </c:forEach>
					 </li>
				</ul>
            </div>
        </div>
    </div>

</form>
    <script src="https://kit.fontawesome.com/86d85c3d85.js" crossorigin="anonymous"></script>
	<script src="https://code.jquery.com/jquery-1.12.4.min.js"></script>
	<script type="text/javascript">
		var goUrlView = "/queview";
		var goUrlAnsView = "/queview";
		
		var questionSeq = $("input:hidden[name=questionSeq]");
		var form = $("form[name=form]");
		
		//마이페이지 수정 ajax.
		$("#btnform").on("click", function(){
 			
			$.ajax({
				async: false
				,cache: false
				,type: "post"
				,url: "/mypageform"
				,data: {"lean_language" : $("#lean_language").val(), "user_favoriteLanguage" : $("#user_favoriteLanguage").val(), "memberSeq" : $("#memberSeq").val()} 
 				,success: function(response) {
					alert("수정이 완료되었습니다.")
				}
				,error : function(jqXHR, textStatus, errorThrown){
					alert("ajaxUpdate " + jqXHR.textStatus + " : " + jqXHR.errorThrown);
				}
			}); 
		});
		
		
		//내가 작성한 질문
		function goview(keyValue){
			questionSeq.val(keyValue);
			form.attr("action", goUrlView).submit();
		}
		
		//내가 답변한 질문
		function goans(keyValue){
			questionSeq.val(keyValue);
			form.attr("action", goUrlAnsView).submit();
		}
		
		//아코디언 메뉴
		$('.menu1').click(function(){
        $('.menu2').slideUp();
        if ($(this).children('.menu2').is(':hidden')){
        $(this).children('.menu2').slideDown();
        } else{
        $(this).children('.menu2').slideUp();
        }
    	});
		
		//미디어쿼리 버튼
		const toggleBtn = document.querySelector('.navbar__toogleBtn');
		const menu = document.querySelector('.nav_right_Wrap');

		toggleBtn.addEventListener('click', () =>{
		    menu.classList.toggle('active');
		});
		
	</script>	
</body>
</html>