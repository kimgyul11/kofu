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
    <link rel="stylesheet" href="/resources/xdmin/xdmin_css/startpage.css">
    <title>AirLanguage</title>
</head>
<body>
    <div class="container">
        <div class="card">
            <h2>AirLanguage</h2>
            <div class="pic"></div>
            <button onClick="location.href='airLogin'">click</button>
        </div>
        <div class="card card2">
            <h4>Admin Page</h4>
        <i class="fas fa-arrow-right"></i>
            <div class="pic"></div>
            <button type="button" onClick="location.href='xdminlogin'">click</button>
        </div>
    </div>
    <script src="https://kit.fontawesome.com/86d85c3d85.js" crossorigin="anonymous"></script>
    <script>
	
	goForm = function(keyValue) {

		/* if(keyValue != 0) seq.val(btoa(keyValue)); */
		seq.val(keyValue);
		form.attr("action", goUrlForm).submit();
	}
	
    </script>
</body>
</html>