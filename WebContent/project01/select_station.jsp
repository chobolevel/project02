<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@include file = "DBConn.jsp" %>
    
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
<form name = "form" method = "post" action = "select_station.jsp">
	<p align = "center">
		<input type = "text" name = "search" id = "search" placeholder = "읍/면/동으로 검색">
		<input id = "b1" type = "button" value = "검색" onclick = "check()">
	</p>
</form>
<table border = "1" id = "tab4">
<tr>
	<th>ID</th>
	<th>모바일ID</th>
	<th>행정구역</th>
	<th>정류장명</th>
</tr>
<%
	String location = request.getParameter("search");
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	String sql = "select * from station where location like ?";
	try {
		pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, "%" + location + "%");
		rs = pstmt.executeQuery();
		while(rs.next()) {
			String id = rs.getString(1);
			String mobile = rs.getString(2);
			location = rs.getString(3);
			String station_name = rs.getString(4);
			%>
			<tr>
				<td><%=id %></td>
				<td><%=mobile %></td>
				<td><%=location %></td>
				<td><%=station_name %></td>
			</tr>
			<%
		}
	}
	catch (SQLException e) {
		e.printStackTrace();
	}
%>
</table>
</section>

<footer>
<%@include file = "footer.jsp" %>
</footer>
<script>
function check() {
	document.form.submit();
}
</script>
</body>
</html>
