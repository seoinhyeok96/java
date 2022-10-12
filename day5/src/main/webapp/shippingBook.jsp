<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>책 장바구니</title>
<style>
   tr { border: 1px solid gray;}
   td { text-align:center; }
</style>
</head>
<body>
<h3> 책 장바구니 쿠키 구현</h3>
<table style="width: 400px; border:1px solid gray">
<form action="shoppingCart.jsp" method="post">
<tr><th>책 제목</th><th> 가격 </th><th>장바구니 담기</th><tr>
<tr><td>서블릿</td><td>22000</td><td>
<input type="checkbox" name="book" value="서블릿"></td><td>
<tr><td>자바</td><td>21000</td><td>
<input type="checkbox" name="book" value="자바"></td><td>
<tr><td>파이썬</td><td>22000</td><td>
<input type="checkbox" name="book" value="파이썬"></td><td>
<tr><td>머신러닝</td><td>24000</td><td>
<input type="checkbox" name="book" value="머신러닝"></td><td>
<tr><td>영상처리</td><td>28000</td><td>
<input type="checkbox" name="book" value="영상처리"></td><td>
<tr><td colspan="3"><input type="submit" value="장바구니 담기"></td></tr>

</form>
</table>
<div style="width: 400px; border:1px solid gray; text-align:center">
<h3> 장바구니 목록</h3>
<%	// 쿠기 정보 읽기
	Cookie [] cookies= request.getCookies();
		// 쿠기 정보 중에 이름이 book~인 것을 찾고 value 출력
	
	for(int i = 0 ; i < cookies.length; i ++){
	String name = cookies[i].getName();
	// 쿠기 정보중에 name 이  "book"에 포함되었는가?
	if(name.contains("book")){
		String value=cookies[i].getValue();
		//(1. 쿠키값)
		out.print((i+1) + ". " + value + "<br>");
	}
	
	}
%>

</div>
</table>
</body>
</html>