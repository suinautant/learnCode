<%@ page pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>
<%
	Connection conn = null;

String db_url = "jdbc:mysql://localhost:3306/board";
String db_user = "root";
String db_password = "12345";

Class.forName("com.mysql.jdbc.Driver");
conn = DriverManager.getConnection(db_url, db_user, db_password);
%>