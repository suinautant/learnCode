<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html> <head> <meta charset="UTF-8"> <title>Session</title> </head> <body>
	<%
	request.setCharacterEncoding("UTF-8");
	String user_id = request.getParameter("id");
	String user_pw = request.getParameter("passwd");

	if (user_id.equals("admin") && user_pw.equals("admin1234")) {
		session.setAttribute("user_id", user_id);
		session.setAttribute("user_pw", user_pw);
		//out.println("세션 설정이 성공했습니다.<br />");
		out.println(user_id + "님 반갑습니다.<br />");
		out.println("<a href='#'>로그아웃</a>");
	} else {
		out.println("세션 설정이 실패했습니다.");
	}
	%>
</body> </html>