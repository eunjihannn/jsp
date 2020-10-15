<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 정보</title>
</head>
<body>
<%
request.setCharacterEncoding("UTF-8");

String name = request.getParameter("name");
String userid = request.getParameter("userid");
String userpwd = request.getParameter("userpwd");
String email = request.getParameter("email");
String phone = request.getParameter("phone");
int admin = Integer.parseInt(request.getParameter("admin"));

%>
<h2>회원 정보</h2>
<table border="1">
	<tr>
		<td>이름</td>
		<td><%=name %></td>
	</tr>
	<tr>
		<td>아이디</td>
		<td><%=userid %></td>
	</tr>
	<tr>
		<td>비밀번호</td>
		<td><%=userpwd %></td>
	</tr>
	<tr>
		<td>이메일</td>
		<td><%=email %></td>
	</tr>
	<tr>
		<td>전화번호</td>
		<td><%=phone %></td>
	</tr>
	<tr>
		<td>등급</td>
		<td><% 
		if(admin==0){
			%>일반회원<%
		}else{
			%>관리자<%
		}
		%></td>
	</tr>
</table>

</body>
</html>