 package com.model;

public class Product {
public int getProduct_id() {
	return product_id;
}
public void setProduct_id(int product_id) {
	this.product_id = product_id;
}
public int getCatego_id() {
	return catego_id;
}
public void setCatego_id(int Catego_id) {
	this.catego_id = Catego_id;
}
public String getProduct_name() {
	return product_name;
}
public void setProduct_name(String product_name) {
	this.product_name = product_name;
}
public String getProduct_description() {
	return product_description;
}
public void setProduct_description(String product_description) {
	this.product_description = product_description;
}
public double getProduct_price() {
	return product_price;
}
public void setProduct_price(double product_price) {
	this.product_price = product_price;
}
public String getProduct_stock() {
	return product_stock;
}
public void setProduct_stock(String product_stock) {
	this.product_stock = product_stock;
}
@Override
public String toString() {
	return "Product [product_id=" + product_id + ",catego_id = "+catego_id+", product_name=" + product_name + ","
			+ "product_description = "+product_description +", product_price=" + product_price + ", "
					+ "product_stock = "+product_stock+"]";
}
public Product(int product_id,int catego_id, String product_name, 
		String product_description, double product_price, String product_stock ) 
{
	super();
	this.product_id = product_id;
	this.catego_id = catego_id;
	this.product_name = product_name;
	this.product_description = product_description;
	this.product_price = product_price;
	this.product_stock = product_stock;
	
}
String product_name, product_description, product_stock;
double product_price;
int product_id;
int catego_id;

public Product() {
	System.out.println("Product module");
}

}
