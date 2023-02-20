<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<c:import url="../template/common_css.jsp"></c:import>
<link rel="stylesheet" href="../resources/css/table.css">
</head>
<body>
<!-- 서버 내부 주소, 상대 경로  -->
	<c:import url="../template/header.jsp"></c:import>
 	<div class="row mb-4 border-bottom border-dark">
	<h1 class="col-md-7 mx-auto text-center pt-3 pb-3">게시글 목록</h1>
	</div>
<!-- 서버 내부 주소, 상대 경로  -->
<div class="row col-md-7 pt-3 mx-auto">

	
<table class="table table-hover">
  <thead>
    <tr>
      <th scope="col">글번호</th>
      <th scope="col">글제목</th>
      <th scope="col">작성자</th>
      <th scope="col">작성날짜</th>
      <th scope="col">조회수</th>
    </tr>
  </thead>
  <tbody>
    <c:forEach items="${list}" var="dto">
    <tr>
      <th scope="row">${dto.qnaNum}</th>
      <td><a href="./detail?qnaNum=${dto.qnaNum}">${dto.qnaTitle}</a></td>
      <td>${dto.qnaWriter}</td>
      <td>${dto.qnaRegDate}</td>
      <td>${dto.qnaHit}</td>
    </tr>
    </c:forEach>
  </tbody>
</table>

<div class="row">
			<nav aria-label="Page navigation example">
			  <ul class="pagination ">
			  <li class="page-item ">
			      <a class="page-link" href="./list?page=1" aria-label="Previous">
			        <span aria-hidden="true">&laquo;</span>
			      </a>
			    </li>
			    <li class="page-item ${pager.before?'disabled':''}">
			      <a class="page-link" href="./list?page=${pager_D1.startNum-1}" aria-label="Previous">
			        <span aria-hidden="true">&lsaquo;</span>
			      </a>
			    </li>
			    
			    <c:forEach begin="${pager.startNum}" end="${pager.lastNum}" var="i">
			    	<li class="page-item"><a class="page-link" href="./list?page=${i}">${i}</a></li>
				</c:forEach>
				
			    <li class="page-item ${pager.after eq false ? 'disabled' : ''}"> <%--${pager.after eq false ? 'disabled' : ''} --%>  
			      <a class="page-link" href="./list?page=${pager.lastNum+1}" aria-label="Next">
			        <span aria-hidden="true">&rsaquo;</span>
			      </a>
			    </li><li class="page-item "> <%--${pager.after eq false ? 'disabled' : ''} --%>  
			      <a class="page-link" href="./list?page=${pager.totalPage}" aria-label="Next">
			        <span aria-hidden="true">&raquo;</span>
			      </a>
			    </li>
			  </ul>
			</nav>
		</div>
</div>
	
	<c:import url="../template/common_js.jsp"></c:import>
</body>
</html>