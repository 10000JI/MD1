<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>공지사항 글쓰기</title>
<c:import url="../template/common_css.jsp"></c:import>
</head>
<body>
<c:import url="../template/header.jsp"></c:import>
<div class="container-fluid">
	<div class="row justify-content-center">
		<h1 class="col-md-7 text-center">BankBook ADD PAGE</h1>
	</div>	
	
	<div class="row justify-content-center">
		<form class="col-md-7" action="./add" method="post" enctype="multipart/form-data">
			<div class="mb-3">
				<label for="noticeTitle" class="form-label">제목</label> 
				<input type="text" name="noticeTitle" class="form-control" id="noticeTitle" placeholder="제목 입력">
			</div>
			
	
			<div class="mb-3">
				<label for="noticeContents" class="form-label">내용</label>
				<textarea name="noticeContents" class="form-control" id="noticeContents" placeholder="설명입력" rows="7"></textarea>
			</div>
			
			<div class="mb-3">
				<label for="noticeWriter" class="form-label">글쓴이</label>
				<input type="text" name="noticeWriter" class="form-control" id="noticeWriter" " placeholder="글쓴이 입력">
			</div>
			
			<div class="mb-3">
				<label for="noticeHit" class="form-label">조회수</label>
				<input type="text" name="noticeHit" class="form-control" id="noticeHit" placeholder="조회수 입력">
			</div>
		
			<div class="mb-3">
			  <label for="files" class="form-label">Image</label>
			  <input type="file" class="form-control" id="files" name="pic">
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