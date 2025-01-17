package com.javalex.ex;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class confirmLogin
 */
@WebServlet("/confirm")
public class confirmLogin extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public confirmLogin() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// 입력값 파라미터를 처리
		request.setCharacterEncoding("UTF-8");
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		// PasswordEncoder :: 비밀번호 파라미터 처리, 보안상으로는 이게 더 안전함
		
		employeeDAO dao = new employeeDAO();
			//위쪽에서 입력값으로 받은 id, pw값
		HttpSession session=request.getSession();	//러그인 성공하면 이름을 가져오기 위해

		//로그인에 성공할 때엔, 반환값이 true
		if(dao.checkAccount(id, pw)==true) {
			System.out.println("로그인 성공");
			
			//로그인 성공한 계정의 이름을, 세션에 저장
			// html 파일에 입력한 id, passwd 매개변수로 삽입
			session.setAttribute("name", dao.getName(id,pw));
			
			
			response.sendRedirect("welcomeLogin.jsp");
			
		}else {
			System.out.println("로그인 실패");
			response.sendRedirect("login.html");
		}
	}

}
