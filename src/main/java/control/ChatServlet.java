package control;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/chat")
public class ChatServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;
    private List<String[]> chatHistory = new ArrayList<>();

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");
        System.out.println("GET request received. Chat history size: " + chatHistory.size());
        request.setAttribute("chatHistory", chatHistory);
        request.getRequestDispatcher("/chat.jsp").forward(request, response);
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");
        String userMessage = request.getParameter("message");
        System.out.println("POST request received. User message: " + userMessage);
        if (userMessage != null && !userMessage.trim().isEmpty()) {
            chatHistory.add(new String[]{"User", userMessage});
            chatHistory.add(new String[]{"AI", "This is a dummy response."});
        }
        doGet(request, response);
    }
}