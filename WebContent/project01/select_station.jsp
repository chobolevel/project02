<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

<header>
<%@include file = "header.jsp" %>
</header>

<nav>
<%@include file = "nav.jsp" %>
</nav>

<section>
<h2>창원시 버스정류장 검색</h2>
<p align = "center">
	<input type = "text" name = "search" id = "search" placeholder = "행정구역명을 입력하세요.">
	<input id = "b1" type = "button" value = "검색" onclick = "search()">
</p>
<table border = "1" id = "tab4">
<tr>
	<th>id</th>
	<th>모바일ID</th>
	<th>행정구역</th>
	<th>정류장명</th>
</tr>
<tr>
	<td></td>
	<td></td>
	<td></td>
	<td></td>
</tr>
</table>
</section>

<footer>
<%@include file = "footer.jsp" %>
</footer>

</body>
</html>