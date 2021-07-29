<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="./dbconn.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인 처리</title>
</head>
<body>
	<h3>로그인 확인</h3>

	<%
	request.setCharacterEncoding("utf-8");

	String id = request.getParameter("id");
	String passwd = request.getParameter("passwd");

	PreparedStatement pstmt = null;
	ResultSet rs = null;

	String sql = "SELECT id, passwd FROM register WHERE id = ?";
	pstmt = conn.prepareStatement(sql);
	pstmt.setString(1, id);
	rs = pstmt.executeQuery();

	if (rs.next()) {
		String rId = rs.getString("id");
		String rPasswd = rs.getString("passwd");

		if (id.equals(rId) && passwd.equals(rPasswd)) {
			session.setAttribute("user_id", id);
			session.setAttribute("user_pw", passwd);

			response.sendRedirect("login.jsp");
		} else {
			out.println("<script>alert('로그인 실패 : 패스워드가 틀렸습니다.'); history.back()</script>");
		}
	} else {
		out.println("<script>alert('로그인 실패 : 아이디가 없습니다.'); history.back()</script>");
	}
	%>
</body>
</html>