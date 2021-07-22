<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
	String email = request.getParameter("email");
	String email2 = request.getParameter("email2");
	String name = request.getParameter("name");
	String password = request.getParameter("passwd");
	String password2 = request.getParameter("passwd2");

	out.print("이메일 주소 : " + email + "<br />");
	out.print("이름 : " + name + "<br />");
	out.print("비밀번호 : " + password + "<br />");
	out.print("비밀번호 확인 : " + password2 + "<br />");
	out.print("이메일 주소 확인 : " + email2 + "<br />");

	String user_id = request.getParameter("id");
	String user_pw = request.getParameter("passwd");

	if (user_id.equals("admin") && user_pw.equals("admin1234")) {
		session.setAttribute("userID", user_id);
		response.sendRedirect("welcome.jsp");
	} else {
		out.println("아이디와 비밀번호를 확인해 주세요");
	}
	%>

</body>
</html>