<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h3>홀수,짝수 판단하기</h3>
<%
	// 아래 두수의 연산 결과가 홀수인지 짝수인지 판단하는 메소드 작성하기
	int num1 = Integer.parseInt(request.getParameter("num1"));
	int num2 = Integer.parseInt(request.getParameter("num2"));
	
	int sum = num1+num2;
	boolean result =odd(sum);
	if(result){
		out.print(num1+ "+" + num2 + "결과는 홀수입니다.");
	}
	else{
		out.print(num1+ "+" + num2 + "결과는 짝수입니다.");
	}
%>
<h3>홀수,짝수 판단하기</h3>
<%!
	//홀수-> true  짝수-> false 리턴하는 메소드
	boolean odd(int data){
	if(data%2 ==1) return true;
	else return false;
}
%>
</body>
</html>