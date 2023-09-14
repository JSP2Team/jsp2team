package com.codingbox.sign;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.codingbox.action.ActionForward;


@WebServlet("/*.si")
public class SignFrontController extends HttpServlet{

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
		
		if(requestURI.equals("/mall/sign.si") ) {
			forward = new ActionForward(false, "/mall/Ordercomplete.jsp");
		}
//		 페이지 이동에 대한 일괄처리
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
