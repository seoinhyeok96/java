<%
	String userId = (String)session.getAttribute("userId");
	if((userId)==null)response.sendRedirect("loginForm.jsp");
	
%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%=session.getAttribute("userId")%>님을 환영합니다
세션 시작 시간 :<%=session.getAttribute("sst")%>분
세션 시간 다시 호출:
<%
	long presentTime = session.getLastAccessedTime()/1000;
	System.out.println("현재시간: " + presentTime + "초");
	//세션 유지된 시간:(abs(세션 시작 시간 현재시간))
	long stayTime = (long)session.getAttribute("sst") - presentTime;
	out.print("로그인 이후 사이트에 머문시간: "+stayTime + "초");
%>
<hr>
<a href="page1.jsp">1페이지로 이동</a>
</body>
</html>