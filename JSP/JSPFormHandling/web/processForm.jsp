<%-- 
    Document   : processForm
    Created on : 27-Jul-2025, 9:47:18 pm
    Author     : Afnan's Laptop
--%>
<%@ page import="java.io.*,java.util.*" %>
<%@ page contentType="text/html" errorPage="error.jsp" %>

<%
try {
    request.setCharacterEncoding("UTF-8");

    // Retrieve form data
    String name = request.getParameter("name");
    String password = request.getParameter("password");
    String email = request.getParameter("email");
    String gender = request.getParameter("gender");
    String[] languages = request.getParameterValues("languages");
    String country = request.getParameter("country");
    String bio = request.getParameter("bio");

    // Display collected data
%>

<html>
<head><title>Form Submission Result</title></head>
<body>
    <h2>Submitted Information</h2>
    <p><strong>Name:</strong> <%= name %></p>
    <p><strong>Password:</strong> <%= password %></p>
    <p><strong>Email:</strong> <%= email %></p>
    <p><strong>Gender:</strong> <%= gender %></p>
    <p><strong>Languages Known:</strong> 
        <% if (languages != null) {
            for (String lang : languages) {
                out.print(lang + " ");
            }
        } else {
            out.print("None");
        } %>
    </p>
    <p><strong>Country:</strong> <%= country %></p>
    <p><strong>Bio:</strong> <%= bio %></p>
</body>
</html>

<%
} catch (Exception e) {
    // Forward error to error.jsp
    throw new ServletException("Form processing failed", e);
}
%>

