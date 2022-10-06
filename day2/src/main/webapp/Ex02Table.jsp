<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<table border>
<tr>
<% 
//방이10개인 테이블 화면에출력하세요
for(int i =1; i <=10; i++){
	out.print("<td>"+i+"</td>");
}

%> 
</tr>
</table>
<!-- html 주석 -->
<%-- jsp 주석
<%=표현식%> => out.print(표현식)
--%>
<table border>
</tr>
<% for(int i =1; i <=10; i++){%>
	<td><%=i %></td>
<%}%>
</tr>
</table>




</body>
</html>