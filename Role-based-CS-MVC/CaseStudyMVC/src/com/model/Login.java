package com.model;

public class Login {

	public Login() {
		// TODO Auto-generated constructor stub
	}
	String Email_Id,Password,role;
	public String getRole() {
		return role;
	}
	public void setRole(String role) {
		this.role = role;
	}
	public String getEmail_Id() {
		return Email_Id;
	}
	public void setUname(String Email_Id) {
		this.Email_Id= Email_Id;
	}
	public String getPassword() {
		return Password;
	}
	public void setPwd(String Password) {
		this.Password= Password;
	}
	public Login(String u,String p)
	{
		Email_Id=u;
		Password=p;
	}
	@Override
	public String toString() {
		return "Login [Email_Id =" + Email_Id + ", Password=" + Password+ ", role=" + role + "]";
	}
	public void setEmail_Id(String string) {
		// TODO Auto-generated method stub
		
	}
	public void setPassword(String string) {
		// TODO Auto-generated method stub
		
	}
	
	

}
