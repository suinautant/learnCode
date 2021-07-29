<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="dbconn.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>UPDATE</title>
</head>
<body>
	<%
	request.setCharacterEncoding("utf-8");

	String id = request.getParameter("id");
	String passwd = request.getParameter("passwd");

	ResultSet rs = null;
	PreparedStatement pstmt = null;

	try {
		String sql = "select id, passwd from member where id = ?";
		pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, id);
		rs = pstmt.executeQuery();

		if (rs.next()) {
			String rId = rs.getString("id");
			String rpasswd = rs.getString("passwd");
			
			if (id.equals(rId) && passwd.equals(rpasswd)) {
				sql = "delete from member where id = ? and passwd = ?";
				pstmt = conn.prepareStatement(sql);
				pstmt.setString(1, id);
				pstmt.setString(2, passwd);
				pstmt.executeUpdate();

				out.println("<script>window.alert('Member 테이블 수정 완료'); location.href='./delete02.jsp';</script>");
			} else {
				out.println("<script>window.alert('일치하는 비밀번호가 없다'); location.href='./delete02.jsp';</script>");
			}
		} else {
			out.println("<script>window.alert('Memeber 테이블에 일치하는 아이디가 없다'); location.href='./delete02.jsp'</script>");

		}
	} catch (SQLException e) {
		out.println("SQLException" + e.getMessage());
	} finally {
		if (pstmt != null)
			pstmt.close();
		if (rs != null)
			rs.close();
		if (conn != null)
			conn.close();
	}
	%>
</body>
</html>