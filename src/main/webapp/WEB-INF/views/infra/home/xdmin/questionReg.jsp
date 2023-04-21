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
    <title>AirLanguage</title>
</head>
<body>
<form name="form" method="post" enctype="multipart/form-data"> 
<input type="hidden" name="questionSeq">
<input type="hidden" value="<c:out value="${sessSeq }"/>" id="userID" name="userID">
<!-- Navbar s  -->
<%@include file="../../../infra/includeV1/userNavbar.jsp"%>
<!-- Navbar e  -->    

    <div class="container">
        <div class="texthead">
            <h3>질문하기</h3>
        </div>
        <p>언어를 선택해주세요</p>
        <select  id="language_select"name='language_select'>
            <option value="9" <c:if test="${item.language_select eq 9 }">selected</c:if>>한국어</option>
            <option value="10" <c:if test="${item.language_select eq 10 }">selected</c:if>>중국어</option>
            <option value="11" <c:if test="${item.language_select eq 11 }">selected</c:if>>일본어</option>
            <option value="12" <c:if test="${item.language_select eq 12 }">selected</c:if>>영어</option>
        </select>
        <div class="textbox">
            <textarea class="check" name="content" id="content" placeholder="단어나 문장을 입력해보세요" value="<c:out value="${item.content }"/>"></textarea>
        </div>
        <button type="button" id="btnsave">등록</button>
    </div>
    </form> 
    
	<!-- 제이쿼리  -->
	<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js" integrity="sha512-894YE6QWD5I59HgZOGReFYm4dnWc1Qt5NtvYSaNcOP+u1T9qYdvdihz0PPSiiqn/+/3e7Jo4EaG7TubfWGUrMQ==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
    <script src="https://kit.fontawesome.com/86d85c3d85.js" crossorigin="anonymous"></script>
    <script>

    /* 질문 등록 */
    var form = $("form[name=form]");
    var seq = $("input:hidden[name=questionSeq]");
    var goUrlInst = "questionInst"; 			/* #-> */
    
    $("#btnsave").on("click",function(){
    	if (seq.val() == "0" || seq.val() == ""){
	   		// insert
	   		form.attr("action", goUrlInst).submit();
	   	} else {
	   		// update
	   		/* keyName.val(atob(keyName.val())); */
	   		form.attr("action", goUrlUpdt).submit();
	   	}
	 	});
    

    </script>
</body>
</html>