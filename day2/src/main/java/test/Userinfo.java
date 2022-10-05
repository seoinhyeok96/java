package test;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Userinfo
 */
@WebServlet("/userinfo")
public class Userinfo extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Userinfo() {
        super();
        // TODO Auto-generated constructor stub
    }
 
	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
		 // 1. 전송데이터에 한글 포함될 경우 인코딩 방식 지정
	    request.setCharacterEncoding("UTF-8");
	    // 2. 데이터 가져 오기
	    String job= request.getParameter("job");
	    String gender= request.getParameter("gender");
	    // 복수개의 데이터를 가져올 경우 getParameterValues()이용
	    String [] hobby= request.getParameterValues("hobby");
	    //3. HTML 출력 문서에 한글 포함할 경우 인코딩 방식 지정
	    response.setContentType("text/html;charset=UTF-8");
	    //4. 출력 스트리밍 가져오기
	    PrintWriter out = response.getWriter();
	    //5. HTML 문서로 출력
	    out.print("</body>");
	    out.print("직업:"+job+",<br>");
	    out.print("성별:"+ gender +"<br>");
	    out.print("취미:");
	    for(int i =0 ; i < hobby.length; i++) {
	    	out.print(hobby[i]+" ");
	    }
	for(String h :hobby) {
		out.print(h + " ");
	}
	}
	
	

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
