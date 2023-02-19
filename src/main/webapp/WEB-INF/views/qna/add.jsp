<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<c:import url="../template/common_css.jsp"></c:import>
 <link rel="stylesheet" href="/resources/css/table.css">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD" crossorigin="anonymous">
<link rel="stylesheet" href="../resources/css/table.css">
</head>
<body>
	<c:import url="../template/header.jsp"></c:import>
 <div class="container fluid my-5">
   <div class= "row mb-4 ">
   <h1 class="mb-2"> 게시글 등록</h1>
	</div>
	
	<form class = "row g-3 ms-auto" action="./add" method="post" enctype="multipart/form-data">
	
		<div class ="col-12">
			<label for="qnaTitle" class="form-label">게시글 제목 </label>
  			<input type="text" class="form-control" id="qnaTitle" name="qnaTitle">
 		</div>
 		<div class ="col-12">
			<label for="qnaWriter" class="form-label">게시글 작성자 </label>
  			<input type="text" class="form-control" id="qnaWriter" name="qnaWriter">
 		</div>
 		
 		<div class ="col-12">
			<label for="qnaHit" class="form-label">조회수</label>
  			<input type="number" class="form-control" id="qnaHit" name="qnaHit">
 		</div>
 		<div class ="col-12">
			<label for="qnaContents" class="form-label">내용</label>
  			<input type="text" class="form-control" id="qnaContents" name="qnaContents">
 		</div>
 		
 		<div class ="col-12">
			<label for="files" class="form-label">Image</label>
  			<input type="file" class="form-control" id="files" name="pic">
 		</div>
		
		
	    
		<button type="submit" class="btn btn-secondary">등록</button>
		
	</form>
	   </div>
   <c:import url="../template/common_js.jsp"></c:import>
</body>
</html>