<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	String name = "한은지:김지수:황희찬:예지훈:김하늘:이도현";
	session.setAttribute("name",name);
%>

<c:forTokens var="name" items="${name}" delims=":">
	${name}<br>
</c:forTokens>
</body>
</html>