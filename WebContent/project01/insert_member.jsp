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
<h2>회원 가입 화면</h2>
<form name = "form" method = "post" action = "insert_memberProcess.jsp" >
<table border = "1" id = "tab2">
<tr>
	<th>아이디</th>
	<td><input type = "text" name = "id" ></td>
</tr>
<tr>
	<th>비밀번호</th>
	<td><input type = "text" name = "password" ></td>
</tr>
<tr>
	<th>비밀번호 확인</th>
	<td><input type = "text" name = "pass_check"></td>
</tr>
<tr>
	<th>이름</th>
	<td><input type = "text" name = "name" ></td>
</tr>
<tr>
	<th>성별</th>
	<td>
		<input type = "radio" name = "gender" value = "남성">남성
		<input type = "radio" name = "gender" value = "여성">여성
	</td>
</tr>
<tr>
	<th>주소</th>
	<td><input type = "text" name = "address" ></td>
</tr>
<tr>
	<th>휴대폰 번호</th>
	<td><input type = "text" name = "phone"></td>
</tr>
<tr>
	<th>집 전화</th>
	<td><input type = "text" name = "tel" ></td>
</tr>
<tr>
	<td colspan = "2" align = "center">
		<input type = "button" value = "등록" onclick = "check()">
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
		alert("아이디를 입력하세요");
		document.form.id.focus();
		return false;
	}
	if(!document.form.password.value || document.form.password.value == "") {
		alert("비밀번호를 입력하세요.");
		document.form.password.focus();
		return false;
	}
	if(!document.form.pass_check.value || document.form.pass_check.value == "") {
		alert("확인 비밀번호를 입력해주세요.")
		document.form.pass_check.focus();
		return false;
	}
	if(document.form.password.value != document.form.pass_check.value) {
		alert("비밀번호를 같게 입력해주세요.");
		document.form.pass_check.focus();
		return false;
	}
	if(!document.form.name.value || document.form.name.value == "") {
		alert("이름을 입력하세요.");
		document.form.name.focus();
		return false;
	}
	if(document.form.gender.value == "") {
		alert("성별을 입력하세요.");
		document.form.gender.focus();
		return false;
	}
	if(!document.form.address.value || document.form.address.value == "") {
		alert("주소를 입력하세요.");
		document.form.address.focus();
		return false;
	}
	if(!document.form.phone.value || document.form.phone.value == "") {
		alert("휴대폰 번호를 입력하세요.");
		document.form.phone.focus();
		return false;
	}
	document.form.submit();
}
</script>
</body>
</html>