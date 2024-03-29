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
	<title>코드그룹리스트</title>
	<script src="https://kit.fontawesome.com/15c84217dd.js" crossorigin="anonymous"></script>
	<!-- Bootstrap CSS -->
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous">
	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.7.1/font/bootstrap-icons.css">
	<link rel="preconnect" href="https://fonts.googleapis.com">
    <!-- user css -->
    <link rel="stylesheet" href="/resources/xdmin/css/codeGroupListi.css" />
</head>
<body class="ng-font2">
<form method="post" action="/codeGroup/codeGroupList" name="form">
<input type="hidden" name="mainKey">
<input type="hidden" name="thisPage" value="<c:out value="${vo.thisPage}" default="1"/>">
<input type="hidden" name="rowNumToShow" value="<c:out value="${vo.rowNumToShow}"/>">
<input type="hidden" name="ccgSeq" value="<c:out value="${vo.ccgSeq}"/>">

<!-- 네비바 -->
	<nav class="navbar" style="background-color:#e3f2fd;">
		<div class="container-fluid">
			<a class="navbar-brand" href="codeGroupoList">
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
		    	<select class="form-select" aria-label="Default select example" >
					<option selected>검색구분</option>
					<option value="1">One</option>
					<option value="2">Two</option>
					<option value="3">Three</option>
				</select>
		    </div>
		    <div class="col">
		    	<input id="startDate" name="startDate" class="form-control" type="text" placeholder="시작기간을 입력해주세요" <c:out value="${vo.startDate }"/>>
		    </div>
		    <div class="col">
		    	<input id="endDate" name="endDate" class="form-control" type="text" placeholder="종료기간을 입력해주세요" <c:out value="${vo.endDate }"/>>
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
   			 <input  class="form-control" type="text" value="<c:out value="${vo.shValue }"/>" id="shValue" name="shValue" placeholder="검색어를 입력해주세요." aria-label="default input example" style="margin-left:5px; width:300px;">
		</div>
		<div class="float-start">
			 <button type="submit" class="btn btn-outline-success" style="margin-left:20px;"><i class="fa-solid fa-magnifying-glass"></i></button>	
			 <button id="btnReset" name="btnReset" type="button" class="btn btn-outline-danger" style="margin-left:20px;"><i class="fa-solid fa-rotate-left"></i></button>
		</div>
		
	</div>
</div>	  
 <!--검색창 끝  -->
 
 
<br>
<br>
<c:forEach items="${oracleList}" var="oracleList" varStatus="status">
  	<c:out value="${oracleList.JOB_TITLE}"/>
  </c:forEach>   
    <!--테이블 시작  -->
    <div class="contaner">
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
		            <th scope="col">코드그룹 이름(영문)</th>
		            <th scope="col">사용확인</th>
		            <th scope="col">코드갯수</th>
		            <th scope="col">등록일</th>
		            <th scope="col">수정일</th>
		            <th scope="col">삭제여부</th>
		        </tr>
		    </thead>
		    <tbody>
		    <!-- choose --> 
		    	<c:choose>
					<c:when test="${fn:length(list) eq 0}">
						<tr>
							<td class="text-center" colspan="10">no data</td>
						</tr>
				    </c:when>
				    <c:otherwise>
					    <c:forEach items="${list}" var="list" varStatus="status">
					        <tr>
					            <td scope="row">
					            	<div class="form-check">
					    				<input class="form-check-input" type="checkbox" value="5번" id="flexCheckDefault"name='nember'>
					    				<label class="form-check-label" for="flexCheckDefault">
					 			   		</label>
									</div>
					            </td>
								<td><a href="javascript:goForm(<c:out value="${list.ccgSeq }"/>)" class="text-decoration-none"><c:out value="${list.ccgSeq }"/></a></td>
					            <td><c:out value="${list.ccg_nomber }"/></td>
					            <td><c:out value="${list.ccg_groupname }"/></td>
					            <td><c:out value="${list.ccg_groupnameEng }"/></td>
					            <td><c:out value="${list.useNY }"/></td>
					            <td><c:out value="${list.countCCG }"/></td>
					            <td><c:out value="${list.insertdate }"/></td>
					            <td><c:out value="${list.moddate }"/></td>
					            <td><c:out value="${list.delNy }"/></td>
					        </tr>
				        </c:forEach>
			        </c:otherwise>
	        	</c:choose>
	        	
		    </tbody>
		</table>
		
		
		<!-- 페이지네이션 시작 -->
	<!-- <nav aria-label="Page navigation example" >
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
	</nav>페이지네이션 끝 -->
	<div class="container-fluid px-0 mt-2">
	    <div class="row">
	        <div class="col">
	            <!-- <ul class="pagination pagination-sm justify-content-center mb-0"> -->
	            <ul class="pagination justify-content-center mb-0">
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
	            </ul>
	        </div>
	    </div>
	</div>
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
				<button type="button" class="btn btn-outline-dark" style="margin:5px;" id="btnForm">생성</button>
		</div>
		<div class="float-end">
			<button type="button" class="btn btn-outline-dark" style="margin:5px;">수정</button>
		</div>
	</div>
	</div>	
</div>
<br>

</form>
<!-- 하단 추가 삭제 수정 버튼 완료 -->
	
	
	<!-- Datepicker -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js" integrity="sha512-894YE6QWD5I59HgZOGReFYm4dnWc1Qt5NtvYSaNcOP+u1T9qYdvdihz0PPSiiqn/+/3e7Jo4EaG7TubfWGUrMQ==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
<link rel="stylesheet" href="http://code.jquery.com/ui/1.8.18/themes/base/jquery-ui.css" type="text/css" />
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>
<script src="http://code.jquery.com/ui/1.8.18/jquery-ui.min.js"></script>
<script type="text/javascript">

/* 체크박스 */
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