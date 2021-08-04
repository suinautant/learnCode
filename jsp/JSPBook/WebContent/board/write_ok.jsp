<%@page import="java.util.Calendar"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="dbconn.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시물 작성 처리</title>
</head>
<body>
	<%
		request.setCharacterEncoding("UTF-8");

	String name = request.getParameter("name");
	String subject = request.getParameter("subject");
	String comment = request.getParameter("comment");
	String passwd = request.getParameter("passwd");
	String email = request.getParameter("email");

	SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm");
	Calendar time = Calendar.getInstance();
	String date = sdf.format(time.getTime());

	PreparedStatement pstmt = null;

	try {
		String sql = "INSERT INTO article (name, subject, comment, passwd, date, email) VALUES (?, ?, ?, ?, ?, ?)";
		pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, name);
		pstmt.setString(2, subject);
		pstmt.setString(3, comment);
		pstmt.setString(4, passwd);
		pstmt.setString(5, date);
		pstmt.setString(6, email);
		pstmt.executeUpdate();

		response.sendRedirect("list.jsp");

	} catch (SQLException e) {
		out.println("sql오류 : " + e.getMessage());
	} finally {
		if (pstmt != null)
			pstmt.close();
		if (conn != null)
			conn.close();
	}
	%>




</body>
</html>