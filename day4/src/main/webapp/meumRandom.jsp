<%@page import="java.util.Random"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
 "오늘의 메뉴는?"<br>
<%
   
	Random ran = new Random();
   String [] menulist = {"김치볶음밥","김밥앤라면","짜장면","알밥","된장찌개","파스타"};
   int index = ran.nextInt(menulist.length); //0~length-1 리턴
   
   String select = request.getParameter("select");
   String menu2 = request.getParameter("menu");
   
   if(select.equals("메뉴 선택")){
	      out.print("오늘의 메뉴 : "+menu2);
	   }
	   else{
	      out.print("오늘의 메뉴 : "+menulist[index]);
	   }

		   

   



%>
<br>
<a href="meumRandom.html">별로임! 나 돌아갈래~</a>
</body>
</html>
