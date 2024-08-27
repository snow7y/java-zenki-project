<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
	<!DOCTYPE html>
	<html>
	<jsp:include page="head.jsp" flush="true" />

	<body>
	<jsp:include page="header.jsp" flush="true" />
    <div class="col flex justify-center items-center p-4">
        <div class="block w-full max-w-2xl transition">
            <div class="p-6 bg-white text-gray-900 rounded-lg shadow-lg transition group h-full flex flex-col">
                <div class="flex flex-col items-center justify-center flex-grow">
                    <h2 class="text-3xl font-bold text-center mb-4">
                        Chat with AI
                    </h2>
                </div>
                <div class="w-full bg-gray-100 p-4 rounded-lg h-64 overflow-y-scroll mb-4">
                    <ul id="chatHistory" class="space-y-4">
                        <%
                            List<String[]> chatHistory = (List<String[]>) request.getAttribute("chatHistory");
                            for (String[] message : chatHistory) {
                                String sender = message[0];
                                String text = message[1];
                                if ("User".equals(sender)) {
                        %>
                                    <li class="text-right">
                                        <span class="bg-blue-500 text-white inline-block rounded-lg p-2">
                                            <%= text %>
                                        </span>
                                    </li>
                        <%
                                } else {
                        %>
                                    <li class="text-left">
                                        <span class="bg-gray-300 inline-block rounded-lg p-2">
                                            <%= text %>
                                        </span>
                                    </li>
                        <%
                                }
                            }
                        %>
                    </ul>
                </div>
                <form action="chat" method="post" class="w-full">
                    <input type="text" name="message" placeholder="Enter your message" required
                        class="w-full p-2 rounded-lg border border-gray-300 mb-4">
                    <button type="submit"
                        class="w-full bg-blue-500 text-white p-2 rounded-lg hover:bg-blue-600 transition">
                        Send
                    </button>
                </form>
                <a href="index.html" class="text-blue-500 hover:underline mt-4 block text-center">Back to Home</a>
            </div>
        </div>
    </div>

	<jsp:include page="footer.jsp" flush="true" />
	</body>
	
	</html>