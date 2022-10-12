<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h3>쿠키 생성 과정</h3>
<%
	//1. 쿠키 생성 id, name, age
	// 쿠기를 저장할 배열 객체 생성
	Cookie []cookie = new Cookie[3];
	String [] name = {"id","name","age"};
	String [] value= {"smart","홍길동","22"};
	// 쿠기 생성하면서 배열에 저장
	for(int i = 0; i< cookie.length; i++){
	//(name,value)쌍으로 쿠기 생성
		 cookie[i]=new Cookie(name[i], value[i]);
		//2. 쿠기 정보 기간 설정(30분 설정)
		cookie[i].setMaxAge(60*30);
		//2. 클라이언트에 쿠키 전송(response 객체에 담기);
		response.addCookie(cookie[i]);
	}
	
%>
</body>
</html>