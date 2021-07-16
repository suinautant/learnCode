<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="EUC-KR"
%>
<%@
page import="java.util.Date"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="./resources/css/bootstrap.min.css">
<meta charset="EUC-KR">
<title>Welcome</title>
</head>
<body>
	<%@ include file="menu.jsp"%>
	<%!String greeting = "�� ���θ��� ���� ���� ȯ���մϴ�.";
	String tagline = "Welcome to Web market!";%>
	<div class="jumbotron">
		<div class="container">
			<h1 class="display-3">
				<%=greeting%>
			</h1>
		</div>
	</div>
	<div class="container">
		<div class="text-center">
			<h3>
				<%=tagline%>
			</h3>
			<%
			response.setIntHeader("Refresh", 5);
				Date day = new java.util.Date();
			String am_pm;
			int hour = day.getHours();
			int minute = day.getMinutes();
			int second = day.getSeconds();
			if (hour / 12 == 0) {
				am_pm = "AM";
			} else {
				am_pm = "PM";
				hour = hour - 12;
				if (hour == 0) {
					hour = 12;
				}
			}
			String CT = hour + ":" + minute + ":" + second + " " + am_pm;
			out.println("���� ���� �ð� : " + CT + "\n");
			%>
		</div>
	</div>
	<%@ include file="footer.jsp"%>
</body>
</html>