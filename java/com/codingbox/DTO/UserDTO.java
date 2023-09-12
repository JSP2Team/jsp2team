package com.codingbox.DTO;

public class UserDTO {

	
	private String userid;
	private String userpw;
	private String usertel;
	private String username ;
	private String email;
	public String getUserid() {
		return userid;
	}
	public void setUserid(String userid) {
		this.userid = userid;
	}
	public String getUserpw() {
		return userpw;
	}
	public void setUserpw(String userpw) {
		this.userpw = userpw;
	}
	public String getUsertel() {
		return usertel;
	}
	public void setUsertel(String usertel) {
		this.usertel = usertel;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getRegdate() {
		return regdate;
	}
	public void setRegdate(String regdate) {
		this.regdate = regdate;
	}
	public boolean isWithdrawl() {
		return withdrawl;
	}
	public void setWithdrawl(boolean withdrawl) {
		this.withdrawl = withdrawl;
	}
	private String regdate;
	private boolean withdrawl;
	
}


