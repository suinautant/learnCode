<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="dbconn.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원탈퇴</title>
</head>
<body>
	<%
	request.setCharacterEncoding("utf-8");

	String id = request.getParameter("id");
	PreparedStatement pstmt = null;

	try {
		String sql = "DELETE FROM register WHERE id = ?";
		pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, id);
		pstmt.executeUpdate();

		out.println("<script>alert('탈퇴되었습니다.'); location.href='logout.jsp' </script>");
	} catch (SQLException e) {
		e.printStackTrace();
	} finally {
		if (pstmt != null)
			pstmt.close();
		if (conn != null)
			conn.close();
	}
	%>
</body>
</html>