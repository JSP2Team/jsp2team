package com.codingbox.join;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.codingbox.DAO.MyBatisDAO;
import com.codingbox.DTO.UserDTO;
import com.codingbox.action.Action;
import com.codingbox.action.ActionForward;

public class loginOkAction implements Action{

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) {
        ActionForward forward = new ActionForward();
        MyBatisDAO mdao = new MyBatisDAO();

        String userid = request.getParameter("userid");
        String userpw = request.getParameter("userpw");

        // MyBatis를 사용하여 데이터베이스에서 사용자 정보를 가져옴
        UserDTO user = mdao.getUserInfo(userid);

        HttpSession session = request.getSession();
        
        if (user != null) {
            // 사용자 정보가 있는 경우 세션에 저장
            session.setAttribute("user", user);
            
            // session값 print
            System.out.println(user.getUser_name());
            System.out.println(user.getUsertel());
            System.out.println(user.getEmail());

            System.out.println("성공");
            forward.setRedirect(true);
            forward.setPath("/mall/jsp/main.jsp");
        } else {
            // 사용자 정보가 없는 경우 로그인 실패 처리
            forward.setRedirect(true);
            forward.setPath("/mall/jsp/login.jsp");
        }

        return forward;
    }
		
		
}
