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
    <link rel="stylesheet" href="/resources/xdmin/css/airStratpage.css">
    <title>DODAM</title>
</head>
<body>
<div class="header">
    <div class="inner-header flex">
        <div class="wordWrap">
            <div class="word"></div>
        </div>
        <ul class="urlWrap">
            <li class="urlbox" onclick="location.href='/airLogin'">
                <div class="urlcontent-user">
                </div>
                <h2>USER PAGE</h2>
            </li>
            <li class="urlbox" onclick="location.href='/AircodeGroup/codeGroupList'">
                <div class="urlcontent-admin">
                </div>
                <h2>ADMIN PAGE</h2>
            </li>
        </ul>
    </div>
    
    <!--Waves Container-->
    <div>
        <svg class="waves" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink"
            viewBox="0 24 150 28" preserveAspectRatio="none" shape-rendering="auto">
            <defs>
            <path id="gentle-wave" d="M-160 44c30 0 58-18 88-18s 58 18 88 18 58-18 88-18 58 18 88 18 v44h-352z" />
            </defs>
            <g class="parallax">
            <use xlink:href="#gentle-wave" x="48" y="0" fill="rgba(255,255,255,0.7" />
            <use xlink:href="#gentle-wave" x="48" y="3" fill="rgba(255,255,255,0.5)" />
            <use xlink:href="#gentle-wave" x="48" y="5" fill="rgba(255,255,255,0.3)" />
            <use xlink:href="#gentle-wave" x="48" y="7" fill="#fff" />
            </g>
        </svg>
    </div>
    <!--Waves end-->

    </div>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js" integrity="sha512-894YE6QWD5I59HgZOGReFYm4dnWc1Qt5NtvYSaNcOP+u1T9qYdvdihz0PPSiiqn/+/3e7Jo4EaG7TubfWGUrMQ==" crossorigin="anonymous" referrerpolicy="no-referrer"></script> 
    <script>
var words = ['에어랭귀지에 오신걸 환영합니다', 'エアランゲージへようこそ。', 'Welcome to AIRLANGUAGE', '새로운 언어를 배울시간','新しい言語を学ぶ時間','learn a new language'],
    part,
    i = 0,
    offset = 0,
    len = words.length,
    forwards = true,
    skip_count = 0,
    skip_delay = 15,
    speed = 70;
var wordflick = function () {
setInterval(function () {
    if (forwards) {
    if (offset >= words[i].length) {
        ++skip_count;
        if (skip_count == skip_delay) {
            forwards = false;
            skip_count = 0;
        }
    }
    }
    else {
    if (offset == 0) {
        forwards = true;
        i++;
        offset = 0;
        if (i >= len) {
        i = 0;
        }
    }
    }
    part = words[i].substr(0, offset);
    if (skip_count == 0) {
    if (forwards) {
        offset++;
    }
    else {
        offset--;
    }
    }
    $('.word').text(part);
},speed);
};

$(document).ready(function () {
    wordflick();
});

    </script>
</body>
</html>