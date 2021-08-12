<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="dbconn.jsp"%>
<%@ include file="config_request.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>글쓰기 action</title>
</head>
<body>
	<%
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	try {

		String sql = "SELECT * FROM board";
		pstmt = conn.prepareStatement(sql);
		rs = pstmt.executeQuery();

		if (rs.next()) {
			String rPassword = rs.getString("password");

			if (!rPassword.equals(password)) {
		out.println("<script>alert('패스워드가 다릅니다.'); location.href='edit.jsp?no=" + no + "'</script>");
			}
		}

		sql = "UPDATE board SET name = ?, subject = ?, email = ?, contents = ? WHERE no = ? ";
		pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, name);
		pstmt.setString(2, subject);
		pstmt.setString(3, email);
		pstmt.setString(4, contents);
		pstmt.setString(5, no);
		pstmt.executeUpdate();
	%>
	<script type="text/javascript">
		alert("수정 완료");
		location.href = "list.jsp";
	</script>
	<%@ include file="footer_catch_finally.jsp"%>
</body>
</html>