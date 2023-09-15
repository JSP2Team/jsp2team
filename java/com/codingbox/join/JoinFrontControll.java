package com.codingbox.join;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import com.codingbox.action.ActionForward;

@WebServlet("*.bo")
public class JoinFrontControll extends HttpServlet{
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) 
			throws ServletException, IOException {
		doProcess(req, resp);
	}

	private void doProcess(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
		String requestURI = request.getRequestURI();
		String responseURI = null;
		ActionForward forward = null;
		
		if(requestURI.equals("/mall/jsp/join.bo")) {
			forward = new JoinAction().execute(request, response);
		} else if(requestURI.equals("/mall/jsp/login.bo")) {
			forward = new ActionForward(false, "/mall/jsp/login.jsp");
		} else if(requestURI.equals("/mall/jsp/loginOk.bo")) {
			forward = new loginOkAction().execute(request, response);
		} else if(requestURI.equals("/mall/jsp/logout.bo")) {
			forward = new logoutAction().execute(request, response);
		}
		
		// 일괄처리
		if( forward != null ) {
			if( forward.isRedirect() ) {
				// redirect 방식으로 페이지 이동
				response.sendRedirect(forward.getPath());
			} else {
				// forward 방식으로 페이지 이동
				RequestDispatcher disp 
					= request.getRequestDispatcher( forward.getPath() );
				disp.forward(request, response);
			}
			
		}
		
	}
	
	
}

