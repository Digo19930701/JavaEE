<%@page import="java.sql.*"%>
<%@page import="java.util.Properties"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<c:catch var="error" >
<%
	Class.forName("com.mysql.cj.jdbc.Driver");//buildpath 要去MYSQL官方看
	//Class.forName("com.mysql.cj.jdbc.Driver1");//例外
	
	Properties prop = new Properties();
	prop.put("user", "root");
	prop.put("password", "root");
	Connection conn = DriverManager.getConnection(
					"jdbc:mysql://localhost/iii",prop);
	
	String sql="INSERT INTO cust (cname,tel,birthday)"+
			"VALUES(?,?,?)";
	
	PreparedStatement pstmt = conn.prepareStatement(sql);
	pstmt.setString(1, "jsp");
	pstmt.setString(2, "333");
	pstmt.setString(3, "1993-07-12");
	int num = pstmt.executeUpdate();
	pageContext.setAttribute("num", num);//pageContext隱含物件 
%>
</c:catch>
 
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
	</head>
	<body>
		<c:if test="${!empty error}">Sever Busy:${error }</c:if>
		<c:choose>
			<c:when test="${num >0}">OK</c:when>
			<c:otherwise>XX</c:otherwise>
		
		
		</c:choose>
	
	</body>
</html>