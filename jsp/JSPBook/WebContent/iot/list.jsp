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

	PreparedStatement pstmt = null;
	ResultSet rs = null;

	try {
		String sql = "SELECT * FROM register";
		pstmt = conn.prepareStatement(sql);
		rs = pstmt.executeQuery();
	%>
	<table border="1">
		<tr>
			<th>아이디</th>
			<th>패스워드</th>
			<th>생년월일</th>
			<th>이메일</th>
			<th>성별</th>
			<th>취미</th>
			<th>우편번호</th>
			<th>주소</th>
			<th>상세주소</th>
			<th>소개</th>
		</tr>

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

	</table>
</body>
</html>