<%@ page import="java.sql.*" %>
<%@ page import="javax.sql.*" %>
<%@ page import="javax.naming.*" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"  %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
	Connection conn = null;
	
	try{
		Context init = new InitialContext();
		DataSource ds = (DataSource) init.lookup("java:comp/env/jdbc/MySQLDB");
		conn = ds.getConnection();
		
		out.println("<h3>연결되었습니다.</h3>");
	} catch(Exception e){
		out.println("<h3>실패</h3>");
		e.printStackTrace();
	}
	

%>
	<jsp:useBean id="now" class="java.util.Date" />
	<fmt:formatDate value="${now}" pattern="YYYY/MM/dd" />t<br>
	<fmt:formatDate var="year" value="${now}" pattern="YYYY" />
	<fmt:formatDate var="month" value="${now}" pattern="MM" />
	<fmt:formatDate var="day" value="${now}" pattern="dd" />
	<p>현재 년도: ${year}</p>
	<p>현재 월: ${month}</p>
	<p>현재 일: ${day}</p>






</body>
</html>