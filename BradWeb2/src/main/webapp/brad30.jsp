<%@page import="tw.brad.apis.Brad19C"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String view = "brad32";
	String viewPage = String.format("%s.jsp", view);
	
	String x= request.getParameter("x");
	String y= request.getParameter("y");
	
	if(x != null && y != null){
		Brad19C obj = new Brad19C(x,y);
		int r = obj.plus();
		
		request.setAttribute("x", x);
		request.setAttribute("y", y);
		request.setAttribute("r", r+"");
	}else{
		request.setAttribute("x", "");
		request.setAttribute("y", "");
		request.setAttribute("r", "");
		
	}
%>
<jsp:forward page="brad32.jsp"></jsp:forward>