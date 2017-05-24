package com.niit.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.niit.shoppingcart.dao.AddressDAO;
import com.niit.shoppingcart.domain.Address;

@Controller
public class AddressController 
{
	@Autowired AddressDAO addressDAO;
	
	@Autowired Address address;
	
	private static Logger log= LoggerFactory.getLogger(AddressController.class);
	
	//@RequestMapping("/addressform")
	public String address()
	{
		return "ShippingAddress";
	}
	
	//@RequestMapping("/addAddress")
	public ModelAndView addAddress(@RequestParam("line1") String addl1,@RequestParam("line2") String addl2,@RequestParam("city") String city,@RequestParam("pincode") String pin)
	{
		log.debug("Start of add address method");
		
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		String loggedInUserid = auth.getName();
		
		address.setUserid(loggedInUserid);
		address.setLine1(addl1);
		address.setLine2(addl2);
		address.setCity(city);
		address.setPincode(pin);
		addressDAO.save(address);
		ModelAndView mv=new ModelAndView("MyCart");
		return mv;
	}
}
