<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>공지사항 상세정보</title>
<c:import url="../template/common_css.jsp"></c:import>
</head>
<body>
<c:import url="../template/header.jsp"></c:import>
<div class="container-fluid my-5">
	<div class="row justify-content-center">
		<h1 class="col-md-8 mb-5 text-center">NOTICE DETAIL PAGE</h1>
	</div>
	<div class="row justify-content-center ">
		<div class="col-md-7">
			<c:if test="${not empty dto.noticeNum }">	
				<div class="shadow-lg p-3 bg-body-tertiary rounded">
					<h3 class="fs-4 mb-5 fw-bold text-center">Num : ${dto.noticeNum}</h3>
					<h3 class="fs-4 mb-5 fw-bold text-center">Title : ${dto.noticeTitle}</h3>
					<h3 class="fs-4 mb-5 fw-bold text-center">Writer : ${dto.noticeWriter}</h3>
					<h3 class="fs-4 mb-5 fw-bold text-center">Date : ${dto.noticeRegDate}</h3>
					<h3 class="fs-4 mb-5 fw-bold text-center">Contents : ${dto.noticeContents}</h3>
					<h3 class="fs-4 mb-5 fw-bold text-center">Hit : ${dto.noticeHit}</h3>
				</div>
				
				<div>
					<c:if test="${not empty dto.noticeImgDTO}">
						<img src="../resources/upload/notice/${dto.noticeImgDTO.fileName}">
					</c:if>
				</div>
				
				<a href="./delete?noticeNum=${dto.noticeNum}" class="btn btn-dark col-2">상품삭제</a> 
			</c:if>
			<c:if test="${empty dto.noticeNum}">	
				<h3 class="fs-4 mb-5 fw-bold text-center">존재하지 않는 상품입니다.</h3> 
			</c:if>
				<a href="./update?noticeNum=${dto.noticeNum}" class="btn btn-dark col-2">상품수정</a>
				<a href="./list" class="btn btn-dark col-2">목록으로</a>
		</div>
	</div>
	<c:import url="../template/common_js.jsp"></c:import>
	
</div>

<c:import url="../template/common_js.jsp"></c:import>
</body>
</html>