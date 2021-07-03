<%@page import="java.util.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		response.setIntHeader("Refresh", 5);

	Calendar cal = Calendar.getInstance();
	int hour = cal.get(Calendar.HOUR);
	int minute = cal.get(Calendar.MINUTE);
	int second = cal.get(Calendar.SECOND);
	String ampm;

	if (cal.get(Calendar.AM_PM) == 0) {
		ampm = "오전";
	} else {
		ampm = "오후";
	}

	out.print("현재 시간은" + " " + hour + ":" + minute + ":" + second + " " + ampm + "<br />");
	%>
	<a href="./ex05_response_data.jsp">Google 홈페이지로 이동하기</a>

</body>
</html>