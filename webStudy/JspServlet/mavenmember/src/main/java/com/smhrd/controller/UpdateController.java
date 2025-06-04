package com.smhrd.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.smhrd.model.MemberDAO;
import com.smhrd.model.MemberVO;

public class UpdateController implements Controller {

	// 전체적으로 execute 메소드 안에 넣어준다
	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		
		HttpSession session = request.getSession();
		MemberVO sessionMember = (MemberVO) session.getAttribute("member");
		
		String id = sessionMember.getId();
		String pw = request.getParameter("pw");
		String tel = request.getParameter("tel");
		String address = request.getParameter("address");
		
		MemberVO member = new MemberVO(id, pw, tel, address);
		
		MemberDAO dao = new MemberDAO();
		int result = dao.update(member);
		System.out.println(result);		
		
		if(result > 0) {
			// execute에서 페이지를 이동시키는게 아니라 
			// 이동하고 싶은 페이지의 주소를 String 형태로 return하고,
			// FrontController에서 페이지를 이동
			session.setAttribute("member", member);
			// 삭제) response.sendRedirect("main.jsp");
			return "/main.jsp";
		}else {
			// 삭제) response.sendRedirect("update.jsp");
			return "/update.jsp";
		}
	}


}
