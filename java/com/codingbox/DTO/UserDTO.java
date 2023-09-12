package com.codingbox.DTO;

public class UserDTO {

	
	private String userid;
	private String userpw;
	private String email;
	private String user_name ;
	private String usertel;
	private String username ;
	private String userphone;
	private String email;
	private String regdate;
	private boolean withdrawl;
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
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getUserphone() {
		return userphone;
	}
	public void setUserphone(String userphone) {
		this.userphone = userphone;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getUser_name() {
		return user_name;
	}
	public void setUsername(String user_name) {
		this.user_name = user_name;
	}
	public String getUsertel() {
		return usertel;
	}
	public void setUsertel(String usertel) {
		this.usertel = usertel;
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
	
}

}
