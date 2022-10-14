package controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.DAO;
import model.MemberVo;

/**
 * Servlet implementation class JoinServlet
 */
@WebServlet("/joinServlet")
public class JoinServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// 1. 클라에서 보내는 데이터 가져오기
		request.setCharacterEncoding("UTF-8");
		String name = request.getParameter("name");
		String userid = request.getParameter("userid");
		String pwd = request.getParameter("pwd");
		String email = request.getParameter("email");
		String phone = request.getParameter("phone");
		int admin = Integer.parseInt(request.getParameter("admin"));
		
		// 2. MemerVO에 넣기
		MemberVo vo = new MemberVo(name, userid, pwd, email, phone, 0);
		System.out.println(vo);
		
		//DB 연결
		DAO dao = new DAO();
		String message = dao.getConnection();
		System.out.println("message : " + message);
		// 자료를 DB에 저장, 데이터 처리
		int result = dao.insert(vo);
		
		if (result >0) {
			System.out.println("result : " + result);
			request.setAttribute("message", "회원 가입 성공"); 
		}else {
			request.setAttribute("message", "회원 가입 싪패!");
		}
		
		// 자원 반환
		dao.getClose();
		RequestDispatcher dispt = request.getRequestDispatcher("main.jsp");
		dispt.forward(request, response);
	}

}
