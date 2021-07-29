<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="./dbconn.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Database SQL</title>
</head>
<body>

	<table width="300" border="1">
		<tr>
			<th>아이디</th>
			<th>비밀번호</th>
			<th>이름</th>
		</tr>
		<%
		ResultSet rs = null;
		PreparedStatement pstmt = null;

		try {
			String sql = "select * from member";
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();

			while (rs.next()) {
				String id = rs.getString("id");
				String passwd = rs.getString("passwd");
				String name = rs.getString("name");

				String htmlTag = "<tr><td>" + id + "</td><td>" + passwd + "</td><td>" + name + "</td></tr>";
				out.println(htmlTag);
			}
		} catch (SQLException e) {
			out.println("Member 테이블 호출이 실패했습니다.<br />");
			out.println("SQLException: " + e.getMessage());
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