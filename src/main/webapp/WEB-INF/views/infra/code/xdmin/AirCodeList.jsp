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
    <link rel="stylesheet" href="/resources/xdmin/css/AirCodeList.css" />
    <title>AIRLANGUAGE</title>
</head>
<body>
<form name="form" autocomplete="off">

<input type="hidden" name="thisPage" value="<c:out value="${vo.thisPage}" default="1"/>">
<input type="hidden" name="rowNumToShow" value="<c:out value="${vo.rowNumToShow}"/>">
<input type="hidden" name="ccSeq" value="<c:out value="${vo.ccSeq}"/>">
    <!--네비게이션바,사이드메뉴s -->
	<%@include file="../../../infra/includeV1/xdminMenu.jsp"%>
	<!--네비게이션바,사이드메뉴e -->

    <div class="table_wrap">
        <div class="search_wrap">
            <select name="shUseNy" id="shUseNy">
                <option value="" <c:if test="${empty vo.shUseNy}">selected</c:if>>사용여부</option>
				<option value='0' <c:if test="${vo.shUseNy eq 0}">selected</c:if>>N</option>
				<option value='1' <c:if test="${vo.shUseNy eq 1}">selected</c:if>>Y</option>
            </select>
            <select name='shDelNy' id='shDelNy'>
                <option value="" <c:if test="${empty vo.shDelNy}">selected</c:if>>삭제여부</option>
				<option value='0' <c:if test="${vo.shDelNy eq 0}">selected</c:if>>N</option>
				<option value='1' <c:if test="${vo.shDelNy eq 1}">selected</c:if>>Y</option>
            </select>
            <input type="text" id="startDate" placeholder="시작일을 선택" name="startDate"<c:out value="${vo.startDate }"/>>
            <input type="text" id="endDate" placeholder="종료일을 선택" name="endDate" <c:out value="${vo.endDate }"/>><br>
            <select name="shOption" id="shOption">
                <option value=""<c:if test="${empty vo.shOption}">selected</c:if>>검색조건</option>
                <option value="1"<c:if test="${vo.shOption eq 1}">selected</c:if>>코드번호</option>
                <option value="2"<c:if test="${vo.shOption eq 2}">selected</c:if>>코드그룹명(한글)</option>
                <option value="3"<c:if test="${vo.shOption eq 3}">selected</c:if>>코드그룹명(영어)</option>
            </select>
            <input type="text" value="<c:out value="${vo.shValue }"/>" id="shValue" name="shValue" placeholder="검색어를 입력해주세요.">
            <button type="submit"><i class="fa-brands fa-searchengin"></i></button>
            <button id="btnReset" name="btnReset" type="button"><i class="fa-solid fa-arrow-rotate-right"></i></button>
        </div>
        <hr>
        <div class="tablelist">
            <table>
                <tr>
                    <th class="num"><input type="checkbox"></th>
                    <th class="num">#</th>
                    <th class="codename">코드명(한글)</th>
                    <th class="codename">코드명(영어)</th>
                    <th class="codename">코드그룹명</th>
                    <th class="num">코드분류</th>
                    <th class="num">사용여부</th>
                    <th class="num">삭제여부</th>
                    <th class="codename">등록일</th>
                    <th class="codename">수정일</th>
                </tr>
               <c:choose>
              	<c:when test="${fn:length(list) eq 0}">
				<tr>
					<td colspan ="10">검색결과가 없습니다.</td> 
				</tr>
	             </c:when>
	             <c:otherwise> 	
                <c:forEach items="${list }" var ="list" varStatus="status">
	                <tr onclick="javascript:goForm(<c:out value="${list.ccSeq }"/>)" style="cursor:hand">
	                    <td><input type="checkbox"></td>
	                    <td><c:out value="${list.ccSeq }"/></a></td>
	                    <td><c:out value="${list.cc_name }"/></td>
	                    <td><c:out value="${list.cc_nameEng }"/></td>
	                    <td><c:out value="${list.ccgGroupNamekor }"/></td>
	                    <td><c:out value="${list.ccgSeq }"/></td>
	                    <td><c:out value="${list.cc_useNy }"/></td>
	                    <td><c:out value="${list.cc_delNy }"/></td>
	                    <td><c:out value="${list.cc_InsertDate }"/></td>
	                    <td><c:out value="${list.cc_ModeDate }"/></td>
	                </tr>
                </c:forEach>
                </c:otherwise>
                </c:choose>
            </table>
        </div>
        <div class="button_wrap">
            <button class="btn_delete" type="button"><i class="fa-solid fa-trash"></i></button>
            <div class="pagination_wrap">
            <ul class="pagination modal-2">
	            <c:if test="${vo.startPage gt vo.pageNumToShow}">
	                <li> <a href="javascript:goList(${vo.startPage - 1})" class="prev">&laquo </a></li>
	            </c:if>
            	<c:forEach begin="${vo.startPage}" end="${vo.endPage}" varStatus="i">
	            	<c:choose>    
	                <c:when test="${i.index eq vo.thisPage}">
	                	<li> <a  class="active" href="javascript:goList(${i.index})">${i.index}</a></li>
	                </c:when>
	                <c:otherwise>
	                	<li><a href="javascript:goList(${i.index})">${i.index}</a></li>
	                </c:otherwise>
	                </c:choose>
				</c:forEach> 
                <c:if test="${vo.endPage ne vo.totalPages}">   
                	<li><a  class="next" href="javascript:goList(${vo.endPage + 1})">  &raquo;</a></li>
                </c:if>	
            </ul>
       		</div>
            <button class="btn_reg" id="btnForm"><i class="fa-solid fa-folder-plus"></i></button>
        </div>
        
    </form>
    <link rel="stylesheet" href="http://code.jquery.com/ui/1.8.18/themes/base/jquery-ui.css" type="text/css" />    
    <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>
    <script src="http://code.jquery.com/ui/1.8.18/jquery-ui.min.js"></script>
    <script src="https://kit.fontawesome.com/86d85c3d85.js" crossorigin="anonymous"></script>
    <script>
    /* 달력 s*/
    $(document).ready(function () {
            $.datepicker.setDefaults($.datepicker.regional['ko']);
            $( "#startDate" ).datepicker({
                changeMonth: true,
                changeYear: true,
                nextText: '다음 달',
                prevText: '이전 달',
                dayNames: ['일요일', '월요일', '화요일', '수요일', '목요일', '금요일', '토요일'],
                dayNamesMin: ['일', '월', '화', '수', '목', '금', '토'],
                monthNamesShort: ['1월','2월','3월','4월','5월','6월','7월','8월','9월','10월','11월','12월'],
                monthNames: ['1월','2월','3월','4월','5월','6월','7월','8월','9월','10월','11월','12월'],
                dateFormat: "yy-mm-dd",
                 /* maxDate: 0,                       // 선택할수있는 최소날짜, ( 0 : 오늘 이후 날짜 선택 불가) */
                onClose: function( selectedDate ) {
                      //시작일(startDate) datepicker가 닫힐때
                      //종료일(endDate)의 선택할수있는 최소 날짜(minDate)를 선택한 시작일로 지정
                    $("#endDate").datepicker( "option", "minDate", selectedDate );
                }
            });
            $( "#endDate" ).datepicker({
                changeMonth: true,
                changeYear: true,
                nextText: '다음 달',
                prevText: '이전 달',
                dayNames: ['일요일', '월요일', '화요일', '수요일', '목요일', '금요일', '토요일'],
                dayNamesMin: ['일', '월', '화', '수', '목', '금', '토'],
                monthNamesShort: ['1월','2월','3월','4월','5월','6월','7월','8월','9월','10월','11월','12월'],
                monthNames: ['1월','2월','3월','4월','5월','6월','7월','8월','9월','10월','11월','12월'],
                dateFormat: "yy-mm-dd",
                 /* maxDate: 0,                       // 선택할수있는 최대날짜, ( 0 : 오늘 이후 날짜 선택 불가) */
                onClose: function( selectedDate ) {
                     // 종료일(endDate) datepicker가 닫힐때
                     // 시작일(startDate)의 선택할수있는 최대 날짜(maxDate)를 선택한 시작일로 지정
                    $("#startDate").datepicker( "option", "maxDate", selectedDate );
                }
            });
    	});/* 달력 e */
    
        var seq = $("input:hidden[name=ccSeq]");
    	var goUrlForm = "/xdmin/codeView";
    	var goUrlList = "/xdmin/codeList";
    	var form = $("form[name=form]")
    	
    	
    	$('#btnForm').on("click", function() {
    		goForm(0);                
    	});

    	goForm = function(keyValue) {
        	/* if(keyValue != 0) seq.val(btoa(keyValue)); */
        	seq.val(keyValue);
    		form.attr("action", goUrlForm).submit();
    	}

    	$("#btnReset").on("click", function() {
    			$(location).attr("href",goUrlList);
    	});
    	
    /* 페이지네이션 리스트*/
    	goList = function(thisPage) {
    		$("input:hidden[name=thisPage]").val(thisPage);
    		form.attr("action", goUrlList).submit();
    	}

    /* 로그아웃 */
        $("#btnLogout").on("click", function(){
    	$.ajax({
    		async: true 
    		,cache: false
    		,type: "post"
    		,url: "/member/logoutProc"
    		,data: {}
    		,success: function(response) {
    			if(response.rt == "success") {
    				location.href = URL_LOGIN_FORM;
    			} else {
    				// by pass
    			}
    		}
    		,error : function(jqXHR, textStatus, errorThrown){
    			alert("ajaxUpdate " + jqXHR.textStatus + " : " + jqXHR.errorThrown);
    		}
    	});
        });	
	</script>

</body>
</html>
