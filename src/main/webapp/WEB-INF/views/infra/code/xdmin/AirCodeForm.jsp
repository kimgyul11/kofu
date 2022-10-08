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
<input type="hidden" name="ccSeq" value="<c:out value="${vo.ccSeq}"/>"/>
    <!--네비게이션바,사이드메뉴s -->
	<%@include file="../../../infra/includeV1/xdminMenu.jsp"%>
	<!--네비게이션바,사이드메뉴e -->
    <div class="container">
        <div class="selectOneWrap">
            <h1>코드관리<i class="fa-solid fa-pen-fancy"></i></h1>
            <div class="inputlabel">코드명(한글)</div>
                <input type="text" id="cc_name"name="cc_name" value="<c:out value ="${item.cc_name }"/>">
            <div class="inputlabel">코드명(영어)</div>
                <input type="text" id="cc_nameEng"name="cc_nameEng" value="<c:out value ="${item.cc_nameEng }"/>"><br>
            <div class="inputlabel">삭제여부</div>
                <select name="cc_delNy" id="cc_delNy">
                    <option value=""></option>
                    <option value="0"<c:if test="${item.cc_delNy eq 0 }">selected</c:if>>N</option>
                    <option value="1"<c:if test="${item.cc_delNy eq 1 }">selected</c:if>>Y</option>
                </select>
            <div class="inputlabel">사용여부</div>
                <select name="cc_useNy" id="cc_useNy">
                    <option value=""></option>
                    <option value="0"<c:if test="${item.cc_useNy eq 0 }">selected</c:if>>N</option>
                    <option value="1"<c:if test="${item.cc_useNy eq 1 }">selected</c:if>>Y</option>
                </select><br>	

            <div class="inputlabel">코드그룹 </div>
                <select  name="ccg_seq" id="ccg_seq">
					<c:forEach items="${list}" var="list" varStatus="status">
						<c:choose>
							<c:when test="${empty item.ccSeq}">
								<option value="<c:out value="${list.ccgSeq }"/>"><c:out value="${list.ccgGroupNamekor}"/></option>
							</c:when>
							<c:otherwise>
								<option value="<c:out value="${list.ccgSeq }"/>" <c:if test="${list.ccgSeq eq item.ccg_seq}">selected</c:if>><c:out value="${list.ccgGroupNamekor}"/></option>
							</c:otherwise>
						</c:choose>
					</c:forEach>
				</select>
                
           <%--  <div class="inputlabel">코드개수</div>    
            <input type="text" value="<c:out value ="${item.countCCG }"/>" readonly> --%>
            <div class="inputlabel">생성일</div>    
            <input id="cc_InsertDate" type="text"value="<c:out value ="${item.cc_InsertDate }"/>" readonly placeholder="현재시간으로 생성됩니다">
            <div class="inputlabel">마지막 수정시간</div>    
            <input id="cc_ModeDate" type="text"value="<c:out value ="${item.cc_ModeDate }"/>" readonly > 
            <ul class="buttonWrap">
                <li><button type="button" id="btnList"><i class="fa-solid fa-list-ol"></i></button></li>
                <li>
                    <ul class="btnthree">
                        <li><button class="delete" id="btnUelete"><i class="fa-regular fa-circle-xmark"></i></button></li>
                        <li><button class="delete" id="btnDelete" name="btnDelete"><i class="fa-regular fa-trash-can"></i></button></li>
                        <li><button class="insert" id="btnSave"><i class="fa-regular fa-floppy-disk"></i></button></li>
                    </ul>
                </li>
            </ul>
            
            
           <!--  <div class="modal fade" id="modalConfirm" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
					<div class="modal-dialog">
						<div class="modal-content">
							<div class="modal-header">
								<h5 class="modal-title" id="exampleModalLabel">Modal title</h5>
								<button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
							</div>
							<div class="modal-body">
							...
							</div>
							<div class="modal-footer">
								<button type="button" class="btn btn-secondary"  data-bs-dismiss="modal">취소</button>
								<button type="button" class="btn btn-primary" id="btnModalUelete" name="btnModalUelete">확인</button>
								<button type="button" class="btn btn-primary"id="btnModalDelete" name="btnModalDelete">확인</button>
							</div>
						</div>
					</div>
				</div> -->
        </div>
    </div>   
        
</form>
    <script src="https://kit.fontawesome.com/86d85c3d85.js" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js" integrity="sha512-894YE6QWD5I59HgZOGReFYm4dnWc1Qt5NtvYSaNcOP+u1T9qYdvdihz0PPSiiqn/+/3e7Jo4EaG7TubfWGUrMQ==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
	<script>
	var goUrlList = "/xdmin/codeList"; 			/* #-> */
	var goUrlInst = "/xdmin/airCodeInst"; 			/* #-> */
	var goUrlUpdt = "/xdmin/codeUpdt";				/* #-> */
	var goUrlUele = "/xdmin/codeUele";				/* #-> */
	var goUrlDele = "/xdmin/codeDele";				/* #-> */
	
	var seq = $("input:hidden[name=ccSeq]");				/* #-> */
	
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
		form.attr("action", goUrlList).submit();
	});
	
	
	
	$("#btnUelete").on("click", function(){
		$(".modal-title").text("확 인");
		$(".modal-body").text("해당 데이터를 삭제하시겠습니까 ?");
		$("#btnModalUelete").show();
		$("#btnModalDelete").hide();
		$("#modalConfirm").modal("show");
	});
	

	$("#btnDelete").on("click", function(){
		/* $(".modal-title").text("확 인");
		$(".modal-body").text("해당 데이터를 삭제하시겠습니까 ?");
		$("#btnModalUelete").hide();
		$("#btnModalDelete").show();
		$("#modalConfirm").modal("show"); */
		form.attr("action", goUrlDele).submit();
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