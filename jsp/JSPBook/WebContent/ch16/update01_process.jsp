<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="dbconn.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>UPDATE</title>
</head>
<body>
	<%
	request.setCharacterEncoding("utf-8");

	String id = request.getParameter("id");
	String passwd = request.getParameter("passwd");
	String name = request.getParameter("name");

	ResultSet rs = null;
	Statement stmt = null;

	try {
		String sql = "select id, passwd from member where id ='" + id + "'";
		stmt = conn.createStatement();
		rs = stmt.executeQuery(sql);

		if (rs.next()) {
			String rId = rs.getString("id");
			String rpasswd = rs.getString("passwd");
			
			if (id.equals(rId) && passwd.equals(rpasswd)) {
				sql = "update member set name = '" + name + "' where id = '" + id +"'";
				stmt = conn.createStatement();
				stmt.executeUpdate(sql);
				out.println("Member 테이블 수정 완료");
			} else {
				out.println("일치하는 비밀번호가 없다");
			}
		} else {
			out.println("Memeber 테이블에 일치하는 아이디가 없다");
		}
	} catch (SQLException e) {
		out.println("SQLException" + e.getMessage());
	} finally {
		if (stmt != null)
			stmt.close();
		if (rs != null)
			rs.close();
		if (conn != null)
			conn.close();
	}
	%>
</body>
</html>