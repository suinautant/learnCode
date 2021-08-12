<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="dbconn.jsp"%>
<%@ include file="config_request.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>글 보기</title>
</head>
<body>
	<%
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	try {

		String sql = "SELECT * FROM board WHERE no = ?";
		pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, no);
		rs = pstmt.executeQuery();

		if (rs.next()) {
			String rNo = rs.getString("no");
			String rName = rs.getString("name");
			String rSubject = rs.getString("subject");
			String rEmail = rs.getString("email");
			String rContents = rs.getString("contents");
			String rDate = rs.getString("date");
	%>
	<table border="1">
		<tr>
			<th>번호</th>
			<td><%=rNo %></td>
		</tr>
		<tr>
			<th>이름</th>
			<td><%=rName %></td>
		</tr>
		<tr>
			<th>제목</th>
			<td><%=rSubject %></td>
		</tr>
		<tr>
			<th>이메일</th>
			<td><%=rEmail %></td>
		</tr>
		<tr>
			<th>내용</th>
			<td><pre><%=rContents %></pre></td>
		</tr>
		<tr>
			<th>날짜</th>
			<td><%=rDate %></td>
		</tr>
	</table>
	<%
	}
	%>
	<%@ include file="footer_catch_finally.jsp"%>
</body>
</html>