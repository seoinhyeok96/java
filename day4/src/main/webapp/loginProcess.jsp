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
//1. id / password

String id = request.getParameter("ID");
String pwd = request.getParameter("pwd");

//2. login success (id: smart / pwd: 1234)
	if(id.equals("test") && pwd.equals("1234")){
		
			//1.response.sendRedirect("loginSuccess.jsp?id=" +id); <= 보안에 취약, 노출
					
			//2-1.RequestDispatcher 생성
			//2-2.forward() method
			
		String name = "홍길동";
		request.setAttribute("name",name);
			
		RequestDispatcher dispt = request.getRequestDispatcher("loginSuccess1.jsp");
		dispt.forward(request, response);
			
//3. login fails 		 
	}else{
			response.sendRedirect("loginFail1.jsp");	
	}

%>		
</body>
</html>