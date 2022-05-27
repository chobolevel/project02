<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

<%
	//인증 가능 사용자 및 비밀번호 목록
	String[] users = {"ninja", "knight", "elf"};
	String[] password = {"ak74", "m4", "pgs11"};
	
	String id = request.getParameter("id");
	String pw = request.getParameter("pw");
	//form으로부터 전달된 데이터를 변수에 저장
	
	String redirectUrl = "form.jsp";
	//인증 실패시 재요청 될 url
	
	for(int i = 0; i < users.length; i++) {
		if(users[i].equals(id) && password[i].equals(pw)) {
			session.setAttribute("signedUser", id);
			redirectUrl = "welcome.jsp";
		}
	}
	
	response.sendRedirect(redirectUrl);
%>

</body>
</html>