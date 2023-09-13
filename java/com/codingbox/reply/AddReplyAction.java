package com.codingbox.reply;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.codingbox.DAO.ReplyDAO;
import com.codingbox.DTO.ReplyDTO;
import com.codingbox.action.Action;
import com.codingbox.action.ActionForward;



public class AddReplyAction implements Action{

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) {
		ActionForward forward = new ActionForward();
		ReplyDAO bdao = new ReplyDAO();
		ReplyDTO reply = new ReplyDTO();
		
		
		reply.setPr_key(Integer.parseInt(request.getParameter("pr_key")));
		reply.setUser_id(request.getParameter("user_id"));
		reply.setPr_content(request.getParameter("pr_content"));
		reply.setPr_rdate(request.getParameter("pr_rdate"));
		
		if( bdao.addReply(reply) ) {
			forward.setRedirect(true);
			forward.setPath("/mall/detail.jsp");
		}else {
			try {
				forward.setRedirect(false);
				PrintWriter out = ((ServletResponse) response).getWriter();
				out.println("<script>alert('오류발생'); history.back();</script>");	// java script문법 사용가능
			} catch (IOException e) {
				e.printStackTrace();
			}
		}
		
		return forward;
	}


	








}











