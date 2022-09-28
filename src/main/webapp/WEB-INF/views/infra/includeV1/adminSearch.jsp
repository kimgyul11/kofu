<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

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
            <input type="text" id="startDate">
            <input type="text" id="endDate"><br>
            <select name="" id="">
                <option value="">검색조건</option>
                <option value="0">코드번호</option>
                <option value="1">코드그룹명(한글)</option>
                <option value="2">코드그룹명(영어)</option>
            </select>
            <input type="text">
            <button type="button"><i class="fa-brands fa-searchengin"></i></button>
            <button ><i class="fa-solid fa-arrow-rotate-right"></i></button>
</div>