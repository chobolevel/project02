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
<h2>회원 탈퇴</h2>
<form name = "form" method = "post" action = "delect_memberProcess.jsp">
<table border = "1" id = "tab3">
<tr>
	<th>아이디</th>
	<td><input type = "text" name = "id"></td>
</tr>
<tr>
	<th>비밀번호</th>
	<td><input type = "password" name = "password"></td>
</tr>
<tr>
	<th>이름</th>
	<td><input type = "text" name = "name"></td>
</tr>
<tr>
	<td colspan = "2" align = "center">
		<input type = "button" value = "탈퇴" onclick = "check()">
		<input type = "reset" value = "취소">
	</td>
</tr>
</table>
</form>
</section>

<footer>
<%@include file = "footer.jsp" %>
</footer>
<script>
function check() {
	if(!document.form.id.value || document.form.id.value == "") {
		alert("아이디를 입력해주십시오.");
		document.form.id.focus();
	}
	else if(!document.form.password.value || document.form.password.value == "") {
		alert("비밀번호를 입력해주십시오");
		document.form.password.focus();
	}
	else if(!document.form.name.value || document.form.name.value == "") {
		alert("성함을 입력해주십시오.");
		document.form.name.focus();
	}
	else {
		document.form.submit();
	}
}
</script>
</body>
</html>