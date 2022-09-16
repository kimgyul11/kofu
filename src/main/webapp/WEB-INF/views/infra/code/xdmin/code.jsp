<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags" %>

<!doctype html>
<html lang="en">
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>코드관리</title>
	<!-- CDN : content Delivery Network  -->
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous">
	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.7.1/font/bootstrap-icons.css">
	<link rel="preconnect" href="https://fonts.googleapis.com">
	
	<link rel="stylesheet" href="/resources/xdmin/css/codeList.css" />
</head>
<body class="ng-font2">
<form method="post" action="/code/code">
<!-- 네비바 -->
	<nav class="navbar" style="background-color:#e3f2fd;">
		<div class="container-fluid">
			<a class="navbar-brand" href="memberList.html">
				<i class="fa-solid fa-plane-departure"></i>
				AIR LANGUAGE
			</a>
			<button class="btn btn-dark" type="button" data-bs-toggle="offcanvas" data-bs-target="#offcanvasRight"
			    aria-controls="offcanvasRight"><i class="bi bi-list"></i>
			</button>
			<div class="offcanvas offcanvas-end" tabindex="-1" id="offcanvasRight" aria-labelledby="offcanvasRightLabel">
			    <div class="offcanvas-header">
			        <h5 class="offcanvas-title" id="offcanvasRightLabel">메뉴</h5>
			        <button type="button" class="btn-close" data-bs-dismiss="offcanvas" aria-label="Close"></button>
			    </div>
		    	<div class="offcanvas-body">
		    		<div class="rightmenu">
		    			<i class="bi bi-person"></i>
		    		</div>
		    		<p>환영합니다.<b>관리자</b>님</p>
		    		<hr>
		    		<ul>
		    			<li>로그아웃<i class="fa-solid fa-right-from-bracket"></i>
		    			<li>설정<i class="fa-solid fa-gear"></i>
		    		</ul>
			    </div>
			</div>
		</div>
	</nav>
<!-- 네비바 끝 -->	

	<nav class="navbar navbar-expand-lg" style="background-color: #e3f2fd;">
		<div class="container-fluid">
			<a class="navbar-brand" href="#">Navbar</a>
			<button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>
			<div class="collapse navbar-collapse" id="navbarNav">
				<ul class="navbar-nav">
					<li class="nav-item">
						<a class="nav-link active" aria-current="page" href="#">회원관리</a>
					</li>
					<li class="nav-item">
						<a class="nav-link" href="#">게시판관리</a>
					</li>
					<li class="nav-item">
						<a class="nav-link" href="#">코드관리</a>
					</li>
					<li class="nav-item">
						<a class="nav-link" href="#">시스템관리</a>
					</li>
				</ul>
			</div>
		</div>
	</nav>
	

<!--제목 끝  -->	
	<div id="zentai">
		<div>
		  <ul class="nav nav-tabs" style="margin:4px;">
		    <li class="nav-item">
		        <a class="nav-link active" aria-current="page" href="#">코드그룹관리</a>
		    </li>
		    <li class="nav-item">
		        <a class="nav-link" href="#">코드관리</a>
		    </li>
		    <li class="nav-item">
		        <a class="nav-link" href="#">회원관리</a>
		    </li>
		</ul>
		</div>
		<!-- 검색창 상단-->
		<div class="row row-cols-4"style="margin-top:10px;">
		    <div class="col">
		    	<select class="form-select" id='shDelNy' name='shDelNy'>
					<option value="" <c:if test="${empty vo.shDelNy}">selected</c:if>>검색구분</option>
					<option value='0' <c:if test="${vo.shDelNy eq 0}">selected</c:if>>N</option>
					<option value='1' <c:if test="${vo.shDelNy eq 1}">selected</c:if>>Y</option>
				</select>
		    </div>
		    <div class="col">
		    	<select class="form-select" aria-label="Default select example">
					<option selected>삭제여부</option>
					<option value="1">N</option>
					<option value="2">Y</option>
				</select>
		    </div>
		    <div class="col">
		    	<input class="form-control" type="text" placeholder="시작기간을 입력해주세요" aria-label="default input example">
		    </div>
		    <div class="col">
		    	<input class="form-control" type="text" placeholder="종료기간을 입력해주세요" aria-label="default input example">
		    </div>
		</div>
		<!-- 하단 검색창 -->
		<br>
		<div class="float-start">
    		<select class="form-select" id="shOption" name="shOption" aria-label="Default select example">
				<option value="" <c:if test="${empty vo.shOption}">selected</c:if>>검색구분</option>
				<option value="1" <c:if test="${vo.shOption eq 1}">selected</c:if>>코드그룹 코드</option>
				<option value="2" <c:if test="${vo.shOption eq 2}">selected</c:if>>코드그룹 이름(한글)</option>
				<option value="3" <c:if test="${vo.shOption eq 3}">selected</c:if>>코드그룹 이름(영어)</option>
			</select>
		</div>		
	    <div class="float-start">
   			 <input  class="form-control" type="text" id="shValue" name="shValue" placeholder="검색어를 입력해주세요." aria-label="default input example" style="margin-left:5px; width:300px;">
		</div>
		<div class="float-start">
			 <button type="submit" class="btn btn-outline-success" style="margin-left:20px;"><i class="fa-solid fa-magnifying-glass"></i></button>	
		</div>
		<div class="float-start">
			 <button type="button" class="btn btn-outline-danger" style="margin-left:20px;"><i class="fa-solid fa-rotate-left"></i></button>	
		</div>		
	</div>
</div>	  

 <!--검색창 끝  -->
 
 
<br>
<br>   
 

    
    <!--테이블 시작  -->
    <div class="contaner"
    <div style="width:80%;margin:auto; text-align: center; height:700px;">
		<table class="table table-hover">
		    <thead>
		        <tr class="table-dark">
		            <th scope="col" >
		            	<div class="form-check">
		    				<input class="form-check-input" type="checkbox" value="" id="flexCheckDefault"onclick='selectAll(this)'>
		    				<label class="form-check-label" for="flexCheckDefault">
		 			   		</label>
						</div>
		            </th>
		            <th scope="col">#</th>
		            <th scope="col">코드그룹 코드</th>
		            <th scope="col">코드그룹 이름(한글)</th>
		            <th scope="col">코드</th>
		            <th scope="col">대체 코드</th>
		            <th scope="col">코드 이름(한글)</th>
		            <th scope="col">코드 이름(영문)</th>
		            <th scope="col">사용</th>
		            <th scope="col">삭제</th>
		            <th scope="col">등록일</th>
		            <th scope="col">수정일</th>
		            
		        </tr>
		    </thead>
		    <tbody>
		        <tr>
		        <c:forEach items="${list}" var="list" varStatus="status">
		            <th scope="row">
		            	<div class="form-check">
		    				<input class="form-check-input" type="checkbox" value="5번" id="flexCheckDefault"name='nember'>
		    				<label class="form-check-label" for="flexCheckDefault">
		 			   		</label>
						</div>
		            </th>
		            <td><a href="/code/codeView?ccSeq=<c:out value="${list.ccSeq }"/>"><c:out value="${list.ccSeq }"/></td>
		            <td><c:out value="${list.ccgSeq }"/></td>
		            <td><c:out value="${list.ccg_groupname }"/></td>
		            <td><c:out value="${list.ccSeq }"/></td>
		            <td><c:out value="${list.cc_number }"/></td>
		            <td><c:out value="${list.cc_name }"/></td>
		            <td><c:out value="${list.cc_nameEng }"/></td>
		            <td><c:out value="${list.cc_useNy }"/></td>
		            <td><c:out value="${list.cc_delNy }"/></td>
		            <td></td>
		            <td></td>
		        </tr>
		        </c:forEach>
		    </tbody>
		</table>
	<nav aria-label="Page navigation example" >
    <ul class="pagination justify-content-center" >
        <li class="page-item">
            <a class="page-link" href="#" aria-label="Previous">
                <span aria-hidden="true">&laquo;</span>
            </a>
        </li>
        <li class="page-item"><a class="page-link" href="#">1</a></li>
        <li class="page-item"><a class="page-link" href="#">2</a></li>
        <li class="page-item"><a class="page-link" href="#">3</a></li>
        <li class="page-item">
            <a class="page-link" href="#" aria-label="Next">
                <span aria-hidden="true">&raquo;</span>
            </a>
        </li>
    </ul>
	</nav>
	<div id="kensaku">	
		<div class="float-start">
			<div class="modal-dialog modal-dialog-centered modal-dialog-scrollable">
				<button type="button" class="btn btn-outline-danger" style="margin:5px;">
				<i class="fa-solid fa-ban"></i>
				
				</button>
			</div>
			
		</div>
		<div class="float-start">
			<button type="button" class="btn btn-outline-danger "style="margin:5px;" data-bs-toggle="modal" data-bs-target="#exampleModal">
				<i class="fa-solid fa-trash-can"></i>
			</button>
			<div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
			  <div class="modal-dialog">
			    <div class="modal-content">
			      <div class="modal-header">
			        <h5 class="modal-title" id="exampleModalLabel">알림</h5>
			        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="닫기"></button>
			      </div>
			      <div class="modal-body">
			        삭제 하시겠습니까?
			      </div>
			      <div class="modal-footer">
			        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">취소</button>
			        <button type="button" class="btn btn-danger" data-bs-dismiss="modal">확인</button>
			      </div>
			    </div>
			  </div>
			</div>
		</div>
		<div class="float-end">
			<a href="codelistform">
				<button type="button" class="btn btn-outline-dark" style="margin:5px;">생성</button>
			</a>
		</div>
		<div class="float-end">
			<button type="button" class="btn btn-outline-dark" style="margin:5px;">수정</button>
		</div>
	</div>	
</div>
<br>
</form>
<!-- 하단 추가 삭제 수정 버튼 완료 -->
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2" crossorigin="anonymous"></script>
	<script>
		function selectAll(selectAll)  {
		  const checkboxes 
		       = document.getElementsByName('nember');
		  
		  checkboxes.forEach((checkbox) => {
		    checkbox.checked = selectAll.checked;
		  })
		}function selectAll(selectAll)  {
			  const checkboxes 
		       = document.getElementsByName('nember');
		  
		  checkboxes.forEach((checkbox) => {
		    checkbox.checked = selectAll.checked;
		  })
		}
	</script>
	<script src="https://kit.fontawesome.com/86d85c3d85.js" crossorigin="anonymous"></script>
	
</body>
</html>