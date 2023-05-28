<%@page import="com.example.demo.Student"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Students Details</title>
</head>
<body>
<h1><i>Students Details</i></h1>
<%List<Student> list=(List<Student>)request.getAttribute("list"); %>

<table border="2"> 
<tr>
<th>Sid</th>
<th>Name</th>
<th>Email</th>
<th>Edit Operation</th>
<th>Delete Operation</th>
</tr>

<%for(Student s:list) {%>
<tr>
<td><%=s.getId() %></td>
<td><%=s.getName() %></td>
<td><%=s.getEmail() %></td>
<td><a href="/pages/edit.jsp?action=update">Edit</a></td>
<td><a href="/pages/delete.jsp?action=delete">Delete</a></td>
</tr>
<% }%>
</table>
</body>
</html>