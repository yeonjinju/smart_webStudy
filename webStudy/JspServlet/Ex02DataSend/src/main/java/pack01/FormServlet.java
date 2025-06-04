package pack01;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/FormServlet")

public class FormServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
    public FormServlet() {
        super();
    }
    
	public void init(ServletConfig config) throws ServletException {
	}
	
	public void destroy() {
	}
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// 브라우저에 출력하기 위해 응답 데이터에 인코딩 형식을 지정
		response.setContentType("text/html; charset=UTF-8");
		
		// request.getParameter("form의 name 값");
		// - 요청 관련 객체가 가지고 있는 파라미터 값을 String으로 리턴
		String formId = request.getParameter("id");
		System.out.println(formId);
		
		// 받은 데이터 웹페이지에 출력
		PrintWriter out = response.getWriter();
		out.print(formId);
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	}

}
