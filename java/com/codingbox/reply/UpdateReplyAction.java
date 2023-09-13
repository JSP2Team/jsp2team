package com.codingbox.reply;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.codingbox.DAO.ReplyDAO;
import com.codingbox.action.Action;
import com.codingbox.action.ActionForward;

public class UpdateReplyAction implements Action{

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) {
		ActionForward forward = new ActionForward();
		ReplyDAO bdao = new ReplyDAO();
		
//		int prod_key = Integer.parseInt(request.getParameter("prod_key"));
		
		int pr_key = Integer.parseInt(request.getParameter("pr_key"));
		String pr_content = request.getParameter("reply" + pr_key);
		
		if( bdao.updateReply(pr_key, pr_content) ) {
			// 댓글 수정 성공시
			forward.setRedirect(true);
			forward.setPath("/mall/detail.jsp");
			
		}else {
			// 댓글 수정 실패시
			try {
				forward.setRedirect(false);
				PrintWriter out = response.getWriter();
				out.println("<script>alert('댓글 수정 실패'); history.back();</script>");
			}catch(IOException e){
				e.printStackTrace();
			}
		}
		
		
		
		return forward;
	}

}
