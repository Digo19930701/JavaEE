<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
	</head>
	<body>
		Hello,World  %@是標籤意思
		<hr/>
		<%
			out.println("我是JSP%");//隱含物件
		%>
		<hr/>
		<%
			int lottery = (int)(Math.random()*49+1);
		out.println(lottery);
		%>
		<hr/>
		<%
			out.println(lottery);
		%>
		<hr/>
		<%= lottery %>等於int lottery = (int)(Math.random()*49+1);
		out.println(lottery);
		
	</body>

</html>