package com.smhrd.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.smhrd.model.MemberDAO;
import com.smhrd.model.MemberVO;

public class JoinController implements Controller {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {

		// 한글 인코딩!
//		request.setCharacterEncoding("UTF-8");
		
		// join에서 보내준 데이터를 뽑아야 함
		// - id, pw, tel, address
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		String tel = request.getParameter("tel");
		String address = request.getParameter("address");
		
		MemberVO member = new MemberVO(id, pw, tel, address); 
		
		// dao 객체 생성
		MemberDAO dao = new MemberDAO();
		
		// dao join 기능 실행
		int result = dao.join(member);
		System.out.println(result);
		
		// join이 돌려주는 결과값에 따라서 마무리 로직 진행
		// -> 가입 성공시 이클립스 콘솔에 "가입성공"
		if(result > 0) {
			HttpSession session = request.getSession();
			session.setAttribute("member", member);
			// 삭제) RequestDispatcher rd = request.getRequestDispatcher("join_success.jsp");
			// 삭제) rd.forward(request, response);
			return "/join_success.jsp";
		}else {
			// 삭제) response.sendRedirect("main.jsp");
			return "/main.jsp";
		}
		
	}

}
