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
		String sql = "INSERT INTO register (id, passwd, ssn, email, gender, hobby, zipcode, addr1, addr2, profile) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?) ";
		pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, id);
		pstmt.setString(2, passwd);
		pstmt.setString(3, ssn);
		pstmt.setString(4, email);
		pstmt.setString(5, gender);
		pstmt.setString(6, hobby);
		pstmt.setString(7, zipcode);
		pstmt.setString(8, addr1);
		pstmt.setString(9, addr2);
		pstmt.setString(10, profile);
		pstmt.executeUpdate();
		
		out.println("<SCRIPT>alert('가입 완료'); location.href='./login.jsp'</SCRIPT>");

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