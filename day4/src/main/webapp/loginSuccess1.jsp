<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div
		style="width: 1200px; height: 700px; border: 1px solid gray; text-align: center">
		<h2>First Page</h2>
		<% String name = (String) request.getAttribute("name");%>
		<b>[<%=name%>]님, 반갑습니다.</b> :D <br>
		
		<a href ="login3.html">Logout</a>
		
		<p>
			<img src="./images/2.jpg"
				style="width: 1200px; height: 700px">
		<hr>
		<a href="secondPage.jsp">Go to Second Page</a>
		<hr>
		<%@include file="today.jsp"%>
	</div>
</body>
</html>


