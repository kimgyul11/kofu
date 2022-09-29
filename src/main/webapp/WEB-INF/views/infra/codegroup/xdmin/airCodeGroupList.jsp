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
    <link rel="stylesheet" href="/resources/xdmin/css/airCodeGroupList.css" />
    <title>AIRLANGUAGE</title>
</head>
<body>
<form name="form">
 <input type="hidden" name="ccgSeq" value="${item.ccSeq }">
	<!--네비게이션바,사이드메뉴s -->
	<%@include file="../../../infra/includeV1/xdminMenu.jsp"%>
	<!--네비게이션바,사이드메뉴e -->
    <div class="table_wrap">
        <!-- 조건 검색창s -->
        <%@include file="../../../infra/includeV1/adminSearch.jsp"%>
        <!-- 조건 검색창e -->
        <hr>
        <div class="tablelist">
            <table>
                <tr>
                    <th class="num"><input type="checkbox"></th>
                    <th class="num">#</th>
                    <th class="codename">코드그룹명(한글)</th>
                    <th class="codename">코드그룹명(영어)</th>
                    <th class="num">코드수</th>
                    <th class="num">사용여부</th>
                    <th class="num">삭제여부</th>
                    <th class="codename">등록일</th>
                    <th class="codename">수정일</th>
                </tr>
				<c:choose>
					<c:when test="${fn:length(list) eq 0}">
						<tr>
							<td colspan="9">검색결과가 없습니다.</td>
						</tr>
					</c:when>
				    <c:otherwise>
		                <c:forEach items="${list}" var="list" varStatus="status">
			                <tr>
			                    <td><input type="checkbox"></td>
			                    <td><a href="/AircodeGroup/codeGroupView?ccgSeq=<c:out value="${list.ccgSeq }"/>"><c:out value="${list.ccgSeq }"/></a></td>
			                    <td><c:out value="${list.ccgGroupNameKor }"/></td>
			                    <td><c:out value="${list.ccgGroupNameEng }"/></td>
			                    <td><c:out value="${list.countCCG }"/></td>
			                    <td><c:out value="${list.ccgUseNy }"/></td>
			                    <td><c:out value="${list.ccgDelNy }"/></td>
			                    <td><c:out value="${list.ccgInsertDate }"/></td>
			                    <td><c:out value="${list.ccgModDate }"/></td>
			                </tr>
			                
		                </c:forEach>
	                </c:otherwise>
	        	</c:choose>
            </table>
        </div>
        <div class="button_wrap">
            <button class="btn_delete" type="button"><i class="fa-solid fa-trash"></i></button>
            <button class="btn_reg"><i class="fa-solid fa-folder-plus"></i></button>
        </div>
        <div class="pagination_wrap">
            <ul class="pagination modal-2">
                <li><a href="#" class="prev">&laquo </a></li>
                <c:if test="${vo.startPage gt vo.pageNumToShow}">
                	<li><a href="#"></a></li>
                </c:if>
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
        	<%-- <ul class="pagination justify-content-center mb-0">
	                <!-- <li class="page-item"><a class="page-link" href="#"><i class="fa-solid fa-angles-left"></i></a></li> -->
					<c:if test="${vo.startPage gt vo.pageNumToShow}">
		                <li class="page-item"><a class="page-link" href="javascript:goList(${vo.startPage - 1})"><i class="fa-solid fa-angle-left"></i></a></li>
					</c:if>
					<c:forEach begin="${vo.startPage}" end="${vo.endPage}" varStatus="i">
						<c:choose>
							<c:when test="${i.index eq vo.thisPage}">
			                	<li class="page-item active"><a class="page-link" href="javascript:goList(${i.index})">${i.index}</a></li>
							</c:when>
							<c:otherwise>             
			                	<li class="page-item"><a class="page-link" href="javascript:goList(${i.index})">${i.index}</a></li>
							</c:otherwise>
						</c:choose>
					</c:forEach>                
					<c:if test="${vo.endPage ne vo.totalPages}">                
	                	<li class="page-item"><a class="page-link" href="javascript:goList(${vo.endPage + 1})"><i class="fa-solid fa-angle-right"></i></a></li>
					</c:if>
	                <!-- <li class="page-item"><a class="page-link" href="#"><i class="fa-solid fa-angles-right"></i></a></li> -->
	            </ul> --%>
        </div>
    </div>
    
   
    </form>
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
    var seq = $("input:hidden[name=ccgSeq]");
	var goUrlForm = "/codeGroup/codeGroupReg";
	var goUrlList = "/codeGroup/codeGroupList";
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
    
    
</script>

</body>
</html>