package com.model;

public class Product {
int pid;
String pimage;
int pcategory;


public int getPcategory() {
	return pcategory;
}
public void setPcategory(int pcategory) {
	this.pcategory = pcategory;
}
public String getPimage() {
	return pimage;
}
public void setPimage(String pimage) {
	this.pimage = pimage;
}
public int getPid() {
	return pid;
}
public void setPid(int pid) {
	this.pid = pid;
}
public String getPname() {
	return pname;
}
public void setPname(String pname) {
	this.pname = pname;
}
public double getPrice() {
	return price;
}
public void setPrice(double price) {
	this.price = price;
}

public Product(int pid, String pname, double price,String pimage) {
	super();
	this.pid = pid;
	this.pname = pname;
	this.price = price;
	this.pimage=pimage;
}
public Product(int pid, String pname, double price) {
	super();
	this.pid = pid;
	this.pname = pname;
	this.price = price;
	
}
String pname;
@Override
public String toString() {
	return "Product [pid=" + pid + ", pimage=" + pimage + ", pname=" + pname + ", price=" + price + "]";
}
double price;
public Product() {
	System.out.println("Product module");
}

}
