<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="dbconn.jsp"%>
<%@ include file="config_request.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>글 삭제</title>
</head>
<body>
	<%
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	
	try {

		String sql = "DELETE FROM board WHERE no = ?";
		pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, no);
		pstmt.executeUpdate();
	%>
	<script>
		alert("삭제 되었습니다.");
		location.href = "list.jsp"
	</script>
	<%@ include file="footer_catch_finally.jsp"%>
</body>
</html>