package pack01;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/TableServlet")
public class TableServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public TableServlet() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String num = request.getParameter("num");
		int iNum = Integer.parseInt(num);
		System.out.println(iNum);
		
		PrintWriter out = response.getWriter();
		out.print("<html>");
		out.print("<head>");
		out.print("<style>"
				+ "table{border: solid 1px black;}"
				+ "td{border : solid 1px black;}"
				+ "</style>");
		out.print("</head>");
		out.print("<body>");
		out.print("<table><tr>");
		for(int i=1; i<=iNum; i++) {
			out.print("<td>");
			out.print(i);
			out.print("</td>");
		}
		out.print("</tr></table>");
		out.print("<body>");
		out.print("</html>");
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	}

}
