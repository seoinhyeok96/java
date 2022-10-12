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
	<!-- userBean 이용한 객체 생성과 데이터 저장  액션태그는 XML 표준에 맞게 작성됨-->  
	<jsp:useBean id="member" class = "com.member.beans.MemberBean" scope="request"/>
	<jsp:setProperty property="*" name="member"/>
	<a href="joinView.jsp">가입정보 보기</a>
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