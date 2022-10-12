<%@page import="beans.Member"%>
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
	// request 객체로부터 데이터 분리(가져오기)
	request.setCharacterEncoding("UTF-8");
	String id = request.getParameter("id");
	String pwd = request.getParameter("pwd");
	String name = request.getParameter("name");
%>	
	//객체를 생성하고 데이터 저장
	//Member member = new Member();
	//member.setId(id);
	//member.setPwd(pwd);
	// member.setName(name);
	//session.setAttribute("member",member);
	//request.setAttribute("member",member);
	//userBean 이용한 객체 생성과 데이터 저장 --> 액션태그는 XML 표준에 맞게 작성됨
	<jsp:useBean id="member" class = "beans.Member" scope="request"/>
	<jsp:setProperty property="*" name="member"/>
	<!--<jsp:setProperty property="pwd" name="member"/>
	<!--<jsp:setProperty property="name" name="member"/>
	RequestDispatcher dispt =request.getRequestDispatcher("joinView.jsp");
	dispt.forward(request,response);

	// 결과 피드백
%>


<!--  
<h3>회원가입 결과</h3>
아이디:<=member.getId() %><br>
비밀번호:<=member.getPwd() %><br>
이름:<=member.getName() %><br>
-->


</body>
</html>