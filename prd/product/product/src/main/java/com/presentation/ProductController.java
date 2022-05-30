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
import com.service.ProductInterface;
@Controller
public class ProductController {
	
	
	@Autowired
	ProductInterface  productService;
	public void setProductService(ProductService productService) {
		this.productService = productService;
	}
	public ProductController() {
		System.out.println("MainApp init");
	}
	@RequestMapping("/listProduct")
	ModelAndView show() throws SQLException
	{
		System.out.println("Show All Product");
	//	List prd=productService.displayAllproductService();
		return new ModelAndView("listProduct","product",productService.displayAllproductService());
	
	}
	
	@RequestMapping("/addProduct")
	ModelAndView add()
	{
		System.out.println("Enter product details");
		Scanner sr=new Scanner(System.in);
		int product_id=sr.nextInt();
		String product_name=sr.next();
		int product_price =sr.nextInt();
		int catego_id=sr.nextInt();
		String product_description=sr.next();
		String product_stock=sr.next();
		Product p= new Product(product_id, catego_id, product_name, product_description, product_price, product_stock );
		return new ModelAndView ("addProduct","product",productService.addProductService(p));
	}

	

}
