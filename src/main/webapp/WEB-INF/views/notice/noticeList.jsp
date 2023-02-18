<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>공지 리스트</title>
</head>
<body>
<div class="container-fluid my-5">
	
	<div class="row mb-4">
		<h1 class="col-md-7 mx-auto text-center border-bottom border-dark pb-4">BankBook List page</h1>
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
						<!-- ${pageScope.dto.bookName}=${dto.bookName} -->
						<!-- ?이후는 파라미터임을 명시 -->
						<td class="tbl_td">${dto.noticeNum}</td>
						<td><a href="./detail?noticeNum=${dto.noticeTitle}">${dto.noticeTitle}</a></td>
						<td class="tbl_td">${dto.noticeWriter}</td>
						<td class="tbl_td">${dto.noticeRegDate}</td>
						<td class="tbl_td">${dto.noticeHit}</td>
						</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
	<div class="row col-md-7 mx-auto">
		<a href="./add" class="btn btn-primary col-2">상품등록</a>
	</div>
</div>
</body>
</html>