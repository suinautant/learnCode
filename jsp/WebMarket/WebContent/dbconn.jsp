<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.Connection"%>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
Connection conn = null;

try {
	String db_url = "jdbc:mysql://localhost:3306/WebMarketDB";
	String db_user = "root";
	String db_passwd = "12345";

	Class.forName("com.mysql.jdbc.Driver");
	conn = DriverManager.getConnection(db_url, db_user, db_passwd);

} catch (SQLException e) {
	out.println("데이터베이스 연결이 실패했습니다.<br />");
	out.println("SQLException : " + e.getMessage());
}
%>