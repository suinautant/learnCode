<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="./dbconn.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>관리자 페이지</title>
</head>
<body>
	<%
	request.setCharacterEncoding("utf-8");

	String user_id = "";
	if (session.getAttribute("user_id") != null) {
		user_id = (String) session.getAttribute("user_id");

		if (!user_id.equals("admin")) {
			response.sendRedirect("./login.jsp");
		}
	} else {
		response.sendRedirect("./login.jsp");
	}

	PreparedStatement pstmt = null;
	ResultSet rs = null;

	try {
		String sql = "SELECT * FROM register";
		pstmt = conn.prepareStatement(sql);
		rs = pstmt.executeQuery();

	out.println(" <p> " + "<a href='./logout.jsp'>로그아웃</a> | " + "<a href='modify.jsp?id=" + user_id + "'>회원수정</a> | " + "<a href='delete.jsp?id=" + user_id + "'>회원탈퇴</a>" + " </p> ");
	
	%>
			<%
		while (rs.next()) {

			String id = rs.getString("id");
			String passwd = rs.getString("passwd");
			String ssn = rs.getString("ssn");
			String email = rs.getString("email");
			String gender = rs.getString("gender");
			String hobby = rs.getString("hobby");
			String zipcode = rs.getString("zipcode");
			String addr1 = rs.getString("addr1");
			String addr2 = rs.getString("addr2");
			String profile = rs.getString("profile");

			out.println("<tr><td>" + id + "</td>");
			out.println("<td>" + passwd + "</td>");
			out.println("<td>" + ssn + "</td>");
			out.println("<td>" + email + "</td>");
			out.println("<td>" + gender + "</td>");
			out.println("<td>" + hobby + "</td>");
			out.println("<td>" + zipcode + "</td>");
			out.println("<td>" + addr1 + "</td>");
			out.println("<td>" + addr2 + "</td>");
			out.println("<td>" + profile + "</td></td>");
		}

		} catch (Exception e) {
		out.println("Exception : " + e.getMessage());
		} finally {
		if (rs != null)
			rs.close();
		if (pstmt != null)
			pstmt.close();
		if (conn != null)
			conn.close();
		}
		%>
</body>
</html>