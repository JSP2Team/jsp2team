package com.codingbox.join;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.codingbox.DAO.UserDAO;
import com.codingbox.DTO.UserDTO;
import com.codingbox.action.Action;
import com.codingbox.action.ActionForward;

public class JoinAction implements Action{

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) {
		ActionForward forward = new ActionForward();
		// db연결, insert
		UserDAO udao = new UserDAO();
		// DTO
		UserDTO udto = new UserDTO();
		
		udto.setUserid( request.getParameter("userid") );
		udto.setUserpw(request.getParameter("userpw"));
		udto.setUsername( request.getParameter("username") );
		udto.setUsertel( request.getParameter("usertel") );
		udto.setEmail( request.getParameter("email") );
		udto.setRegdate( request.getParameter("regdate") );
		udto.setWithdrawl( Boolean.parseBoolean(request.getParameter("withdrawl")) );
		
		
		forward.setRedirect(true);
		if( udao.join(udto) ) {
			// 회원가입 성공
			forward.setPath("/mall/jsp/login.jsp");
		} else {
			// 회원가입 실패
			forward.setPath("/mall/jsp/join.jsp");
		}
		
		return forward;
	}

}
