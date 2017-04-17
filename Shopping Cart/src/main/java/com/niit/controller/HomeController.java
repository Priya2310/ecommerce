package com.niit.controller;


import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller

public class HomeController {

	@RequestMapping("/")
	public String goToHomePage()
	{
		return "Home";
	}
	
	@RequestMapping("/Login")
	public String loginPage(Model model)
	{
		model.addAttribute("isLoginClicked", "true");
		return "Home";
		
	}
	
	@RequestMapping("/Register")
	public String registerPage(Model model)
	{
		model.addAttribute("isRegisterClicked", "true");
		return "Home";
	}
	
	@RequestMapping("/Home")
	public String samplePage(Model model)
	{
		return "Sample";
		
	}
	@RequestMapping("/Products")
	public String productPage(Model model)
	{
		return "ProductList1";
		
	}
}
