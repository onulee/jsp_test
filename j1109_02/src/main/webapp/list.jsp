<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
</head>
<body>
	
	<table width="500" cellpadding="0" cellspacing="0" border="1">
		<tr>
			<td>아이디</td>
			<td>비밀번호</td>
			<td>이름</td>
			<td>전화번호</td>
			<td>성별</td>
			<td>취미</td>
		</tr>
		<c:forEach items="${list}" var="dto">
		<tr>
			<td>${dto.id}</td>
			<td>${dto.pw}</td>
			<td>${dto.name}</td>
			<td>${dto.phone}</td>
			<td>${dto.gender}</td>
			<td>${dto.hobby}</td>
			
		</tr>
		</c:forEach>
		<tr>
			<td colspan="6"> <a href="#">추가</a> </td>
		</tr>
	</table>
	
</body>
</html>