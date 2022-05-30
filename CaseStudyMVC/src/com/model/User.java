package com.model;

public class User {
	private String FName;
	private String LName;
	private String Phone_No;
	private String Email_Id;
	private String Address;
	private String Password;
//	private String role;
	

//	public String getRole() {
//		return role;
//	}
//
//	public void setRole(String role) {
//		this.role = role;
//	}

	public User() {
		super();
	}

public User(String FName,String LName, String Phone_No,String Email_Id ,String Address, String Password) {
		super();
		this.FName = FName;
		this.LName = LName;
		this.Phone_No = Phone_No;
		this.Email_Id = Email_Id;
		this.Address = Address;
		this.Password = Password;
	//	this.role = role;
		
	}
	
	public String getEmail_Id() {
		return Email_Id;
	}
	public void setEmail_Id(String Email_Id) {
		this.Email_Id = Email_Id;
	}
	public String getFName() {
		return FName;
	}
	public void setFName(String FName) {
		this.FName = FName;
	}
	public String getLName() {
		return LName;
	}
	public void setLName(String LName) {
		this.LName = LName;
	}
	public String getPhone_No() {
		return Phone_No;
	}
	public void setPhone_No(String Phone_No) {
		this.Phone_No = Phone_No;
	}
	public String getAddress() {
		return Address;
	}
	public void setAddress(String Address) {
		this.Address = Address;
	}
	public String getPassword() {
		return Password;
	}
	public void setPassword(String Password) {
		this.Password = Password;
	}
	@Override
	public String toString() {
		return "User [FName=" + FName + ", LName=" + LName + ", Phone_No=" + Phone_No + ", Address=" + Address
				+ ", Password=" + Password + ", Email_Id=" + Email_Id + "]";
	}
	
	
}
