<%@page import="com.member.beans.MemberBean"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.member.beans.MemberManager"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<jsp:useBean id="ml" class="com.member.beans.MemberManager" scope="application"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h3>회원 가입 결과</h3>

<jsp:useBean id="member" class="com.member.beans.MemberBean" scope="session"/>
아이디 : <jsp:getProperty property="id" name="member"/><br>
비밀번호 : <jsp:getProperty property="pwd" name="member"/><br>
이름 : <jsp:getProperty property="name" name="member"/>
<a href="join.jsp">뒤로<%session.invalidate(); %></a>

<h3>회원 리스트</h3>
<table>
<tr><th>ID</th><th>PW</th><th>NAME</th></tr>
<%
   ArrayList <MemberBean> mms = ml.getList(); 
   for(int i = 0; i < mms.size(); i++) {
      MemberBean m = mms.get(i);
%>
      <tr><td><%=m.getId() %></td>
      <td><%=m.getPwd() %></td>
      <td><%=m.getName() %></td>
<%}%>
</table>
</body>
</html>