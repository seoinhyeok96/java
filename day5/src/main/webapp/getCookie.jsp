<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h3>쿠기 정보 가져오기(조회)</h3>
<%
	//1.request 객체 이용
		Cookie []cookies  =request.getCookies();
		System.out.print("쿠기 갯수: "+ cookies.length);
	//2. 쿠키 데이타 가져오기
	// 쿠키 데이터는(name,value)쌍으로 존재함
	// id:smart name: 홍길동 age: 22
	for(int i =0; i < cookies.length; i++){
		//쿠기의 name  정보 가져오기
	String name = cookies[i].getName();
		//쿠키의 value 정보 가져오기
	String Value = cookies[i].getValue();
	out.print(name+ ":" + Value +"<br> ");
	}

%>
</body>
</html>