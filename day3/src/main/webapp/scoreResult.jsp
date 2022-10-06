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
// 깨진거 고쳐주셈
request.setCharacterEncoding("utf-8");
//점수를 저장할 배열 선언
	int [] jumsu = new int[4];
//1.데이터 가져오기(jsp 또는 서블릿 데이터가 입력되는 형식)
	String name = request.getParameter("name");
	jumsu[0]= Integer.parseInt(request.getParameter("java"));
	jumsu[1]= Integer.parseInt(request.getParameter("web"));
	jumsu[2]= Integer.parseInt(request.getParameter("iot"));
	jumsu[3]= Integer.parseInt(request.getParameter("android"));
	
	double avg =average(jumsu);
//2. 데이터 처리 average()정의
%>
<%! 
	double average(int[] jumsu){
		double avg=0;
		int sum=0;
		for(int i = 0; i <jumsu.length; i++){
			sum+=jumsu[i];
		}
		
		
		avg=(double)sum/jumsu.length;
		return avg;
	}
%>
<!--  //3.데이터 출력 -->
<div style="width:500px; border:solid 1px gray; text-align:center">
<h3>학점 확인 프로그램</h3>
<table align="center">
<!--6행 2열 구성-->
<tr>
<td>이름</td><td><%=name %></td>
</tr>
<td>JAVA 점수</td><td><%=jumsu[0]%></td>
</tr>
<td>WEB 점수</td><td><%=jumsu[1] %></td>
</tr>
<td>IOT 점수</td><td> <%=jumsu[2]%></td>
</tr>
<td>ANDROID 점수</td><td><%=jumsu[3]%></td>
</tr>
<td>평균</td><td><%=avg%></td>
</tr>
</table>
</div>
</body>
</html>

</body>
</html>