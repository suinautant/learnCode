<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>데이터 전송 결과</title>
</head>
<body>
	<%
	request.setCharacterEncoding("utf-8");

	Connection conn = null;

	String db_url = "jdbc:mysql://localhost:3306/JSPBookDB";
	String db_user = "root";
	String db_passwd = "12345";

	Class.forName("com.mysql.jdbc.Driver");
	conn = DriverManager.getConnection(db_url, db_user, db_passwd);

	Statement stmt = null;

	String id = request.getParameter("id");
	String passwd = request.getParameter("passwd");
	String name = request.getParameter("name");

	try {
		String sql = "INSERT INTO Member(id, passwd, name) VALUES('" + id + "', '" + passwd + "', '" + name + "')";
		stmt = conn.createStatement();
		stmt.executeUpdate(sql);
		out.println("테이블 삽입 성공<br />");
	} catch (SQLException e) {
		out.println("테이블 삽입 실패<br />");
		out.println("SQLException: " + e.getMessage());
	} finally {
		if (stmt != null)
			stmt.close();

		if (conn != null)
			conn.close();
	}
	%>

	<h3>전송결과</h3>
	<p>
		아이디 :
		<%=id%>
	</p>
	<p>
		비밀번호 :
		<%=passwd%>
	</p>
	<p>
		이름 :
		<%=name%>
	</p>
</body>
</html>