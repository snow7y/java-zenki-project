<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<jsp:include page="head.jsp" flush="true" />
<body>
	<jsp:include page="header.jsp" flush="true" />
	<!-- HTMLコメント -->
	<h2>JSPでループ</h2>

	<%-- forループのテスト(JSPコメント) --%>
	<%
		// Javaコメント
		for (int i = 1; i <= 10; i++) {
	%>
			こんにちは。
			--JSP表示：<%=i %>行目--<br><br>
	<%
		}
	%>
</body>
</html>
