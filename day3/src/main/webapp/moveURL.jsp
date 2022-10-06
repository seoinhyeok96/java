<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
// 1.데이터 받기
	String url = request.getParameter("url");
//2. 데이터 처리 네이버 다음 구글
if(url.equals("네이버")){
	response.sendRedirect("https://www.naver.com");
}else if (url.equals("다음")){
	response.sendRedirect("https://www.daum.net");
}else if(url.equals("구글"))
	response.sendRedirect("https://www.google.com");





%>

</body>
</html>