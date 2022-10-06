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
// 1부터 100까지 합을 구하여 화면에 출력하세요
//출력문1~100까지의 합:5050
int sum = 0; 
for(int i=1; i<=100;i++){
	sum+=i;
      
   }
out.println("1~100합:"+sum);



%>
</body>
</html>