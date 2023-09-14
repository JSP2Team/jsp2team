package com.codingbox.web.board;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.codingbox.action.ActionForward;
import com.codingbox.reply.AddReplyAction;
import com.codingbox.reply.DeleteReplyAction;
import com.codingbox.reply.UpdateReplyAction;


@WebServlet("*.do")
public class BoardFrontController extends HttpServlet{

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doProcess(req, resp);
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doProcess(req, resp);
	}
	
	protected void doProcess(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String requestURI = request.getRequestURI();
		String responseURI = null;
		ActionForward forward = null;
		System.out.println(requestURI);
		switch ( requestURI ) {
		case "/mall/detail.do":
			forward = new ActionForward(true, "/mall/detail.jsp");	// 화면 이동만
			break;

		case "/mall/AddReply.do":
			forward = new AddReplyAction().execute(request, response);
			// 게시글 등록
			// dao, addReply
			// xml, addReply
			break;
		case "/board/UpdateReply.do":
			forward = new UpdateReplyAction().execute(request, response);
			break;
		case "/board/DeleteReply.do":
			forward = new DeleteReplyAction().execute(request, response);
			break;
		}
		
		// /board/BoardWriteOK.bo
		// insert, BoardWriteOkAction.java
		// DAO : insertBoard()
		// board.xml : insertBoard
		
		
		// /board/boardList.bo
		// /board/boardList.jsp
		
		
		// 페이지 이동에 대한 일괄처리
		if( forward != null ) {
			if( forward.isRedirect() ) {
				// redirect 방식으로 페이지 이동
				response.sendRedirect(forward.getPath());
			}else {
				// forward 방식으로 패이지 이동
				RequestDispatcher disp = request.getRequestDispatcher(forward.getPath());
				disp.forward(request, response);
			}
		}
	}
}
