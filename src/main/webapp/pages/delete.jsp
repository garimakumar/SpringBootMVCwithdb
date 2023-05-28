<%@page import="java.text.Normalizer.Form"%>
<%@page import="org.hibernate.internal.build.AllowSysOut"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h1>Deleting record from the Student's List</h1>

<form action="delete">
<%
String id=(request.getParameter("id"));
request.setAttribute("id",id);

%>
<input type="number" name="ID" placeholder="id" value="<%=request.getAttribute("id")%>">
<input type="submit" value="Delete">
</form>
</body>
</html>