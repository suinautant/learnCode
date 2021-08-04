<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="dbconn.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시물 삭제</title>
</head>
<body>
	<%
		request.setCharacterEncoding("UTF-8");
	String no = request.getParameter("no");
	PreparedStatement pstmt = null;

	try {
		String sql = "DELETE FROM article WHERE no = ?";
		pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, no);
		pstmt.executeUpdate();

		response.sendRedirect("list.jsp");
	} catch (SQLException e) {
		out.println("SQLException : " + e.getMessage());
	} finally {
		if (conn != null)
			conn.close();
		if (pstmt != null)
			pstmt.close();
	}
	%>


</body>
</html>