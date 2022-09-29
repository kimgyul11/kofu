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
    <title>AIRLANGUAGE</title>
    <link rel="stylesheet" href="/resources/xdmin/css/airCodeGroupForm.css" />
</head>
<body>
<form method="post" name=form>
<input type="hidden" name="ccgSeq">
    <!--네비게이션바,사이드메뉴s -->
	<%@include file="../../../infra/includeV1/xdminMenu.jsp"%>
	<!--네비게이션바,사이드메뉴e -->
    <div class="container">
        <div class="selectOneWrap">
            <h1>코드그룹관리<i class="fa-solid fa-pen-fancy"></i></h1>
            <div class="inputlabel">코드명(한글)</div>
                <input type="text" value="<c:out value ="${item.ccgGroupNameKor }"/>">
            <div class="inputlabel">코드명(영어)</div>
                <input type="text" value="<c:out value ="${item.ccgGroupNameEng }"/>"><br>
            <div class="inputlabel">삭제여부</div>
                <select>
                    <option value=""></option>
                    <option value="0"<c:if test="${item.ccgDelNy eq 0 }">selected</c:if>>N</option>
                    <option value="1"<c:if test="${item.ccgDelNy eq 1 }">selected</c:if>>Y</option>
                </select>
            
            <div class="inputlabel">사용여부</div>
                <select name="ccgUseNy" id="ccgUseNy">
                    <option value=""></option>
                    <option value="0"<c:if test="${item.ccgUseNy eq 0 }">selected</c:if>>N</option>
                    <option value="1"<c:if test="${item.ccgUseNy eq 1 }">selected</c:if>>Y</option>
                </select><br>
            <div class="inputlabel">코드그룹번호</div>    
            <input type="text" value="<c:out value ="${item.ccgSeq }"/>" readonly>
            <div class="inputlabel">코드개수</div>    
            <input type="text" value="<c:out value ="${item.countCCG }"/>" readonly>
            <div class="inputlabel">생성일</div>    
            <input type="text"value="<c:out value ="${item.ccgInsertDate }"/>" readonly>
            <div class="inputlabel">수정일</div>    
            <input type="text"value="<c:out value ="${item.ccgModDate }"/>" readonly> 
            <ul class="buttonWrap">
                <li><button><i class="fa-solid fa-list-ol"></i></button></li>
                <li>
                    <ul class="btnthree">
                        <li><button class="delete"><i class="fa-regular fa-circle-xmark"></i></button></li>
                        <li><button class="delete"><i class="fa-regular fa-trash-can"></i></button></li>
                        <li><button class="insert"><i class="fa-regular fa-floppy-disk"></i></button></li>
                    </ul>
                </li>
            </ul>
        </div>
    </div>   
        
</form>
    <script src="https://kit.fontawesome.com/86d85c3d85.js" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js" integrity="sha512-894YE6QWD5I59HgZOGReFYm4dnWc1Qt5NtvYSaNcOP+u1T9qYdvdihz0PPSiiqn/+/3e7Jo4EaG7TubfWGUrMQ==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
	<script>
	var goUrlList = "/codeGroup/codeGroupList"; 			/* #-> */
	var goUrlInst = "/codeGroup/codeGroupInst"; 			/* #-> */
	var goUrlUpdt = "/codeGroup/codeGroupUpdt";				/* #-> */
	var goUrlUele = "/codeGroup/codeGroupUele";				/* #-> */
	var goUrlDele = "/codeGroup/codeGroupDele";				/* #-> */
	
	var seq = $("input:hidden[name=ccgSeq]");				/* #-> */
	
	var form = $("form[name=form]");
	var formVo = $("form[name=formVo]");
	
	
	$("#btnSave").on("click", function(){
		if (seq.val() == "0" || seq.val() == ""){
	   		// insert
	   		form.attr("action", goUrlInst).submit();
	   	} else {
	   		// update
	   		/* keyName.val(atob(keyName.val())); */
	   		form.attr("action", goUrlUpdt).submit();
	   	}
	});
	
	$("#btnList").on("click", function(){
		formVo.attr("action", goUrlList).submit();
	});
	
	
	
	$("#btnUelete").on("click", function(){
		$(".modal-title").text("확 인");
		$(".modal-body").text("해당 데이터를 삭제하시겠습니까 ?");
		$("#btnModalUelete").show();
		$("#btnModalDelete").hide();
		$("#modalConfirm").modal("show");
	});
	

	$("#btnDelete").on("click", function(){
		$(".modal-title").text("확 인");
		$(".modal-body").text("해당 데이터를 삭제하시겠습니까 ?");
		$("#btnModalUelete").hide();
		$("#btnModalDelete").show();
		$("#modalConfirm").modal("show");
	});
	
	
	$("#btnModalUelete").on("click", function(){
		$("#modalConfirm").modal("hide");
		form.attr("action", goUrlUele).submit();
	});
	
	
	$("#btnModalDelete").on("click", function(){
		$("#modalConfirm").modal("hide");
		form.attr("action", goUrlDele).submit();
	});
	</script>
</body>
</html>