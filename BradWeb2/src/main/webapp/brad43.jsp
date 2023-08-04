<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
 <%
    int b=  (Integer)application.getAttribute("a");//娶回來是物件所以前面加Integer轉換
 	b++;
 	application.setAttribute("a", b);
    
 %>
    
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
	</head>
	<body>
	a = ${a}
	</body>
</html>