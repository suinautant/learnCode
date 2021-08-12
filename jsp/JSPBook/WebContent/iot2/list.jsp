<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="dbconn.jsp"%>
<%@ include file="config_request.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>글 목록</title>
<script type="text/javascript">
	function confirmDel(rNo) {
		if (confirm("삭제하시겠습니까?")) {
			location.href="delete.jsp?no=" + rNo;
		}
	}
</script>
</head>
<body>
	<a href="write.jsp">글쓰기</a>
	<table border="1">
		<tr>
			<th>관리</th>
			<th>no</th>
			<th>이름</th>
			<th>제목</th>
			<th>날짜</th>
		</tr>
		<%
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try {

			String sql = "SELECT * FROM board";
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();

			while (rs.next()) {
				String rNo = rs.getString("no");
				String rName = rs.getString("name");
				String rSubject = rs.getString("subject");
				String rDate = rs.getString("date");
		%>
		<tr>
			<td>
				<a href="edit.jsp?no=<%=rNo%>"> 수정 </a> | <a href="#" onclick="confirmDel(<%=rNo%>)"> 삭제 </a>
			</td>
			<td><%=rNo%></td>
			<td><%=rName%></td>
			<td>
				<a href="view.jsp?no=<%=rNo%>"><%=rSubject%></a>
			</td>
			<td><%=rDate%></td>
		</tr>
		<%
		}
		%>
	</table>
	<%@ include file="footer_catch_finally.jsp"%>
</body>
</html>