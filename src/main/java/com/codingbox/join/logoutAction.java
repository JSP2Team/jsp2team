package com.codingbox.join;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.codingbox.action.Action;
import com.codingbox.action.ActionForward;

public class logoutAction implements Action{

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) {
		
		/* 로그아웃 실행 */
		HttpSession session = request.getSession();
		 // 모든세션정보 삭제
		session.invalidate();

		PrintWriter out = null;
		try {
			out = response.getWriter();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		out.println("<script>document.location.href='main.jsp';</script>");
		
		return null;
	}

}
