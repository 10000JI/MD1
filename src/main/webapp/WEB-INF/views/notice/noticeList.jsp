<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>공지 리스트</title>
<c:import url="../template/common_css.jsp"></c:import>
</head>
<body>
<c:import url="../template/header.jsp"></c:import>
<div class="container-fluid my-5">
	
	<div class="row mb-4">
		<h1 class="col-md-7 mx-auto text-center border-bottom border-dark pb-4">NOTICE LIST PAGE</h1>
	</div>
	
	<div class="row col-md-7 mx-auto">
		<table class="table table-hover">
			<thead>
				<tr>
					<th>번호</th>
					<th>제목</th>
					<th>작성자</th>
					<th>작성일</th>
					<th>조회수</th>
				</tr>
			</thead>
			<tbody class="table-group-divider">
				<!-- items의 ${list}는 RequestScope, var의 dto는 PageScope -->
				<c:forEach items="${list}" var="dto">
					<tr>
						<td class="tbl_td">${dto.noticeNum}</td>
						<td><a href="./detail?noticeNum=${dto.noticeNum}">${dto.noticeTitle}</a></td>
						<td class="tbl_td">${dto.noticeWriter}</td>
						<td class="tbl_td">${dto.noticeRegDate}</td>
						<td class="tbl_td">${dto.noticeHit}</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
		
		<!-- 페이징 -->
		<div class="row">
			<nav aria-label="Page navigation example">
			  <ul class="pagination ">
			  <li class="page-item ">
			      <a class="page-link" href="./list?page=1&kind=${pager.kind}&search=${pager.search}" aria-label="Previous">
			        <span aria-hidden="true">&laquo;</span>
			      </a>
			    </li>
			    <li class="page-item ${pager.before?'disabled':''}">
			      <a class="page-link" href="./list?page=${pager.startNum-1}&kind=${pager.kind}&search=${pager.search}" aria-label="Previous">
			        <span aria-hidden="true">&lsaquo;</span>
			      </a>
			    </li>
			    
			    <c:forEach begin="${pager.startNum}" end="${pager.lastNum}" var="i">
			    	<li class="page-item"><a class="page-link" href="./list?page=${i}&kind=${pager.kind}&search=${pager.search}">${i}</a></li>
				</c:forEach>
				
			    <li class="page-item ${pager.after eq false ? 'disabled' : ''}"> <%--${pager.after eq false ? 'disabled' : ''} --%>  
			      <a class="page-link" href="./list?page=${pager.lastNum+1}&kind=${pager.kind}&search=${pager.search}" aria-label="Next">
			        <span aria-hidden="true">&rsaquo;</span>
			      </a>
			    </li><li class="page-item "> <%--${pager.after eq false ? 'disabled' : ''} --%>  
			      <a class="page-link" href="./list?page=${pager.totalPage}&kind=${pager.kind}&search=${pager.search}" aria-label="Next">
			        <span aria-hidden="true">&raquo;</span>
			      </a>
			    </li>
			  </ul>
			</nav>
		</div>
		
		<!-- 검색창 -->
		<div class="row">
			<form class="row g-3" action="./list" method="get">
				<div class="col-auto">
				  <label for="kind" class="visually-hidden">Kind</label>
				  <select class="form-select" name="kind" id="kind" aria-label="Default select example">
					<option value="title">제목</option>
					<option value="contents">내용</option>
				  </select>
				</div>
				<div class="col-auto">
				  <label for="search" class="visually-hidden">Search</label>
				  <input type="text" class="form-control" name="search" id="search" placeholder="검색어를 입력하세요">
				</div>
				<div class="col-auto">
				  <button type="submit" class="btn btn-dark mb-3">검색</button>
				</div>
			</form>
		
		
		</div>
		
	</div>
	<div class="row col-md-7 mx-auto">
		<a href="./add" class="btn btn-dark col-2">상품등록</a>
	</div>
</div>
	<c:import url="../template/common_js.jsp"></c:import>
</body>
</html>