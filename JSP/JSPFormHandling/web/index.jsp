<%-- 
    Document   : processForm
    Created on : 27-Jul-2025, 9:47:01 pm
    Author     : Afnan's Laptop
--%>

<%@ page language="java" contentType="text/html" %>
<%@ page errorPage="error.jsp" %>
<html>
<head>
    <title>User Input Form</title>
</head>
<body>
    <h2>Registration Form</h2>
    <form action="processForm.jsp" method="post">
        <label>Name:</label>
        <input type="text" name="name" required><br><br>

        <label>Password:</label>
        <input type="password" name="password"><br><br>

        <label>Email:</label>
        <input type="email" name="email"><br><br>

        <label>Gender:</label>
        <input type="radio" name="gender" value="Male"> Male
        <input type="radio" name="gender" value="Female"> Female<br><br>

        <label>Languages Known:</label>
        <input type="checkbox" name="languages" value="English"> English
        <input type="checkbox" name="languages" value="Hindi"> Hindi
        <input type="checkbox" name="languages" value="Bengali"> Bengali<br><br>

        <label>Country:</label>
        <select name="country">
            <option>India</option>
            <option>USA</option>
            <option>UK</option>
        </select><br><br>

        <label>Bio:</label><br>
        <textarea name="bio" rows="4" cols="50"></textarea><br><br>

        <input type="submit" value="Submit">
    </form>
</body>
</html>
