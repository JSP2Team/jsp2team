package com.codingbox.join;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.codingbox.DAO.MyBatisDAO;
import com.codingbox.DTO.UserDTO;
import com.codingbox.action.Action;
import com.codingbox.action.ActionForward;

public class loginOkAction implements Action{

	private char[] user;

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) {
        ActionForward forward = new ActionForward();
        MyBatisDAO mdao = new MyBatisDAO();

        String userid = request.getParameter("userid");
        String userpw = request.getParameter("userpw");

        // MyBatis를 사용하여 데이터베이스에서 사용자 정보를 가져옴
     // UserDTO 객체 생성 및 사용자 정보 설정
        int userDTO = mdao.login(userid, userpw);
        
  

        // HttpSession을 사용하여 세션에 UserDTO 저장
        HttpSession session = request.getSession();
        session.setAttribute("user", userDTO);
        
        if (userDTO > 0) {
            // 사용자 정보가 있는 경우 세션에 저장
            session.setAttribute("user", userDTO);
            
            // session값 print
            System.out.println(userDTO);
            System.out.println();
            System.out.println("성공");
            forward.setRedirect(true);
            forward.setPath("/mall/jsp/main.jsp");
        } else {
            // 사용자 정보가 없는 경우 로그인 실패 처리
        	System.out.println("실패");
            forward.setRedirect(true);
            forward.setPath("/mall/jsp/login.jsp");
        }

        return forward;
    }
		
		
}
