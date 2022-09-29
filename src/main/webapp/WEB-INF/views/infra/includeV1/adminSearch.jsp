<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

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
            <input type="text" id="startDate" placeholder="시작일을 선택"<c:out value="${vo.startDate }"/>>
            <input type="text" id="endDate" placeholder="종료일을 선택" <c:out value="${vo.endDate }"/>><br>
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