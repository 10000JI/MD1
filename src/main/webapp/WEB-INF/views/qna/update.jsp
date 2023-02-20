<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="./update" method="post">
		<input type="hidden" name="qnaNum" value="${dto.qnaNum}">
		<input type="hidden" name="qnaRegDate" value="${dto.qnaRegDate}">
		
		<input type="text" name="qnaTitle" value="${dto.qnaTitle}"  placeholder="게시판 제목">
		<input type="text" name="qnaWriter" value="${dto.qnaWriter}"  placeholder="게시판 작성자">
		<input type="number" name="qnaHit" value="${dto.qnaHit}" placeholder="조회수">
		<textarea rows="" cols="" name="qnaContents" placeholder="게시판 내용" >${dto.qnaContents}</textarea>	
		<input type="submit" name="submit"value="수정">
	</form>
</body>
</html>