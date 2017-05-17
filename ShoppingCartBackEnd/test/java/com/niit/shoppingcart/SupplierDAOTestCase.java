package com.niit.shoppingcart;

import static org.junit.Assert.*;

import org.junit.Before;
import org.junit.BeforeClass;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import com.niit.shoppingcart.dao.SupplierDAO;
import com.niit.shoppingcart.domain.Supplier;

public class SupplierDAOTestCase 
{
	@Autowired static AnnotationConfigApplicationContext context;
	@Autowired static SupplierDAO supplierDAO;
	@Autowired static Supplier supplier;
	
	@BeforeClass
	public static void initialize()
	{
		context=new AnnotationConfigApplicationContext();
		context.scan("com.niit");
		context.refresh();
		supplierDAO=(SupplierDAO) context.getBean("supplierDAO");
		supplier=(Supplier) context.getBean("supplier");
	}
	
	@Test
	public void createSupplierTestCase()
	{
		supplier.setId("SUP004");
		supplier.setName("National Book House");
		supplier.setAddress("Chennai");
		boolean flag=supplierDAO.save(supplier);
		assertEquals("createSupplierTestCase",true,flag);
	}
	
	@Test
	public void updateSupplierTestCase()
	{
		supplier.setId("SUP003");
		supplier.setName("Universal");
		supplier.setAddress("Pune");
		boolean flag=supplierDAO.update(supplier);
		assertEquals("updateSupplierTestCase",true,flag);
	}
	
	@Test
	public void getAllUsersTestCase()
	{
		int actualSize=supplierDAO.list().size();
		assertEquals(4,actualSize);
	}

}
