package com.codingbox.DTO;

public class OrderDTO {
	// 주문 order table DTO
	private int order_key;
	private String user_id;
	private int prod_key;
	private int order_cnt;
	private int order_price;
	private String order_name;
	private String order_zipcode;
	private String order_addr;
	private String order_addr_detail;
	private String order_tel;
	private String order_req;
	private String order_rdate;
	
	// 상품 product table DTO
	private String prod_name;
	private int prod_price;
	
	// getter, setter
	public int getOrder_key() {
		return order_key;
	}
	public void setOrder_key(int order_key) {
		this.order_key = order_key;
	}
	public String getUser_id() {
		return user_id;
	}
	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}
	public int getProd_key() {
		return prod_key;
	}
	public void setProd_key(int prod_key) {
		this.prod_key = prod_key;
	}
	public int getOrder_cnt() {
		return order_cnt;
	}
	public void setOrder_cnt(int order_cnt) {
		this.order_cnt = order_cnt;
	}
	public int getOrder_price() {
		return order_price;
	}
	public void setOrder_price(int order_price) {
		this.order_price = order_price;
	}
	public String getOrder_name() {
		return order_name;
	}
	public void setOrder_name(String order_name) {
		this.order_name = order_name;
	}
	public String getOrder_zipcode() {
		return order_zipcode;
	}
	public void setOrder_zipcode(String order_zipcode) {
		this.order_zipcode = order_zipcode;
	}
	public String getOrder_addr() {
		return order_addr;
	}
	public void setOrder_addr(String order_addr) {
		this.order_addr = order_addr;
	}
	public String getOrder_addr_detail() {
		return order_addr_detail;
	}
	public void setOrder_addr_detail(String order_addr_detail) {
		this.order_addr_detail = order_addr_detail;
	}
	public String getOrder_tel() {
		return order_tel;
	}
	public void setOrder_tel(String order_tel) {
		this.order_tel = order_tel;
	}
	public String getOrder_req() {
		return order_req;
	}
	public void setOrder_req(String order_req) {
		this.order_req = order_req;
	}
	public String getOrder_rdate() {
		return order_rdate;
	}
	public void setOrder_rdate(String order_rdate) {
		this.order_rdate = order_rdate;
	}
	public String getProd_name() {
		return prod_name;
	}
	public void setProd_name(String prod_name) {
		this.prod_name = prod_name;
	}
	public int getProd_price() {
		return prod_price;
	}
	public void setProd_price(int prod_price) {
		this.prod_price = prod_price;
	}
	
	
	
	
}
