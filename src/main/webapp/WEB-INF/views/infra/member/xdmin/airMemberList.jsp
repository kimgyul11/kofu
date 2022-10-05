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
    <link rel="stylesheet" href="/resources/xdmin/css/airMemberList.css">
    <title>AIRLANGUAGE</title>
</head>
<body>
<form name="form" autocomplete="off">
	<!--네비게이션바,사이드메뉴s -->
	<%@include file="../../../infra/includeV1/xdminMenu.jsp"%>
	<!--네비게이션바,사이드메뉴e -->
    <div class="table_wrap">
        <div class="search_wrap">
            <select name="" id="">
                <option value="">사용여부</option>
                <option value="0">N</option>
                <option value="1">Y</option>
            </select>
            <select name="" id="">
                <option value="">삭제여부</option>
                <option value="0">N</option>
                <option value="1">Y</option>
            </select>
            <input type="text" >
            <input type="text" ><br>
            <select name="" id="">
                <option value="">검색조건</option>
                <option value="0">코드번호</option>
                <option value="1">코드그룹명(한글)</option>
                <option value="2">코드그룹명(영어)</option>
            </select>
            <input type="text" id="shValue" name="shValue" placeholder="검색어를 입력해주세요." >
            <button type="button"><i class="fa-brands fa-searchengin"></i></button>
            <button ><i class="fa-solid fa-arrow-rotate-right"></i></button>
        </div>
        <hr>
        <div class="tablelist">
            <table>
                <tr>
                    <th class="num"><input type="checkbox"></th>
                    <th class="num">-</th>
                    <th class="codename"></th>
                    <th class="codename">이름</th>
                    <th class="num">성별</th>
                    <th class="num">사용여부</th>
                    <th class="num">탈퇴여부</th>
                </tr>
                <c:forEach items="${list}" var="list" varStatus="status">
	                <tr>
	                    <td><input type="checkbox"></td>
	                    <td><c:out value="${list.user_id}"/></td>
	                    <td><c:out value="${list.user_email}"/></td>
	                    <td><c:out value="${list.user_id}"/></td>
	                    <td><c:out value="${list.user_id}"/></td>
	                    <td><c:out value="${list.user_id}"/></td>
	                    <td><c:out value="${list.user_id}"/></td>
	                </tr> 
                </c:forEach> 
            </table>
        </div>
        <div class="button_wrap">
            <button class="btn_delete" type="button"><i class="fa-solid fa-trash"></i></button>
            <div class="pagination_wrap">
	            <ul class="pagination modal-2">
	                <li><a href="#" class="prev">&laquo </a></li>
	                <li><a href="#">1</a></li>
	                <li> <a href="#">2</a></li>
	                <li> <a href="#" class="active">3</a></li>
	                <li> <a href="#">4</a></li>
	                <li> <a href="#">5</a></li>
	                <li> <a href="#">6</a></li>
	                <li> <a href="#">7</a></li>
	                <li> <a href="#">8</a></li>
	                <li> <a href="#">9</a></li>
	                <li><a href="#" class="next">  &raquo;</a></li>
	            </ul><br> 
        	</div>
            <button class="btn_reg"><i class="fa-solid fa-folder-plus"></i></button>
        </div>
    </div>
    <link rel="stylesheet" href="http://code.jquery.com/ui/1.8.18/themes/base/jquery-ui.css" type="text/css" />    
    <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>
    <script src="http://code.jquery.com/ui/1.8.18/jquery-ui.min.js"></script>
    <script src="https://kit.fontawesome.com/86d85c3d85.js" crossorigin="anonymous"></script>
    <script>
    /* 달력 */
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
    });

</script>

</body>
</html>