<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
	</head>
	<body>
		<%
		String methon = request.getMethod();
		 ServletRequest sr =	pageContext.getRequest();
		if(request ==sr){
			out.print("ok<br/>");
		}
		
		if(sr instanceof HttpServletRequest){
			out.print("I am");
		}
		
		%>
	
	
	</body>
</html>