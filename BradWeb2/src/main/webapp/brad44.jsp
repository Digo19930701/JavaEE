<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!--  prefix=標準標籤 -->
<%

	//pageContext.setAttribute("x", 10);
	//跟第10行事一樣的事

%> 
<c:set var="x" value="10"></c:set>
<c:set var="x" value="100" scope="request"></c:set>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
	</head>
	<body>
		x=${x}<br/> 
		x=${requestScope.x}<br/>
		<%= "Hello,World" %><br/>
		<c:out value="Hello,World"></c:out><br/>
		x= <c:out value="${x}"></c:out><br/>
		i= <c:out value="${param.i}" default="123456no value"/><br/>
		<hr/>
		<jsp:useBean id="member" class="tw.brad.apis.Member"></jsp:useBean>   
		<jsp:setProperty property="id" name="member" value="3" />
		<jsp:setProperty property="account" name="member" value="brad" />
		<jsp:setProperty property="realName" name="member" value="Brad" />
		<jsp:setProperty property="birthday" name="member" value="1992-02-03" />
		
		${member.id}:${member.account}<br/>
		${member }
		<hr/>
		
	</body>
</html>