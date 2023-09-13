package com.codingbox.reply;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.codingbox.DAO.ReplyDAO;
import com.codingbox.action.Action;
import com.codingbox.action.ActionForward;

public class DeleteReplyAction implements Action{

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) {
		ActionForward forward = new ActionForward();
		ReplyDAO bdao = new ReplyDAO();

//		int prod_key = Integer.parseInt(request.getParameter("prod_key"));
		int pr_key = Integer.parseInt(request.getParameter("pr_key")) ;
		
		
		
		if( bdao.deleteReply(pr_key) ) {
			forward.setRedirect(true);
			forward.setPath("/board/detail.jsp");
		}
		
		return forward;
	}

}
