package com.smhrd.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.smhrd.model.MemberDAO;

@WebServlet("/IdCheckController")
public class IdCheckController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String id = request.getParameter("id");
		
		MemberDAO dao = new MemberDAO();

		boolean available = false;
		
		int count = dao.idCheck(id);
		
		if (count == 0) {
			available = true;
		}

		// JSON형태로 응답
		response.setContentType("application/json; charset=UTF-8");
		response.getWriter().write( " {\"available\" : " + available + "} " );

		System.out.println("가능여부 : " + available);
		
	}

}
