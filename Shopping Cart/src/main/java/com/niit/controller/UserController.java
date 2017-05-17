package com.niit.controller;

import java.util.Collection;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.niit.shoppingcart.dao.CategoryDAO;
import com.niit.shoppingcart.dao.ProductDAO;
import com.niit.shoppingcart.dao.UserDAO;
import com.niit.shoppingcart.domain.Category;
import com.niit.shoppingcart.domain.Product;
import com.niit.shoppingcart.domain.User;

@Controller
public class UserController {
	private static Logger log = LoggerFactory.getLogger(UserController.class);

	@Autowired
	UserDAO userDAO;
	@Autowired
	User user;
	@Autowired
	CategoryDAO categoryDAO;
	@Autowired
	Category category;
	@Autowired
	ProductDAO productDAO;

	/*// @RequestMapping("/validate")
	public ModelAndView login(@RequestParam("UserName") String id, @RequestParam("password") String password) {
			log.debug("Starting of the method login");
			log.info("You are logging in with id" + id);
			
			if (userDAO.validate(id, password) == true) {
				ModelAndView mv = new ModelAndView("/Home");
				log.debug("Valid credentials");

				user = userDAO.getById(id);

				// ${message} - to display in the Home.jsp
				mv.addObject("message", " Welcome " + user.getName());

				mv.addObject("categoryList", categoryDAO.list());
				mv.addObject("category", category);

				// check whether user is customer or admin

				if (user.getRole().equals("admin")) {
					log.debug("You are admin");
					mv.addObject("isAdmin", "true");
				} else {
					log.debug("You are customer");
					mv.addObject("isAdmin", "false");
				}
				return mv;

			} else {
				ModelAndView mv = new ModelAndView("/Login");
				log.debug("Invalid user");
				mv.addObject("message", "Invalid credentials..please try again.");
				log.debug("Ending of the method login");
				return mv;
			}

	}*/

	
	@RequestMapping("/Register")
	public String registerPage(Model model)
	{
		model.addAttribute("user", new User());
		return "Register";
	}
	
	
	@RequestMapping( value = "/registration",method = RequestMethod.POST)
	public String register(@ModelAttribute("user") User user)
	{
		//model.addAttribute("user", new User());
		log.debug("Starting register method");
		userDAO.save(user);
		return "Register";
	}

}
