<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="dbconn.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>수정</title>
<script type="text/javascript">
	function check() {
		article.submit();
	}
</script>
</head>
<body>
	<%
		request.setCharacterEncoding("UTF-8");
	String no = request.getParameter("no");

	PreparedStatement pstmt = null;
	ResultSet rs = null;

	try {
		String sql = "SELECT * FROM upload WHERE no = ?";
		pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, no);
		rs = pstmt.executeQuery();

		if (rs.next()) {
			String rSubject = rs.getString("subject");
			String rComment = rs.getString("comment");
			String rName = rs.getString("name");
			String rPasswd = rs.getString("passwd");
			String rEmail = rs.getString("email");
	%>
	<form action="modify_ok.jsp" method="post" name="article">
		<input type="hidden" name="no" value="<%=no%>">
		<p>
			작성자 <input type="text" name="name" value="<%=rName%>" />
		</p>
		<p>
			이메일<input type="text" name="email" value="<%=rEmail%>" />
		</p>
		<p>
			글제목 <input type="text" name="subject" size="50" value="<%=rSubject%>" />
		</p>
		<p>
			<textarea rows="7" cols="50" name="comment"><%=rComment%></textarea>
		</p>
		<p>
			암호 <input type="text" name="passwd" value="<%=rPasswd%>" />
		</p>
		<input type="button" value="수정" onclick="check()"> <input
			type="reset" value="다시작성"> <a href="list.jsp"><input
			type="button" value="글목록"></a>
	</form>

	<%
		}
	} catch (SQLException e) {
		out.println("sql 오류 : " + e.getMessage());
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