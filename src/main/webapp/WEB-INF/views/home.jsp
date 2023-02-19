<%@ page language="java" contentType="text/html; charset=UTF-8"
  pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
 	<meta name="viewport" content="width=device-width, initial-scale=1">
   	<c:import url="./template/common_css.jsp"></c:import>
</head>
<body>
 <!-- 서버 내부 주소, 상대 경로  -->
  <c:import url="./template/header.jsp"></c:import>

<div id="container"><h1 class="style-1">HOME</h1></div>
<P>  The time on the server is ${serverTime}. </P>

</body>
</html>