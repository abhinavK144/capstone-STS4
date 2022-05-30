
package com.presentation;

import java.sql.SQLException;
import java.util.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.dao.ProductDao;
import com.model.Product;
import com.service.ProductService;
import com.service.productInterface;
@Controller
public class MainApp {
	
	
	@Autowired
	productInterface  productService;
	public void setProductService(ProductService productService) {
		this.productService = productService;
	}
	public MainApp() {
		
		System.out.println("MainApp init");
	}
	
	
	
	@RequestMapping("/getAllProduct")
	ModelAndView show() throws SQLException
	{
		System.out.println("Show All Product");
		return new ModelAndView("listProduct","product",productService.displayAllproductService());
	
	}
	
	@RequestMapping("/addProduct")
	ModelAndView add()
	{
		System.out.println("Enter product details");
		Scanner sr=new Scanner(System.in);
		
		int productid=sr.nextInt();
		String productname=sr.next();
		double price=sr.nextDouble();
		String stock=sr.next();
		String author=sr.next();
		String category=sr.next();
		String language=sr.next();
		String edition=sr.next();
		String publisher=sr.next();
		String description=sr.next();
		Product p=new Product(productid,productname,price,stock,author,category,language,edition,publisher,description);
		return new ModelAndView ("addProduct","prd",productService.addProductService(p));
	}

	

}

