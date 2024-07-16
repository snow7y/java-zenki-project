<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<jsp:include page="head.jsp" flush="true" />
	<jsp:include page="header.jsp" flush="true" />
	<body>
	    <h1>Feedback Form</h1>
	    <form action="feedback-servlet" method="POST">
	        <label for="name">Name:</label>
	        <input type="text" id="name" name="name" required>
	        <br>
	        <label for="email">Email:</label>
	        <input type="email" id="email" name="email" required>
	        <br>
	        <label for="message">Message:</label>
	        <textarea id="message" name="message" required></textarea>
	        <br>
	        <button type="submit">Submit</button>
	    </form>
	</body>
</html>
