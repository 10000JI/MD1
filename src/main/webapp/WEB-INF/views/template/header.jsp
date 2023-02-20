<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<nav class="navbar bg-dark  navbar-expand-lg bg-body-tertiary" data-bs-theme="dark">
  <div class="container-fluid ">
  	<a href="/" class="navbar-brand"><img src="/resources/images/logo.png" alt=""></a>
 	<button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarSupportedContent">
		<ul class="navbar-nav me-auto mb-2 mb-lg-0">
			<li class="nav-item"><a class="nav-link active" href="/notice/list">공지사항</a></li>
			<li class="nav-item"><a class="nav-link active" href="/qna/list">Q&A</a></li>
		</ul>
		
		<ul class="navbar-nav">
			<c:if test="${empty member}">
				<li class="nav-item"><a class="nav-link" href="#">LOGIN</a></li>
				<li class="nav-item"><a class="nav-link" href="#">JOIN</a></li>
			</c:if>
			<c:if test="${not empty member }">
				<li class="nav-item"><a class="nav-link" href="#">MYPAGE</a></li>
				<li class="nav-item"><a class="nav-link" href="#">LOGOUT</a></li>
			</c:if>
			<li class="nav-item"><a class="nav-link" href="#">KO</a></li>
			<li class="nav-item"><a class="nav-link" href="#">EN</a></li>
			<li class="nav-item"><a class="nav-link" href="#">JP</a></li>
			<li class="nav-item"><a class="nav-link" href="#">CN</a></li>
		</ul>
  	</div>
  </div>
</nav>
	






























<!--<nav class="navbar navbar-dark bg-dark">
<div class="container">
    <header class="d-flex flex-wrap justify-content-center py-3 mb-4 border-bottom">
      <a href="/" class="d-flex align-items-center mb-3 mb-md-0 me-md-auto text-dark text-decoration-none">
        <svg class="bi me-2" width="40" height="32"><use xlink:href="#bootstrap"></use></svg>
        <span class="fs-4">Simple header</span>
      </a>

      <ul class="nav nav-pills" id="navbarSupportedContent">
        <li class="nav-item"><a href="/" class="nav-link active" aria-current="page">Home</a></li>
        <li class="nav-item"><a href="/qna/list" class="nav-link">게시판</a></li>
        <li class="nav-item"><a href="/qna/add" class="nav-link">글작성</a></li>
        <li class="nav-item"><a href="/qna/detail" class="nav-link">디테일</a></li>
        <li class="nav-item"><a href="../qna/update" class="nav-link">글수정</a></li>
      </ul>
    </header>
  </div>  

</nav>-->
>>>>>>> D_1
