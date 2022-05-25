<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@include file = "DBConn.jsp" %>

<%
	String id = request.getParameter("id");
	String password = request.getParameter("password");
	String name = request.getParameter("name");
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	String sql = "select * from bus_member where id = ?";
	try {
		pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, id);
		rs = pstmt.executeQuery();
		if(rs.next()) {
			//아이디 정보가 존재하는 경우
			String temp_pass = rs.getString("password");
			String temp_name = rs.getString("name");
			if(password.equals(temp_pass) && name.equals(temp_name)) {
				sql = "delete from bus_member where id = ?";
				pstmt = conn.prepareStatement(sql);
				pstmt.setString(1, id);
				pstmt.executeUpdate();
				%>
				<script>
					alert("회원을 성공적으로 탈퇴하였습니다.");
					location.href = "login.jsp";
				</script>
				<%
			}
			else {
				//비밀번호 또는 이름이 일치하지 않음
				%>
				<script>
					alert("비밀번호 또는 이름이 일치하지 않습니다.");
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
