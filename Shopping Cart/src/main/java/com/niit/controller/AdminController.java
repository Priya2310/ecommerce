package com.niit.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
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

@Controller
@RequestMapping("/manage")
public class AdminController 
{
	@Autowired CategoryDAO categoryDAO;
	@Autowired SupplierDAO supplierDAO;
	@Autowired ProductDAO productDAO;
	@Autowired HttpSession session;

private static  Logger log = LoggerFactory.getLogger(AdminController.class);
	
	
	
	@RequestMapping("/Categories")
	public ModelAndView manageCategories()
	{
		
		log.debug("Starting of the method manageCategories");
		
		ModelAndView mv = new ModelAndView("admin/Category");
		mv.addObject("isAdminClickedCategories", "true");
		mv.addObject("isAdmin", "true");
		List<Category> categoryList=categoryDAO.list();
		
		session.setAttribute("categoryList", categoryList);
		log.debug("End of the method manageCategories");
		return mv;
		
		
	}
	@RequestMapping("/Supplier")
	public ModelAndView manageSuppliers()
	{
		log.debug("Starting of the method manageSuppliers");
		ModelAndView mv = new ModelAndView("admin/Supplier");
		mv.addObject("isAdmin", "true");
		mv.addObject("isAdminClickedSuppliers", "true");
		
		List<Supplier> supplierList=supplierDAO.list();
		session.setAttribute("supplierList", supplierList);
		log.debug("Ending of the method manageSuppliers");
		return mv;
		
		
	}
	@RequestMapping("/Products")
	public String manageProducts(Model model)
	{
		log.debug("Starting of the method manageProducts");
		
		model.addAttribute("isAdmin", "true");
		model.addAttribute("isAdminClickedProducts", "true");
		model.addAttribute("product", new Product());
		model.addAttribute("productList", productDAO.list());
		List<Category> categoryList=categoryDAO.list();
		List<Supplier> supplierList=supplierDAO.list();
		model.addAttribute("categoryList", categoryList);
		model.addAttribute("supplierList", supplierList);
		log.debug("Ending of the method manageProducts");
		return "/admin/Product";
		
		
	}

}
