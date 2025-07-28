<%@ page language="java" contentType="text/html" %>
<!-- 
  This is the main page where users can fill out the feedback form. 
  The form data will be sent to response.jsp using POST method.
-->
<html>
<head>
    <title>Feedback Form</title>
</head>
<body>
    <h2>Simple Feedback Form</h2>

    <!-- 
        HTML form to collect user input.
        When the user submits the form, the data is sent to response.jsp.
    -->
    <form action="response.jsp" method="post">

        <!-- Text input for user's name -->
        <label>Name:</label>
        <input type="text" name="username" required><br><br>

        <!-- Email input field -->
        <label>Email:</label>
        <input type="email" name="email" required><br><br>

        <!-- Textarea for feedback message -->
        <label>Feedback:</label><br>
        <textarea name="feedback" rows="4" cols="40" required></textarea><br><br>

        <!-- Submit button -->
        <input type="submit" value="Send Feedback">
    </form>
</body>
</html>
