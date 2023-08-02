<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 
 <%
 	 int ROW,COL,START;
	
	String row = request.getParameter("row");
	String col = request.getParameter("col");
	String start = request.getParameter("start");
	
	try{
		ROW = Integer.parseInt(row);
		COL = Integer.parseInt(col);
		START = Integer.parseInt(start);
		
		
	}catch(Exception e){
		 ROW=2; COL=4; START=2;
	}
	
 %>
 
 
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
	</head>
	<body>
		<form >
		ROW: <input type="number" name="row" value="<%= ROW %>"/>
		Column: <input type="number" name="col" value="<%= COL %>"/>
		Start: <input type="number" name="start" value="<%= START %>"/>
		<input type="submit" value="chang">
		
		</form>
	
	
		<table border="1" width="100%">
			
			<% 
			for(int k=0;k<ROW;k++){
				out.println("<tr>");
			for(int j =2; j<=(COL+START-1);j++){
				
				int newj= j + k * COL;
				out.println("<td>");
				for (int i =1;i<=9;i++){
					int r =newj*i;
					out.println(String.format("%dx %d = %d<br/>" ,newj ,i ,r));
				}
				out.println("</td>");
			}
			out.println("</tr>");
		}
			%>
	
	
		</table>
	
	</body>
</html>