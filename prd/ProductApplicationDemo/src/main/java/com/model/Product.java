package com.model;

public class Product {
	int productid;
	String productname;
	double price;


	String stock;
	String author;
	String category;
	String language;
	String edition;
	String publisher;
	String description;

	public int getProductid() {
		return productid;
	}
	public void setProductid(int productid) {
		this.productid = productid;
	}
	public String getProductname() {
		return productname;
	}
	public void setProductname(String productname) {
		this.productname = productname;
	}
	public double getPrice() {
		return price;
	}
	public void setPrice(double price) {
		this.price = price;
	}

	public String getStock() {
		return stock;
	}
	public void setStock(String stock) {
		this.stock = stock;
	}
	public String getAuthor() {
		return author;
	}
	public void setAuthor(String author) {
		this.author = author;
	}
	public String getCategory() {
		return category;
	}
	public void setCategory(String category) {
		this.category = category;
	}
	public String getLanguage() {
		return language;
	}
	public void setLanguage(String language) {
		this.language = language;
	}
	public String getEdition() {
		return edition;
	}
	public void setEdition(String edition) {
		this.edition = edition;
	}
	public String getPublisher() {
		return publisher;
	}
	public void setPublisher(String publisher) {
		this.publisher = publisher;
	}
	

	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
		
	@Override
	public String toString() {
		return "Product [productid=" + productid + ", productname=" + productname + ", price=" + price + ", stock="+ stock + ",author"+ author +
				",category" + category	+",language"+ language	+ ",edition"+ edition + ",publisher=" + publisher + ",product_img" + product_img +",description"+ description ;
	}
	public Product(int productid, String productname, double price, String stock, String author, String category,String language,String edition,String publisher,String product_img) {
		super();
		this.productid = productid;
		this.productname = productname;
		this.price = price;
		this.stock=stock;
		this.author=author;
		this.category=category;
		this.edition=edition;
		this.language=language;
		this.publisher=publisher;
		this.description=description;

	}


	public Product() {
		System.out.println("Product module");
	}

}
