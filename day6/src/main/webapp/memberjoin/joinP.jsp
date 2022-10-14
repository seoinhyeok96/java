
<%@page import="com.member.beans.MemberBean"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:useBean id="ml" class="com.member.beans.MemberManager" scope="application"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<!-- userBean 이용한 객체 생성과 데이터 저장  액션태그는 XML 표준에 맞게 작성됨-->  
	<% request.setCharacterEncoding("UTF-8"); %>
	<jsp:useBean id="member" class = "com.member.beans.MemberBean" scope="session"/>
	<jsp:setProperty property="*" name="member"/>
	<% ml.add(member); 
		session.setAttribute("member", member);%>
	<a href="joinView.jsp">회원정보 보기</a>
<!--  
<h3>회원가입 결과</h3>
아이디:<=member.getId() %><br>
비밀번호:<=member.getPwd() %><br>
이름:<=member.getName() %><br>
-->
</body>
</html>