<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h3>쿠키 생성 과정</h3>
<%
	//1. 쿠키 생성 id, name, age
	Cookie cookieId = new Cookie("id","smart");
	Cookie cookieName = new Cookie("name","홍길동");
	Cookie cookieAge = new Cookie("age","22");
	//2. 쿠기 정보 기간 설정(30분 설정)
	cookieId.setMaxAge(60*30);
	cookieName.setMaxAge(60*30);
	cookieAge.setMaxAge(60*30);
	//2. 클라이언트에 쿠키 전송
	response.addCookie(cookieId);
	response.addCookie(cookieName);
	response.addCookie(cookieAge);
%>
</body>
</html>