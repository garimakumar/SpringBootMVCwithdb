<%@page import="org.hibernate.internal.build.AllowSysOut"%>
<%@page import="org.hibernate.Session"%>
<%@page import="com.example.demo.Student"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="com.example.demo.*" %>
<%@page import="java.util.*" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Edit Page</title>
</head>
<body>
<h1>Editing the Student Details:</h1>
<form action="update" method="post">
<%

int id=Integer.parseInt(request.getParameter("id"));
request.setAttribute("id",id);
System.out.println("In Edit page");
request.getAttribute("id");
%>
New Name:<input type="text" name="Name"><br><br>
New Email:<input type="text" name="Email"><br><br>
<input type="submit" value="Re-Register">
</form>
</body>
</html>