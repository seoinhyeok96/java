package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.DAO;
import model.MemberVO;


@WebServlet("/loginService")
public class Logineservlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//로그인 정보 가져오기
		request.setCharacterEncoding("UTF-8");
		String userid=request.getParameter("userid");
		String pwd=request.getParameter("pwd");
		
		//로그인 정보를 M
		MemberVO vo= new MemberVO(userid,pwd);
		System.out.println("userid:"+ vo.getUserid()+"pwd"+vo.getPwd());
		
		DAO dao = new DAO();
		dao.getConnection();
		//데이터 처리
		MemberVO result = dao.loginCheck(vo);
		
		//해당되는 로그인 정보가 있는지 판단
		if(result !=null) {
			//로그인 성공
			//세션객체에 멤머 정보 저장하고 -->success.jsp
			HttpSession session=   request.getSession();
			session.setAttribute("member", result);
			response.sendRedirect("success.jsp");
			
			
		}else {
			response.sendRedirect("login.jsp");
		}
		
		//DB자원 반환
		dao.getClose();
		
		
	}

}
