package pack01;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/PlusServlet")
public class PlusServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public PlusServlet() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String num1 = request.getParameter("num1");
		String num2 = request.getParameter("num2");
//		int sum = Integer.parseInt(num1)+Integer.parseInt(num2);
//		System.out.println(num1+"+"+num2+"="+sum);
		int iNum1 = Integer.parseInt(num1);
		int iNum2 = Integer.parseInt(num2);
		
		PrintWriter out = response.getWriter();
//		out.print(num1+"+"+num2+"="+sum);
		out.print(iNum1);
		out.print("+");
		out.print(iNum2);
		out.print("=");
		out.print(iNum2+iNum2);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	}

}
