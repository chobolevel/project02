<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@include file = "DBConn.jsp" %>

<%
	String login_id = request.getParameter("login_id");
	String login_pass = request.getParameter("login_pass");
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	String sql = "select password, name from bus_member where id = ?";
	try {
		pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, login_id);
		rs = pstmt.executeQuery();
		if(rs.next()) {
			//아이디가 존재하는 경우
			String temp_pass = rs.getString(1);
			String name = rs.getString(2);
			if(login_pass.equals(temp_pass)) {
				//비밀번호까지 일치하는 경우
				%>
				<script>
					alert("회원님 환영합니다!");		/* 스크립트에는 자바변수 사용이 불가능함 */
					location.href = "index.jsp";
				</script>
				<%
			}
			else {
				//비밀번호가 일치하지 않는 경우
				%>
				<script>
					alert("비밀번호가 일치하지 않습니다.");
					history.back(-1);
				</script>
				<%
			}
		}
		else {
			//아이디가 존재하지 않는 경우
			%>
			<script>
				alert("아이디가 존재하지 않습니다.");
				history.back(-1);
			</script>
			<%
		}
	}
	catch (SQLException e) {
		e.printStackTrace();
	}
%>