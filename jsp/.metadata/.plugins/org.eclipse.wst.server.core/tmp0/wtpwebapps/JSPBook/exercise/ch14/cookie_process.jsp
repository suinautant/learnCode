<%@ page contentType="text/html; charset=utf-8"%>
<html>
<head>
<title>Cookie</title>
</head>
<body>
	<%
		String user_id = request.getParameter("id");
		String user_pw = request.getParameter("passwd");

		if (user_id.equals("admin") && user_pw.equals("admin1234")) {
			Cookie cookie_id = new Cookie("userID", user_id);
			cookie_id.setMaxAge(60*60);
			response.addCookie(cookie_id);						
			response.sendRedirect("welcome.jsp");			
		} else {
			out.println("아이디와 비밀번호를 확인해 주세요");
		}
	%>
	
</body>
</html>