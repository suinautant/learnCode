<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>데이터 전송 결과2</title>
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

	String id = request.getParameter("id");
	String passwd = request.getParameter("passwd");
	String name = request.getParameter("name");

	PreparedStatement pstmt = null;

	try {
		String sql = "INSERT INTO Member(id, passwd, name) VALUES(?,?,?)";
		pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, id);
		pstmt.setString(2, passwd);
		pstmt.setString(3, name);
		pstmt.executeUpdate();
		out.println("테이블 삽입 성공");
	} catch (SQLException e) {
		out.println("테이블 삽입 실패");
		out.println("SQLException : " + e.getMessage());
	} finally {
		if (pstmt != null)
			pstmt.close();
		if (conn != null)
			conn.close();
	}
	%>
</body>
</html>