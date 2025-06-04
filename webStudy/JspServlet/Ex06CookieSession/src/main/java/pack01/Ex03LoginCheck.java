package pack01;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/Ex03LoginCheck")
public class Ex03LoginCheck extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public Ex03LoginCheck() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		
		// test, 12345
		if(id.equals("test") && pw.equals("12345")) {
			// 로그인성공
			// 유지시키고 싶은 세션 생성 + 데이터 저장
			HttpSession session = request.getSession();
			session.setAttribute("id",id);
			//메인 페이지로 이동
			response.sendRedirect("Ex03Main.jsp");
		}else {
			// 로그인실패
			System.out.println("실패함");
			response.sendRedirect("Ex03LoginForm.html");
		}
	}

}
