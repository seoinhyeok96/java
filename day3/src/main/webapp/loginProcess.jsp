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
//id ,pw 가져오기
String id = request.getParameter("id");
String pw= request.getParameter("pwd");
// 회면 이면 성공페이지로(succsee.jsp)로 id:smart pw:1234
if((id.equals("smart")) & (pw.equals("1234"))){
	// 성공한 페이지로 이동
	//response.sendRedirect("success.jsp?id="+id);
	// 1. sendRedirect() 사용한 페이지 이동
    //response.sendRedirect("success.jsp?id="+id);
    
    // 2. forward() 이용한 페이지 이동
    // 2-1 RequestDispatcher 객체(인스턴스) 생성
    // 2-2 forword() 메소드 호출
    String name="고길동";
    request.setAttribute("name", name);
    RequestDispatcher dispt = request.getRequestDispatcher("success.jsp");
    dispt.forward(request,response);
}else{
	response.sendRedirect("fail.jsp");
	
}
// 회원이 아니면 로그인 페이지(fail.jsp)로 안내
%>
</body>
</html>