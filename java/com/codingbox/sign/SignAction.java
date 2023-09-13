package com.codingbox.sign;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.codingbox.DAO.OrderDAO;
import com.codingbox.DTO.OrderDTO;
import com.codingbox.action.Action;
import com.codingbox.action.ActionForward;

public class SignAction implements Action{

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) {
		ActionForward forward = new ActionForward();
		OrderDAO odao = new OrderDAO();
		OrderDTO odto = new OrderDTO();
		
		odto.setOrder_key(Integer.parseInt(request.getParameter("order_key")));
		odto.setUser_id(request.getParameter("user_id"));
		odto.setProd_key(Integer.parseInt(request.getParameter("prod_key")));
		odto.setOrder_cnt(Integer.parseInt(request.getParameter("order_cnt")));
		odto.setOrder_price(Integer.parseInt(request.getParameter("order_price")));
		odto.setOrder_name(request.getParameter("order_name"));
		odto.setOrder_zipcode(request.getParameter("order_zipcode"));
		odto.setOrder_addr(request.getParameter("order_addr"));
		odto.setOrder_addr_detail(request.getParameter("order_addr_detail"));
		odto.setOrder_tel(request.getParameter("order_tel"));
		odto.setOrder_req(request.getParameter("order_req"));
		odto.setOrder_rdate(request.getParameter("order_rdate"));
		odto.setProd_name(request.getParameter("prod_name"));
		odto.setProd_price(Integer.parseInt(request.getParameter("prod_price")));
		
		forward.setRedirect(true);
		if( odao.sign(odto)) {
			forward.setPath("/user/loginview.jsp");
		}else {
			forward.setPath("/index.jsp");
		}
			
			
		
		
		return forward;
	}

}
