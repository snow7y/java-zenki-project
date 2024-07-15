package control;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/feedback-servlet")
public class FeedbackServlet extends HttpServlet {
	private static final long serialVersionID=1L;
	
	protected void doPost(HttpServletRequest request,HttpServletResponse response)
			throws ServletException,IOException{
					String name = request.getParameter("name");
					String email = request.getParameter("email");
					String message = request.getParameter("message");
					response.setContentType("text/html; charset=UTF-8");
					PrintWriter out =response.getWriter();
					out.println("<!DOCTYPE html>                                 ");
					out.println("<html>                                          ");
					out.println("<head>                                          ");
					out.println("<meta charset=\"UTF-8\">                        ");
					out.println("<title>入力内容</title>                         ");
					out.println("<link rel=\"stylesheet\" href=\"style.css\">    ");
					out.println("</head>                                         ");
					out.println("<body>                                          ");
					out.println("    <h1>ありがとうございます</h1>                           ");
					out.println("</body>                                         ");
					out.println("</html>                                         ");
					}

}
