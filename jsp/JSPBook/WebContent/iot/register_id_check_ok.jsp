<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="./dbconn.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>아이디 중복 확인</title>
</head>
<body>
	<%
	request.setCharacterEncoding("utf-8");

	PreparedStatement pstmt = null;
	ResultSet rs = null;
	String id = request.getParameter("id");
	Boolean isFound = false;

	try {
		String sql = "SELECT * FROM register";
		pstmt = conn.prepareStatement(sql);
		rs = pstmt.executeQuery();

		while (rs.next()) {
			String rId = rs.getString("id");
			if (id.equals(rId)) {
		isFound = true;
			}
		}
	%>
	<SCRIPT>
		opener.jusoCallBack(
	<%=isFound%>
		);
		window.close();
	</SCRIPT>

	<%
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