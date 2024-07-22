<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="java.util.Date,java.text.SimpleDateFormat" %>
<%
    Date date = new Date();
    SimpleDateFormat sdf = new SimpleDateFormat("yyyy/MM/dd");
    String today = sdf.format(date);
%>
<!DOCTYPE html>
<html lang="ja">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>リアルタイム時計</title>
    <script src="https://cdn.tailwindcss.com"></script>
</head>
<body class="bg-gray-100 text-gray-900">
    <jsp:include page="header.jsp" flush="true" />
    <h1 class="text-2xl font-bold text-center mt-4">今日は<%= today %>です</h1>
    <div class="mt-4 flex justify-center">
        <canvas id="clockCanvas" width="400" height="400"></canvas>
    </div>
    <jsp:include page="footer.jsp" flush="true" />
    <script src="clock.js"></script>
</body>
</html>
