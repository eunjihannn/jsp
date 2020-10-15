<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%!

Connection conn = null;
Statement stmt = null;
ResultSet rs = null;

String url = "jdbc:oracle:thin:@localhost:1521:XE";
String uid = "system";
String upw = "1234";

String sql = "SELECT * FROM member";
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 정보 보기</title>
</head>
<body>
<h2>MEMBER LIST</h2>
<table border="1" width="800">
	<tr>
		<th>NAME</th>
		<th>ID</th>
		<th>PASSWORD</th>
		<th>EMAIL</th>
		<th>PHONE</th>
		<th>ADMIN</th>
	</tr>
	<%
	try{
		Class.forName("oracle.jdbc.driver.OracleDriver");
		
		conn = DriverManager.getConnection(url,uid,upw);
		
		stmt = conn.createStatement();
		
		rs = stmt.executeQuery(sql);
		
		while(rs.next()){
			out.print("<tr align='center'>");
			out.print("<td>"+rs.getString("name")+"</td>");
			out.print("<td>"+rs.getString("userid")+"</td>");
			out.print("<td>"+rs.getString("userpwd")+"</td>");
			out.print("<td>"+rs.getString("email")+"</td>");
			out.print("<td>"+rs.getString("phone")+"</td>");
			out.print("<td>"+rs.getInt("admin")+"</td>");
			out.print("</tr>");
		}
		
	}catch(Exception e){
		e.printStackTrace();
	}finally{
		try{
			if(rs != null) rs.close();
			if(stmt != null) stmt.close();
			if(conn != null) conn.close();
		}catch(Exception e){
			e.printStackTrace();
		}
	}

	
	%>

</table>

</body>
</html>