<%@ page language="java" contentType="text/html" %>
<!-- 
  This page receives form data from index.jsp.
  It reads the submitted values and displays them back to the user.
-->
<html>
<head>
    <title>Feedback Received</title>
</head>
<body>
    <h2>Thank You!</h2>

    <%
        // Retrieve form data sent from index.jsp using request.getParameter()

        String name = request.getParameter("username");  // Get the user's name
        String email = request.getParameter("email");    // Get the user's email
        String feedback = request.getParameter("feedback");  // Get the feedback message
    %>

    <!-- Display the retrieved values -->
    <p><strong>Name:</strong> <%= name %></p>
    <p><strong>Email:</strong> <%= email %></p>
    <p><strong>Your Feedback:</strong> <%= feedback %></p>
</body>
</html>
