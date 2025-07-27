package servlet;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.http.*;
import jakarta.servlet.*;


public class FormServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();

        String name = request.getParameter("name");
        String email = request.getParameter("email");
        String password = request.getParameter("password");
        String gender = request.getParameter("gender");
        String country = request.getParameter("country");
        String message = request.getParameter("message");
        String terms = request.getParameter("terms"); // will be "accepted" if checked

        out.println("<html><head><title>Form Submission</title></head><body>");
        out.println("<h2>Form Data Received:</h2>");
        out.println("<p><strong>Name:</strong> " + name + "</p>");
        out.println("<p><strong>Email:</strong> " + email + "</p>");
        out.println("<p><strong>Password:</strong> " + password + "</p>");
        out.println("<p><strong>Gender:</strong> " + gender + "</p>");
        out.println("<p><strong>Country:</strong> " + country + "</p>");
        out.println("<p><strong>Message:</strong> " + message + "</p>");
        out.println("<p><strong>Accepted Terms:</strong> " + (terms != null ? "Yes" : "No") + "</p>");
        out.println("</body></html>");
    }
}
