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
<%@include file = "login_nav.jsp" %>
</nav>

<section>
<h2>로그인 화면</h2>
<p align = "center">회원만 이용할 수 있는 서비스입니다.</p>
<form name = "form" method = "post" action = "login_process.jsp">
<table border = "1" id = "tab1" >
<tr>
	<th>아이디</th>
	<td><input type = "text" name = "login_id" placeholder = " 아이디"></td>
</tr>
<tr>
	<th>비밀번호</th>
	<td><input type = "password" name = "login_pass" placeholder = " 비밀번호"></td>
</tr>
<tr>
	<td colspan = "2" align = "center">
		<input type = "button" value = "로그인" onclick = "check()">
	</td>
</tr>
<tr>
	<td colspan = "2" align = "center">
		<a href = "insert_member.jsp">회원가입</a>
		<a href = "select_member.jsp">아이디/비밀번호 찾기</a>
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
	if(!document.form.login_id.value || document.form.login_id.value == "") {
		alert("아이디를 입력하세요.");
		document.form.login_id.focus();
	}
	else if(!document.form.login_pass.value || document.form.login_pass.value == "") {
		alert("비밀번호를 입력하세요.");
		document.form.login_pass.focus();
	}
	else {
		document.form.submit();
	}
}
</script>
</body>
</html>