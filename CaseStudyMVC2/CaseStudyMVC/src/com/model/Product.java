package com.model;

public class Product {
	
int Product_id;
public int getProduct_id() {
	return Product_id;
}
public void setProduct_id(int product_id) {
	Product_id = product_id;
}
public int getCategory_id() {
	return Category_id;
}
public void setCategory_id(int category_id) {
	Category_id = category_id;
}
public String getProduct_name() {
	return Product_name;
}
public void setProduct_name(String product_name) {
	Product_name = product_name;
}
public String getProduct_description() {
	return Product_description;
}
public void setProduct_description(String product_description) {
	Product_description = product_description;
}
public double getProduct_price() {
	return Product_price;
}
public void setProduct_price(double product_price) {
	Product_price = product_price;
}

int Category_id;
public Product(int product_id, int category_id, String product_name, String product_description, double product_price,
		String pimage) {
	super();
	Product_id = product_id;
	Category_id = category_id;
	Product_name = product_name;
	Product_description = product_description;
	Product_price = product_price;
	this.pimage = pimage;
}

String Product_name;
String Product_description;
double Product_price;
String pimage;



public String getPimage() {
	return pimage;
}
public void setPimage(String pimage) {
	this.pimage = pimage;
}


@Override
public String toString() {
	return "Product [Product_id=" + Product_id + ", Category_id=" + Category_id + ", Product_name=" + Product_name
			+ ", Product_description=" + Product_description + ", Product_price=" + Product_price + ", pimage=" + pimage
			+ "]";
}

public Product() {
	System.out.println("Product module");
}

}
