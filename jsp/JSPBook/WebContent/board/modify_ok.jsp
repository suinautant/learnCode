<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="dbconn.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시물 수정 처리</title>
</head>
<body>
	<%
		request.setCharacterEncoding("UTF-8");
		String no = request.getParameter("no");
		String name = request.getParameter("name");
		String email = request.getParameter("email");
		String subject = request.getParameter("subject");
		String comment = request.getParameter("comment");
		
		PreparedStatement pstmt = null;
		
		try{
			String sql = "UPDATE article SET name = ?, email = ?, subject = ?, comment = ? WHERE no = ? ";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, name);
			pstmt.setString(2, email);
			pstmt.setString(3, subject);
			pstmt.setString(4, comment);
			pstmt.setString(6, no);
			pstmt.executeUpdate();
			response.sendRedirect("list.jsp");
			
		}catch(Exception e){
			out.println("sql 오류 : "+e.getMessage());
			
		}finally{
			if(pstmt != null) pstmt.close();
			if(conn != null) conn.close();
		}
		
	%>
		
		
</body>
</html>