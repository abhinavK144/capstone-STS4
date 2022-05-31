package com.presentation;

import java.sql.SQLException;
import java.util.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;


import com.dao.ProductDao;
import com.model.Product;
import com.service.ProductService;
import com.service.productInterface;
@Controller
public class ProductController {
	
	
	@Autowired
	productInterface  productService;
	public void setProductService(ProductService productService) {
		this.productService = productService;
	}
	public ProductController() {
		//System.out.println("MainApp init");
	}
	@RequestMapping("/getAllProduct")
	ModelAndView show() throws SQLException
	{
		//System.out.println("Show All Product");
	//	List prd=productService.displayAllproductService();
		return new ModelAndView("listProduct","products",productService.displayAllproductService());	
	}
	
	@RequestMapping(value="/add",method=RequestMethod.POST)
	public String addProduct(@ModelAttribute("product") Product product,ModelMap map) throws SQLException
	{
		productService.addProductService(product);
		map.addAttribute("products",productService.displayAllproductService());
		return "listProduct";
	}
	
	@RequestMapping(value="/newProduct",method=RequestMethod.GET)
	public String newProduct(ModelMap map) throws SQLException{
		
		map.addAttribute("product", new Product());
		map.addAttribute("products", productService.displayAllproductService());
			
		return "addProduct";
	}
	
	@RequestMapping(value="/delete",method=RequestMethod.GET)
	public String deleteProduct(@RequestParam("id") int pid,ModelMap map) throws SQLException{
		
		productService.delProductService(pid);
		
		map.addAttribute("products", productService.displayAllproductService());
			
		return "listProduct";
	}
	
	@RequestMapping(value="/update",method=RequestMethod.POST)
	public String upateProduct(@ModelAttribute("product") Product product,ModelMap map) throws SQLException{
		//productService.updateProductService(product);
		System.out.println("in update controller");
		System.out.println(product.getPname());
		map.addAttribute("product",productService.updateProductService1(product));
		map.addAttribute("products", productService.displayAllproductService());
		return "listProduct";
	}
	
	@RequestMapping(value="/edit/{id}",method=RequestMethod.GET)
	public String newCustomer(@PathVariable("id") int pid,ModelMap map) throws SQLException{
		System.out.println(pid);
		
		map.addAttribute("product", productService.searchProductService(pid));
		//map.addAttribute("product",productService.updateProductService(pid));

		map.addAttribute("products", productService.displayAllproductService());
			
		return "editProduct";
	}

	

}
