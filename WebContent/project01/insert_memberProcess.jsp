<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@include file = "DBConn.jsp" %>

<%
	String id = request.getParameter("id");
	String password = request.getParameter("password");
	String name = request.getParameter("name");
	String gender = request.getParameter("gender");
	String address = request.getParameter("address");
	String phone = request.getParameter("phone");
	String tel = request.getParameter("tel");
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	String sql = "insert into bus_member values(?, ?, ?, ?, ?, ?, ?)";
	try {
		pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, id);
		pstmt.setString(2, password);
		pstmt.setString(3, name);
		pstmt.setString(4, gender);
		pstmt.setString(5, address);
		pstmt.setString(6, phone);
		pstmt.setString(7, tel);
		pstmt.executeUpdate();
		%>
		<script>
			alert("회원가입에 성공하였습니다!\n" + id + "님 환영합니다!");
			location.href = "index.jsp";
		</script>
		<%
	}
	catch (SQLException e) {
		e.printStackTrace();
		%>
		<script>
			alert("회원가입에 실패하였습니다.");
			history.back(-1);
		</script>
		<%
	}
%>