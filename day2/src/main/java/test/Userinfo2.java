package test;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Userinfo2
 */
@WebServlet("/userinfo2")
public class Userinfo2 extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//1.전송 데이터 한글 포함될 경우 인코딩 방식 설정
		request.setCharacterEncoding("utf-8");
		//2.데이터 가져 오기 
		String name= request.getParameter("name");
		String age= request.getParameter("age");
		String job= request.getParameter("job");
	    String gender= request.getParameter("gender");
	    String [] hobby= request.getParameterValues("hobby");
	    String [] interest = request.getParameterValues("interest");
	    String [] food = request.getParameterValues("food");
		//3.HTML 문서에 한글 포함할 경우 인코딩 방식 지정
	    response.setContentType("text/html;charset=UTF-8");
		//4.출력스트림 생성
		PrintWriter out = response.getWriter();
		//5. 데이터 처리 및  출력
		out.print("</body>");
		out.print("이름: "+name+"<br>");
		out.print("나이: "+age+"(");
		int ageInt=Integer.parseInt(age);
		int result = ageInt/10;//age=22 result=2
		result=result*10;
		out.print(result+"대)"+"<br>");		
		out.print("성별: "+gender+"<br>");
		out.print("좋아하는 음식: ");
		for(String foods: food) {
			out.print(foods+" ");
		}
		out.print("관심분야: ");
		for(String inter: interest) {
			out.print(inter+" ");
		}

	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
