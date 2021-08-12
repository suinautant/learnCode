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

		String sql = "INSERT INTO board (name, subject, email, contents, password) VALUES (?, ?, ?, ?, ?) ";
		pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, name);
		pstmt.setString(2, subject);
		pstmt.setString(3, email);
		pstmt.setString(4, contents);
		pstmt.setString(5, password);
		pstmt.executeUpdate();
	%>
	<script type="text/javascript">
		alert("글쓰기 완료");
		location.href = "list.jsp";
	</script>
	<%@ include file="footer_catch_finally.jsp"%>
</body>
</html>