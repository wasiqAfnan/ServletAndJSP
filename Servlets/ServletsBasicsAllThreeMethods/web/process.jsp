<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.sql.*,java.io.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	String name = request.getParameter("uname");
	String city = request.getParameter("ucity");
%>

<%= name %>
<%= city %>

<%
	try{
//		out.println("Hey I am bfore forname");
		Class.forName("com.mysql.cj.jdbc.Driver");
		//out.println("Hey I am between forname and conn object");
		Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/my_db","root","root");
		//out.println("Hey I am after and conn object");
		
		if(conn == null){
			out.println("Failed");
		}
		else{
			out.print("Success");
		}
	}catch(Exception e){
		e.printStackTrace();
		out.println("Failed to connect");
	}
%>
</body>
</html>