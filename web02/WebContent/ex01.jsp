<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입</title>
</head>
<body>
<h2>회원가입</h2>
<form action="ex01_result.jsp" method="POST">
   <table>
      <tr>
         <td>이름</td>
         <td><input type="text" name="name" size="20"></td>
      </tr>
      <tr>
         <td>아이디</td>
         <td><input type="text" name="userid" size="20"></td>
      </tr>
      <tr>
         <td>비밀번호</td>
         <td><input type="password" name="userpwd" size="20"></td>
      </tr>
      <tr>
         <td>이메일</td>
         <td><input type="text" name="email" size="20"></td>
      </tr>
      <tr>
         <td>전화번호</td>
         <td><input type="text" name="phone" size="15"></td>
      </tr>
      <tr>
         <td>등급</td>
         <td>
            <input type="radio" name="admin" value="0"> 일반회원
            <input type="radio" name="admin" value="1"> 관리자
         </td>
      </tr>
      <tr>
         <td><input type="submit" value="전송"></td>
         <td><input type="reset" value="취소"></td>
      </tr> 
   </table>
</form>
</body>
</html>