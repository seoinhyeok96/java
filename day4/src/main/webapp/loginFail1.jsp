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
		style="width: 500px; height: 300px; border: 1px solid gray; text-align: center">
		<h2>Second Page of Action</h2>
		<p>로그인 실패 :( <br> Please try again.</p>
		<a href ="login2.html"><br>Back to login Page</a>
		<p>
			<img src="./images/1.jpg"
				style="width: 500px; height: 300px">
		<hr>
		<a href="firstPage.jsp">Back to First Page</a>
		<hr>
		<%@include file="today.jsp"%>

	</div>
</body>
</html>