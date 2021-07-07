<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>출력</title>
</head>
<body>
	<%
		request.setCharacterEncoding("utf-8");

	String id = request.getParameter("id");
	String passwd = request.getParameter("passwd");
	String name = request.getParameter("name");
	String tel1 = request.getParameter("tel1");
	String tel2 = request.getParameter("tel2");
	String tel3 = request.getParameter("tel3");
	String sexReq = request.getParameter("sex");
	String[] hobby = request.getParameterValues("hobby");
	String hello = request.getParameter("hello");
	String sex = "";

	String tel = tel1 + "-" + tel2 + "-" + tel3;
	if (sexReq != null) {
		if (sexReq.equals("male")) {
			sex = "남자";
		} else if (sexReq.equals("female")) {
			sex = "여자";
		}
	} else {
		sex = "";
	}
	out.print("아이디 : " + id + "<br />");
	out.print("패스워드 : " + passwd + "<br />");
	out.print("이름 : " + name + "<br />");
	out.print("연락처 : " + tel + "<br />");
	out.print("성별 : " + sex + "<br />");
	out.print("취미 :");
	if (hobby != null) {
		for (int i = 0; i < hobby.length; i++) {
			out.print(" " + hobby[i]);
		}
	} 
	out.print("<br />");
	out.print("가입인사 : " + hello + "<br />");
	%>

</body>
</html>