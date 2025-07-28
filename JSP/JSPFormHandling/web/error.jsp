<%-- 
    Document   : error
    Created on : 27-Jul-2025, 9:47:51 pm
    Author     : Afnan's Laptop
--%>

<%@ page isErrorPage="true" contentType="text/html" %>
<html>
<head><title>Error</title></head>
<body>
    <h2 style="color:red;">Oops! Something went wrong.</h2>
    <p><strong>Error Message:</strong> <%= exception.getMessage() %></p>
    <pre><%= exception.toString() %></pre>
    <a href="index.jsp">Go Back to Form</a>
</body>
</html>

