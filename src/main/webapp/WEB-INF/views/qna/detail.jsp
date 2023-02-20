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
	<c:import url="../template/header.jsp"></c:import>
 	<div class="row mb-4 border-bottom border-dark">
	<h1 class="col-md-7 mx-auto text-center pt-4 pb-4">게시글 상세정보</h1>
	</div>

	

<div class="row col-md-7 mx-auto">

	
	
	<c:if test="${not empty dto}">
	<table class="table">
  <tbody>
    <tr>
      <th scope="row">글번호</th>
      <td>${dto.qnaNum}</td>
    </tr>
    <tr>
      <th scope="row">제목</th>
      <td>${dto.qnaTitle}</td>
    </tr>
    <tr>
      <th scope="row">작성자</th>
      <td>${dto.qnaWriter}</td>
    </tr>
    <tr>
      <th scope="row">작성날짜</th>
      <td>${dto.qnaRegDate}</td>
    </tr>
    <tr>
      <th scope="row">조회수</th>
      <td>${dto.qnaHit}</td>
    </tr>
    <tr>
      <th scope="row">글내용</th>
      <td>${dto.qnaContents}</td>
    </tr>
  </tbody>
  						
</table>
	</c:if>
	
	<c:if test = "${empty dto}">
	 <h3>존재하지 않는 num </h3>
	</c:if>
	<div>
		<c:if test="${not empty dto.qnaImgDTO}">
			<img src="../resources/upload/qna/${dto.qnaImgDTO.fileName}">
		</c:if>
	</div>
	
	
	
	
	
	
</div>
<div class="d-flex justify-content-around">
	<div class="row gy-4">
		<div class="col">
			<a class="btn btn-warning" href="./update?qnaNum=${dto.qnaNum}" role="button">글수정</a>
			<a class="btn btn-danger" href="./delete?qnaNum=${dto.qnaNum}" role="button">글삭제</a>
			<a class="btn btn-primary" href="./list" role="button">목록으로</a>
		</div>
	</div>
</div>
</body>
</html>