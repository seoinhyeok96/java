<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<!--  두개의 수를 입력하는 폼 만들기 -->
<h3>두개의 수를 입력-> 더한 결과가 홀수인지 짝수인지 알려줍니다.</h3>
<form action="oddCal.jsp" method="get">
<input type = "text" name="num1">
+
<input type = "text" name="num2">
<input type = "submit" value="odd판별">


</form>
</body>
</html>