package com.model;

public class Login {

	public Login() {
		// TODO Auto-generated constructor stub
	}
	String Email_Id,Password;
	public String getEmail_Id() {
		return Email_Id;
	}
	public void setEmail_Id(String Email_Id) {
		this.Email_Id = Email_Id;
	}
	public String getPassword() {
		return Password;
	}
	public void setPassword(String Password) {
		this.Password = Password;
	}
	public Login(String u,String p)
	{
		Email_Id=u;
		Password=p;
	}
	@Override
	public String toString() {
		return "Login [Email_Id=" + Email_Id+ ", Password=" + Password+ "]";
	}
	

}
