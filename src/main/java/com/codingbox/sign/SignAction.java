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
		
//		odto.setOrder_key(Integer.parseInt(request.getParameter("order_key"))); //주문번호
//		odto.setUser_id(request.getParameter("user_id"));						//회원아이디
//		odto.setProd_key(Integer.parseInt(request.getParameter("prod_key")));	//상품 고유번호
		odto.setOrder_cnt(Integer.parseInt(request.getParameter("order_cnt")));	//상품 개수
//		odto.setOrder_price(Integer.parseInt(request.getParameter("order_price")));//총 결제금액
		odto.setOrder_name(request.getParameter("order_name"));						//수령인
		odto.setOrder_zipcode(request.getParameter("order_zipcode"));				//우편번호
		odto.setOrder_addr(request.getParameter("order_addr"));						//주소
		odto.setOrder_addr_detail(request.getParameter("order_addr_detail"));		//상세주소
		odto.setOrder_tel(request.getParameter("order_tel"));					//연락처
		odto.setOrder_req(request.getParameter("order_req"));						//배송지 요청사항

		forward.setRedirect(true);
		if( odao.sign(odto)) {
			forward.setPath("/mall/jsp/Ordercomplete.jsp");
		}else {
			forward.setPath("/mall/jsp/sign.jsp");
		}
		return forward;
	}
}
