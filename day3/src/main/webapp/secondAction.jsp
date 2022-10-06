<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<div style="width:600;heigh:500px;border: 1px solid gray;text-align:center;">
<h2>두번째 액션 페이지 입니다.</h2>
내용이 여기 들어갑니다.
<br><img src="./image/1.png" style="width:400;heigh:300px;">
<hr>
<a href="secondAction.jsp">1 페이지로 이동</a>
<hr>
<!--  액션태그는 xml 표준 기준으로 작성된다.
	시작태그와 종료태그는 반드시 있어야 한다. -->
오늘날짜: <jsp:include page= "today.jsp" />
</div>
</body>
</html>