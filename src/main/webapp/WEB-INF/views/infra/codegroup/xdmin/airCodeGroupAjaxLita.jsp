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
<input type="hidden" name="thisPage" value="<c:out value="${vo.thisPage}" default="1"/>">
<input type="hidden" name="rowNumToShow" value="<c:out value="${vo.rowNumToShow}"/>">
<input type="hidden" name="ccgSeq" value="<c:out value="${vo.ccgSeq}"/>">

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
	            <br>
        	</div>
            <button class="btn_reg"  id="btnForm"><i class="fa-solid fa-folder-plus"></i></button>
        </div>
<script type="text/javascript">
var seq = $("input:hidden[name=ccgSeq]");
var goUrlForm = "/AircodeGroup/codeGroupView";

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
		setLita();
	}
	
	$("#changeRowNum").on("change", function(){
		$("input:hidden[name=rowNumToShow]").val($("#changeRowNum option:selected").val());
		setLita();
	}); 
</script>
</body>
</html>