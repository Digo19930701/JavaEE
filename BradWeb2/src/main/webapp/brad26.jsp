<%@page import="tw.brad.apis.Bike"%>
<%
	String x =request.getParameter("x");
	Bike b2 =(Bike) request.getAttribute("bike");
%>
<span> brad26</span> 
<%= x %><br/>
<%= b2 %>