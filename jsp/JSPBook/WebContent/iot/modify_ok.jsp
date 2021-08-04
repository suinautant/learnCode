<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="./dbconn.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입 처리</title>
</head>
<body>
	<%
	request.setCharacterEncoding("utf-8");

	String id = request.getParameter("id");
	String passwd = request.getParameter("passwd");
	String ssn = request.getParameter("ssn");
	String email1 = request.getParameter("email1");
	String email2 = request.getParameter("email2");
	String gender = request.getParameter("gender");
	String hobbys[] = request.getParameterValues("hobby");
	String zipcode = request.getParameter("zipcode");
	String addr1 = request.getParameter("addr1");
	String addr2 = request.getParameter("addr2");
	String profile = request.getParameter("profile");

	String hobby = "";

	String email = email1 + "@" + email2;
	if (hobbys != null) {
		for (String h : hobbys) {
			hobby = hobby + h + " ";
		}
	}

	PreparedStatement pstmt = null;

	try {
		String sql = "UPDATE register SET ssn = ?, email = ?, gender = ?, hobby = ?, zipcode = ?, addr1 = ?, addr2 = ?, profile = ? WHERE id = ?";
		pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, ssn);
		pstmt.setString(2, email);
		pstmt.setString(3, gender);
		pstmt.setString(4, hobby);
		pstmt.setString(5, zipcode);
		pstmt.setString(6, addr1);
		pstmt.setString(7, addr2);
		pstmt.setString(8, profile);
		pstmt.setString(9, id);
		pstmt.executeUpdate();
		
		out.println("<SCRIPT>alert('수정 완료'); location.href='./list.jsp'</SCRIPT>");

	} catch (Exception e) {
		out.println("Exception : " + e.getMessage());
	} finally {
		if (pstmt != null)
			pstmt.close();
		if (conn != null)
			conn.close();
	}
	%>

</body>
</html>