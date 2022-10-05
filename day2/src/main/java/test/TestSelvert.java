package test;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class TestSelvert
 */
@WebServlet("/testSelvert")
public class TestSelvert extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public TestSelvert() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
	     //response.getWriter().append("Served at: ").append(request.getContextPath());
	    //0. 전송데이터에 한글이 포함된 경우 인코딩 방싱을 지정한다.
		request.setCharacterEncoding("UTF-8");
		
		
		
		//1.전송데이터 가져오기(get)
	      String id = request.getParameter("id");
	      String pwd = request.getParameter("pwd");


	      //2.출력 문서에 한글 포함될 경우

	      response.setContentType("text/html; charset=UTF-8");

	      //출력스트림 가져오기

	      PrintWriter out = response.getWriter();

	      //4 로직 처리 및 HTML출력

	      out.print("<html><head><title>로그인결과</head></title>");
	      out.print("<body>");
	      out.print("<b>"+id+"</b>님 환영합니다.");
	      out.print("</body>");
	      out.print("</html>");
	   

	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
