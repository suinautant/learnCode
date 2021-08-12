<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="dbconn2.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>실기시험 03 - SELECT QUERY</title>
</head>
<body>
	<table border="1">
		<tr>
			<th>학번</th>
			<th>학과</th>
			<th>이름</th>
			<th>주소</th>
			<th>연락처</th>
		</tr>
		<%
		request.setCharacterEncoding("utf-8");
		PreparedStatement pstmt = null;
		ResultSet rs = null;

		try {
			String sql = "SELECT * FROM Student";
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();

			while (rs.next()) {
				String num = rs.getString("num");
				String depart = rs.getString("depart");
				String name = rs.getString("name");
				String address = rs.getString("address");
				String phone = rs.getString("phone");
		%>
		<tr>
			<td><%=num%></td>
			<td><%=depart%></td>
			<td><%=name%></td>
			<td><%=address%></td>
			<td><%=phone%></td>
		</tr>
		<%
		}

		} catch (SQLException e) {
		e.printStackTrace();
		} finally {
		if (rs != null)
		rs.close();
		if (pstmt != null)
		pstmt.close();
		if (conn != null)
		conn.close();
		}
		%>
	</table>
</body>
</html>