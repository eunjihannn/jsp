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
	String[] movieList = {"지금 만나러 갑니다","어벤져스","왕의 남자","리틀 포레스트","노트북"};
	pageContext.setAttribute("movieList",movieList);
%>
<c:forEach 	var="movieTitle" items="${movieList}" varStatus="s">
	${movieTitle}<c:if test="${not s.last}">,</c:if>
</c:forEach>

</body>
</html>