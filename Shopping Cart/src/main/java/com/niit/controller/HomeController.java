package com.niit.controller;


import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.niit.shoppingcart.dao.CategoryDAO;
import com.niit.shoppingcart.dao.ProductDAO;
import com.niit.shoppingcart.dao.SupplierDAO;
import com.niit.shoppingcart.domain.Category;
import com.niit.shoppingcart.domain.Product;
import com.niit.shoppingcart.domain.Supplier;
import com.niit.shoppingcart.domain.User;

@Controller
public class HomeController {
	
	@Autowired HttpSession session;
	@Autowired CategoryDAO categoryDAO;
	@Autowired Category category;
	@Autowired ProductDAO productDAO;
	@Autowired Product product;
	@Autowired SupplierDAO supplierDAO;
	@Autowired Supplier supplier;

	@RequestMapping({"/","/Home"})
	public ModelAndView goToHomePage()
	{
		ModelAndView mv= new ModelAndView("/Home");
		
		List<Category> categoryList = categoryDAO.list();
		mv.addObject("categoryList", categoryList);
		mv.addObject("category", category);
		return mv;
	}
	
	@RequestMapping("/Login")
	public String loginPage()
	{
		//model.addAttribute("isUserLoggedIn", "true");
		return "Login";
		
	}
	
	
	@RequestMapping("/Products")
	public ModelAndView productPage()
	{
		ModelAndView mv= new ModelAndView("/ProductsList2");
		List<Product> productList= productDAO.list();
		mv.addObject("productList", productList);
		mv.addObject("product", product);
		return mv;
	}
}
