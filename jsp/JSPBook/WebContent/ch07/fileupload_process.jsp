<%@page import="java.util.Enumeration"%>
<%@page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy"%>
<%@page import="com.oreilly.servlet.MultipartRequest"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		String uploadPath = "d:\\download\\upload";
	Integer maxFileSize = 5 * 1024 * 1024;
	String uploadEncoding = "utf-8";
	MultipartRequest multi = new MultipartRequest(
			request, uploadPath, maxFileSize, uploadEncoding,
			new DefaultFileRenamePolicy());

	String title = multi.getParameter("title");
	out.println("<h3>" + title + "</h3>");

	Enumeration files = multi.getFileNames();
	String name = (String) files.nextElement();

	String filename = multi.getFilesystemName(name);
	String original = multi.getOriginalFileName(name);

	out.println("실제 파일 이름 : " + original + "<br />");
	out.println("저장 파일 이름 : " + filename + "<br />");
	%>
</body>
</html>