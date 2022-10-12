package test;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Lab2Join
 */
@WebServlet("/lab2Join")
public class Lab2Join extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// 깨진 한글 찾아주기
	    request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html;charset=utf-8");
		PrintWriter out = response.getWriter();

		String id = request.getParameter("id");
		String pwd = request.getParameter("pwd");
		String cf = request.getParameter("pwdCf");
		String gender = request.getParameter("gender");
		String blood = request.getParameter("blood");
		String birth = request.getParameter("birth");
		String [] hobby = request.getParameterValues("hobby");
		String color = request.getParameter("color");
		System.out.print(color);
		String memo = request.getParameter("memo");


		out.print("<html><head><title>Join</title></head><html>");
		out.print("<body>");

		out.print("아이디:" + id + "<br>");
		out.print("비밀번호: " + pwd + "<br>");
		if (!pwd.equals(cf)) out.print("비밀번호가 일치하지 않습니다. <br>" );
		out.print("성별: " + gender + "<br>");
		out.print("혈액형: "+blood);
		out.print("<br>" + "생일: " + birth + "<br>");
		out.print("취미: ");
		for (String h:hobby) {
		out.print(h + " ");
		}
		out.print("<br>" +" color: "+color+"<div style='width:100px;height:100px;background:" + color + "'></div>");

		
		out.print("남기고 싶은 말: ");
		out.print(memo);

		out.print("</body");
		out.print("</html>");

	}

}
