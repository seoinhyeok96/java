<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<div style="width:600;heigh:500px;border: 1px solid gray;text-align:center;">
<h2>첫번째 페이지</h2>
내용이 여기 들어갑니다.
<br><img src="./image/2.jpg" style="width:400;heigh:300px;">
<hr>
<a href="secondPage.jsp">2 페이지로 이동</a>
<br>
오늘날짜: <%@ include file= "today.jsp" %>
</div>
</body>
</html>