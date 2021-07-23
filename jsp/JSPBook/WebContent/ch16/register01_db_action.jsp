<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.PreparedStatement"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>출력</title>
</head>
<body>
	<%@ include file="register01_db_conn.jsp"%>
	<%
	request.setCharacterEncoding("utf-8");

	String id = request.getParameter("id");
	String passwd = request.getParameter("passwd");
	String name = request.getParameter("name");
	String tel1 = request.getParameter("tel1");
	String tel2 = request.getParameter("tel2");
	String tel3 = request.getParameter("tel3");
	String sex = request.getParameter("sex");
	String hobby = request.getParameter("hobby");
	String hello = request.getParameter("hello");

	String tel = tel1 + "-" + tel2 + "-" + tel3;

	out.print("아이디 : " + id + "<br />");
	out.print("패스워드 : " + passwd + "<br />");
	out.print("이름 : " + name + "<br />");
	out.print("연락처 : " + tel + "<br />");
	out.print("성별 : " + sex + "<br />");
	out.print("취미 : " + hobby + "<br />");
	out.print("가입인사 : " + hello + "<br />");

	PreparedStatement pstmt = null;

	try {
		String sql = "INSERT INTO register01 (id, passwd, name, tel, sex, hobby, joinhello) VALUES (?,?,?,?,?,?,?)";
		pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, id);
		pstmt.setString(2, passwd);
		pstmt.setString(3, name);
		pstmt.setString(4, tel);
		pstmt.setString(5, sex);
		pstmt.setString(6, hobby);
		pstmt.setString(7, hello);
		pstmt.executeUpdate();
		out.println("성공<br />");
	} catch (SQLException e) {
		out.println("실패<br />");
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