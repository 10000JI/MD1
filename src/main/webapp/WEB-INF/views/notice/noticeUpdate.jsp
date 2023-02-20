<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri ="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html> 
<html>
<head>
<meta charset="UTF-8">
<title>공지사항 수정</title>
<c:import url="../template/common_css.jsp"></c:import>
</head>
<body>
<c:import url="../template/header.jsp"></c:import>
	<div class="container-fluid">
		<div class="row">
			<h1>NOTICE Update Page</h1>
		</div>
		
		<div class="row">
			<form action="./update" method="post">
				<input type="hidden" name="noticeNum" value="${dto.noticeNum}">
				<input type="hidden" name="noticeRegDate" value="${dto.noticeRegDate}">
								
				<div class="mb-3">
					<label for="noticeTitle" class="form-label fw-bold">제목</label> 
					<input type="text" name="noticeTitle" class="form-control" id="noticeTitle" value="${dto.noticeTitle}">
				</div>
			
				<div class="mb-3">
				<label for="noticeContents" class="form-label">내용</label>
				<textarea name="noticeContents" class="form-control" id="noticeContents" rows="7" placeholder="${dto.noticeContents}"></textarea>
			</div>
			
			<div class="mb-3">
				<label for="noticeWriter" class="form-label">글쓴이</label>
				<input type="text" name="noticeWriter" class="form-control" id="noticeWriter" value="${dto.noticeWriter}">
			</div>
			
			<div class="mb-3">
				<label for="noticeHit" class="form-label">조회수</label>
				<input type="text" name="noticeHit" class="form-control" id="noticeHit" value="${dto.noticeHit}">
			</div>
		
			
			<div class="mb-3">
				<button class="btn btn-outline-success" type="submit">등록</button> 
			</div>
				
			</form>		
		</div>
	</div>
	<c:import url="../template/common_js.jsp"></c:import>
</body>
</html>