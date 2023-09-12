package com.codingbox.web.dao;
 
 
// 데이터의 전달을 담당하는 클래스 - DTO
public class MemberBean 
{
    private String userid;            // 아이디
    private String userpw;     // 비밀번호
    private String email;        // 이메일

    public String getId() {return userid;}
    public void setId(String userid) {this.userid = userid;}
    
    public String getPassword() {return userpw;}
    public void setPassword(String userpw) {this.userpw = userpw;}
    
    public String getMail() {return email;}
    public void setMail(String email) {this.email = email;}
    
}