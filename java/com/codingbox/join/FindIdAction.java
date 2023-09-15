package com.codingbox.join;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.codingbox.DAO.UserDAO;
import com.codingbox.DTO.UserDTO;
import com.codingbox.action.Action;
import com.codingbox.action.ActionForward;

public class FindIdAction implements Action{

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) {
        ActionForward forward = new ActionForward();
        try {
            request.setCharacterEncoding("UTF-8");
            UserDTO udto = new UserDTO();
            udto.setUser_name(request.getParameter("user_name"));
            udto.setUsertel(request.getParameter("usertel"));

            UserDAO udao = new UserDAO();
            String user_id = udao.findId(udto);
            System.out.println(user_id);

            if (user_id == null) {
                // 사용자에게 메시지를 표시하고 findIdResult.jsp 페이지로 리다이렉트 (실패)
                forward.setRedirect(true);
                forward.setPath("findIdResult.jsp?message=failure");
            } else {
                // 사용자 아이디를 세션에 저장하고 findIdResult.jsp 페이지로 리다이렉트 (성공)
                request.getSession().setAttribute("userid", user_id);
                forward.setRedirect(true);
                forward.setPath("findIdResult.jsp?message=success");
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return forward;
    }
}
