package com.smhrd.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.smhrd.model.MemberDAO;
import com.smhrd.model.MemberVO;

public class LoginController implements Controller {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		
		MemberVO member = new MemberVO(id, pw);
		MemberDAO dao = new MemberDAO();
		MemberVO result = dao.login(member);
		
		if(result == null) {
			// 로그인 실패
			// 삭제) response.sendRedirect("main.jsp");
			return "/main.jsp";
		}else {
			// 로그인 성공
			// 사용자의 정보를 담은 세션 생성
			HttpSession session = request.getSession();
			session.setAttribute("member", result);
			// 삭제) response.sendRedirect("main.jsp");
			return "/main.jsp";
		}
	}

}
