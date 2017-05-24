package com.niit.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.niit.shoppingcart.dao.CategoryDAO;
import com.niit.shoppingcart.dao.ProductDAO;
import com.niit.shoppingcart.domain.Category;

@Controller
public class CategoryController {
	
	
	private static  Logger log = LoggerFactory.getLogger(CategoryController.class);

	//create category
	//fetch all categories
	//delete category
	//update category
	
	@Autowired  CategoryDAO categoryDAO;
	
	@Autowired  Category category;
	
	@Autowired ProductDAO productDAO;
	
	@Autowired  HttpSession session;
	
	
	
	@RequestMapping("/manage_category_add")
	public ModelAndView  createCategory(@RequestParam("id") String id, 
			@RequestParam("name") String name,  @RequestParam("description") String desc)
	{
		
		log.debug("Starting of the method create Categories");
		category.setId(id);
		category.setName(name);
		category.setDescription(desc);
		
		ModelAndView mv = new ModelAndView("redirect:/manageCategories");
		
		//Before calling save method, check whether the category id already exist in db or not
		
		//if it is does not exist, then only call save method
		
		if (categoryDAO.getById(id) !=null)
		{
			//category already exist
			mv.addObject("message", "Category already exist with the id " +id);
			return mv;
			
		}
		else  // actualy else is not required if return statement is there in if condition
		{
			categoryDAO.save(category);
			mv.addObject("message", "Category created successfuly ");
		}
		
		
		session.setAttribute("categoryList", categoryDAO.list());
		session.setAttribute("category", category);
		
	
		
		log.debug("End of the method create Categories");
		
		return mv;
		
	}
	
	@RequestMapping("/manage_category_delete/{id}")
	public ModelAndView deleteCategory(@PathVariable("id") String id)
	{
		
		log.debug("Starting of the method deleteCategory");
		log.debug("You are going to delete " + id);
		ModelAndView mv = new ModelAndView("redirect:/manageCategories");
		
		int size=productDAO.getAllProductsByCategoryId(id).size();
		if(size!=0)
		{
			log.debug("Few Products are there in this category");
			mv.addObject("message", "This category contains products you cannot delete this!");
			return mv;
		}
		 if(categoryDAO.delete(id)==true)
		 {
			 mv.addObject("message", "successfully deleted the category");
		 }
		 else
		 {
			 mv.addObject("message", "Not able to delete the category");
		 }
		 
		 	List<Category> categoryList=categoryDAO.list();
			session.setAttribute("categoryList", categoryList);
			session.setAttribute("category", category);
			
		
			log.debug("Ending of the method deleteCategory");
		 
		 return mv;
		
	}
	
	@RequestMapping("/manage_category_edit/{id}")
	public ModelAndView editCategory(@PathVariable("id") String id)
	{
		log.debug("Starting editCategory Function");
		log.info("You are editing a category with id: " +id);
		category=categoryDAO.getById(id);
		ModelAndView mv=new ModelAndView("forward:/manageCategories");
		mv.addObject("selectedCategory", category);
		mv.addObject("isAdminClickedEdit", "true");
		log.debug("Ending of editCategory function");
		return mv;
	}
	
	@RequestMapping("/manage_category_update")
	public ModelAndView  updateCategory(@RequestParam("id") String id, 
			@RequestParam("name") String name,  @RequestParam("description") String desc)
	{
		
		log.debug("Starting of the method update Categories");
		
		ModelAndView mv = new ModelAndView("forward:/manageCategories");
		category.setId(id);
		category.setName(name);
		category.setDescription(desc);
		
		
		//Before calling save method, check whether the category id already exist in db or not
		
		//if it is does not exist, then only call save method
		
		if (categoryDAO.getById(id) ==null)
		{
			//category already exist
			mv.addObject("message", "Category does not exist");
			return mv;
			
		}
		else  // actualy else is not required if return statement is there in if condition
		{
			categoryDAO.update(category);
			mv.addObject("message", "Category updated successfuly ");
		}
		
		List<Category> categoryList=categoryDAO.list();
		
		session.setAttribute("categoryList", categoryList);
		session.setAttribute("category", category);
		
	
		
		log.debug("End of the method update Categories");
		
		return mv;
		
	}
}