<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import = "java.util.Date,java.text.SimpleDateFormat" %>
<%
	Date date = new Date();
	SimpleDateFormat sdf = new SimpleDateFormat("yyyy/MM/dd");
	String today = sdf.format(date);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8" content="text/html; charset=UTF-8">
<title>Team Name with JSP</title>
</head>
<body>
<h1>今日は<%=today %>です。</h1>
</body>
</html>