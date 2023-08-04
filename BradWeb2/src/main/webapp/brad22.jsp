<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"  %>

<%
	String name =  request.getParameter("name");
	if(name == null) name = "World";
	
	String name2= request.getParameter("name2");
%>    
    
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
	</head>
	
	<body>
		<h1>Digo Company</h1>
		<hr/>
		<div>Hi,<%= name %>!<div>
		
		<span>你好<%= name2 %></span>
		
		
	</body>

</html>