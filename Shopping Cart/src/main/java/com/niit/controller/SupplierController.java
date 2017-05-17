package com.niit.controller;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.niit.shoppingcart.dao.SupplierDAO;
import com.niit.shoppingcart.domain.Supplier;

@Controller
public class SupplierController
{

	private static Logger log=LoggerFactory.getLogger(Supplier.class);
	
	@Autowired SupplierDAO supplierDAO;
	@Autowired Supplier supplier;
	@Autowired HttpSession session;
	
	@RequestMapping("/manage_supplier_add")
	public ModelAndView createSupplier(@RequestParam("id") String id,@RequestParam("name") String name,@RequestParam("address") String address)
	{
		log.debug("Starting of createSupplier method");
		supplier.setId(id);
		supplier.setName(name);
		supplier.setAddress(address);
		
		ModelAndView mv= new ModelAndView("redirect:/manageSupplier");
		mv.addObject("isAdminClickedSupplier", "true");
		mv.addObject("isAdmin", "true");
	
		if(supplierDAO.getSupplierById(id)!=null)
		{
			mv.addObject("message", "Supplier already exists with id:"+id);
			return mv;
		}
		else
		{
			supplierDAO.save(supplier);
			mv.addObject("message", "Supplier created successfully");
		}
		session.setAttribute("supplierList", supplierDAO.list());
		session.setAttribute("supplier", supplier);
		
		log.debug("End of create Supplier method");
		return mv;
	}
	
	@RequestMapping("manage_supplier_delete/{id}")
	public ModelAndView deleteSupplier(@PathVariable("id") String id)
	{
		log.debug("Starting of delete category function");
		log.info("You are going to delete supplier with id: "+id);
		
		ModelAndView mv=new ModelAndView("redirect:/manageSupplier");
		if(supplierDAO.delete(id))
		{
			mv.addObject("message", "Supplier deleted successfully");
		}
		else
		{
			mv.addObject("message", "Cannot delete the supplier");
		}
		return mv;
	}
	
	@RequestMapping("/manage_supplier_edit/{id}")
	public ModelAndView editSupplier(@PathVariable("id") String id)
	{
		log.debug("Starting of edit method");
		log.info("You are editing the supplier "+id);
		supplier=supplierDAO.getSupplierById(id);
		ModelAndView mv= new ModelAndView("forward:/manageSupplier");
		mv.addObject("selectedValue", supplier);
		mv.addObject("isAdminClickedEdit", "true");
		log.debug("Ending of edit method");
		return mv;
	}
	
	@RequestMapping("/manage_supplier_edit/manage_supplier_update")
	public ModelAndView updateSupplier(@RequestParam("id") String id,@RequestParam("name") String name, @RequestParam("address") String address)
	{
		log.debug("Starting of update method");
		supplier.setId(id);
		supplier.setName(name);
		supplier.setAddress(address);
		
		ModelAndView mv=new ModelAndView("forward:/manageSupplier");
		mv.addObject("isAdminClickedSupplier", "true");
		mv.addObject("isAdmin", "true");
		
		if(supplierDAO.getSupplierById(id)==null)
		{
			mv.addObject("message", "Supplier does not exist");
			return mv;
		}
		else
		{
			supplierDAO.update(supplier);
			mv.addObject("message", "Supplier is updated successfully");
		}
		
		session.setAttribute("supplierList", supplierDAO.list());
		session.setAttribute("supplier", supplier);
		
		return mv;
	}
}
