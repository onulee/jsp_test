<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
  <h1>메인페이지</h1>
  <h2>DB 연동</h2>

<%
  Connection conn=null;

  try{
	 String jdbcUrl = "jdbc:mysql://localhost:3306/my_user";
     String dbId = "myuser"; // 설정된 id
     String dbPass = "myuser1111**"; // 설정된 password
	
	 Class.forName("com.mysql.cj.jdbc.Driver");
	 conn = DriverManager.getConnection(jdbcUrl,dbId ,dbPass );
	 out.println("연결 성공");
  }catch(Exception e){ 
	 e.printStackTrace();
  }
%>

<ul>
  <li><a href="list.do">회원리스트</a></li>
</ul>


</body>
</html>