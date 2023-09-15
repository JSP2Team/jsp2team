package com.codingbox.join;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.codingbox.DAO.UserDAO;
import com.codingbox.DTO.UserDTO;
import com.codingbox.action.Action;
import com.codingbox.action.ActionForward;

public class FindPwAction implements Action{
	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) {
        ActionForward forward = new ActionForward();
        try {
            request.setCharacterEncoding("UTF-8");
            UserDTO udto = new UserDTO();
            udto.setUserid(request.getParameter("userid"));
            udto.setUser_name(request.getParameter("user_name"));
            udto.setUsertel(request.getParameter("usertel"));

            UserDAO udao = new UserDAO();
            String user_pw = udao.findPw(udto);
            System.out.println(user_pw);

            if (user_pw == null) {
                // 사용자에게 메시지를 표시하고 findIdResult.jsp 페이지로 리다이렉트 (실패)
                forward.setRedirect(true);
                forward.setPath("findPwResult.jsp?message=failure");
            } else {
                // 사용자 아이디를 세션에 저장하고 findIdResult.jsp 페이지로 리다이렉트 (성공)
                request.getSession().setAttribute("userpw", user_pw);
                forward.setRedirect(true);
                forward.setPath("findPwResult.jsp?message=success");
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return forward;
    }
}
