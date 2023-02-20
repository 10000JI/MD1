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
	<h1 class="col-md-7 mx-auto text-center pb-4">게시글 목록</h1>
	</div>
<!-- 서버 내부 주소, 상대 경로  -->
<div class="row col-md-7 mx-auto">

	<table>
	
	<thead>
	<tr>
	<th>글번호</th>
	<th>글제목</th>
	<th>작성자</th>
	<th>작성날짜</th>
	<th>조회수</th>
	</tr>
	</thead>
	<tbody>
	<c:forEach items="${list}" var="dto">
	 <tr>
	 
	 <td>${dto.qnaNum}</td>
	 <td><a href="./detail?qnaNum=${dto.qnaNum}">${dto.qnaTitle}</a></td>
	 <td>${dto.qnaWriter}</td>
	 <td>${dto.qnaRegDate}</td>
	 <td>${dto.qnaHit}</td>
	 </tr>
</c:forEach>
</tbody>
</table>
</div>
	
	<c:import url="../template/common_js.jsp"></c:import>
</body>
</html>