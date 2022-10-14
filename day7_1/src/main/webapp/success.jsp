<%@page import="model.MemberVo" %>
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
	MemberVo member = (MemberVo)session.getAttribute("member");
	String name = member.getName();
%>
<%=name %>님 환영합니다!
<a href="01_allMember.jsp">회원 리스트</a>
<a href="main.jsp">로그아웃</a>
</body>
</html>