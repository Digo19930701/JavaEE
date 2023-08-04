<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
	</head>
	<body>
		${paramValue.habby[0] }
		${paramValue.habby[1] }
		${paramValue.habby[2] }
		${paramValue.habby[3] }
		${paramValue.habby[4] }
		${paramValue.habby[5] }
		<hr/>
		<!-- $= EL  EL沒有隱含物件 -->
		Method: <%= request.getMethod() %><br/>
		Method: ${pageContext.request.method}<hr/>
		IP :<%= request.getRemoteAddr() %><br/>
		IP: ${pageContext.request.remoteAddr}<hr/>
		Locale: <%= request.getLocale() %><br/>
		Locale: ${pageContext.request.locale}<hr/>
		Language: <%= request.getLocale().getDisplayLanguage() %><br>
		Language: ${pageContext.request.locale.displayLanguage}<br>
		
	</body>
</html>