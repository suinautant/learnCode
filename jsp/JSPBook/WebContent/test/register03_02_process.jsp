<%@page import="com.sun.jdi.request.ClassPrepareRequest"%>
<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%@ include file="register03_02_dbconn.jsp"%>
	<%
	request.setCharacterEncoding("utf-8");

	String name = request.getParameter("name");
	String nickname = request.getParameter("nickname");
	String email = request.getParameter("email");
	String address = request.getParameter("address");
	String address2 = request.getParameter("address2");
	String joinPath = request.getParameter("joinpath");
	String code = request.getParameter("code");

	out.println("이름 : " + name + "<br />");
	out.println("닉네임 : " + nickname + "<br />");
	out.println("이메일 : " + email + "<br />");
	out.println("주소 : " + address + "<br />");
	out.println("상세주소 : " + address2 + "<br />");
	out.println("가입경로 : " + joinPath + "<br />");
	out.println("추천인코드 : " + code + "<br />");

	PreparedStatement pstmt = null;

	try {
		String sql = "INSERT INTO register(name, nickname, email, addr1, addr2, path, code) VALUES(?,?,?,?,?,?,?)";
		pstmt = conn.prepareStatement(sql);

		pstmt.setString(1, name);
		pstmt.setString(2, nickname);
		pstmt.setString(3, email);
		pstmt.setString(4, address);
		pstmt.setString(5, address2);
		pstmt.setString(6, joinPath);
		pstmt.setString(7, code);
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