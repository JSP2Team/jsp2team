package com.codingbox.join;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import com.codingbox.action.ActionForward;
import com.codingbox.sign.SignAction;

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
		System.out.println(requestURI);
		if(requestURI.equals("/mall/jsp/join.bo")) {
			forward = new JoinAction().execute(request, response);
		} else if(requestURI.equals("/mall/jsp/login.bo")) {
			forward = new ActionForward(false, "/mall/jsp/login.jsp");
		} else if(requestURI.equals("/mall/jsp/findid.bo")) {
			forward = new FindIdAction().execute(request, response);
		} else if(requestURI.equals("/mall/jsp/findpw.bo")) {
			forward = new FindPwAction().execute(request, response);
		} else if(requestURI.equals("/mall/jsp/loginOk.bo")) {
			forward = new loginOkAction().execute(request, response);
		} else if(requestURI.equals("/mall/jsp/logout.bo")) {
			forward = new logoutAction().execute(request, response);
		} else if(requestURI.equals("/mall/jsp/sign.bo") ) {
			forward = new SignAction().execute(request, response); // 주문 테이블에 Insert
		} else if (requestURI.equals("/mall/jsp/signForward.bo") ) {
			forward = new ActionForward(false,"/mall/jsp/sign.jsp"); 
			// 바로 구매 이동 / USERS 테이블 이름(user_name), 휴대폰(user_tel), 이메일(email), 상품번호(prod_key), 수량(order_cnt)
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

