package com.niit.shoppingcart;

import static org.junit.Assert.*;


import org.junit.Before;
import org.junit.BeforeClass;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import com.niit.shoppingcart.dao.MyCartDAO;
import com.niit.shoppingcart.domain.MyCart;

public class MyCartDAOTestCase 
{
	@Autowired static AnnotationConfigApplicationContext context;
	@Autowired static MyCartDAO myCartDAO;
	@Autowired static MyCart myCart;
	
	@BeforeClass
	public static void initialize()
	{
		context= new AnnotationConfigApplicationContext();
		context.scan("com.niit");
		context.refresh();
		myCartDAO=(MyCartDAO) context.getBean("myCartDAO");
		myCart=(MyCart) context.getBean("myCart");
	}
	
	@Test
	public void createCartTestCase()
	{
		myCart.setId("CART001");
		myCart.setUser_id("div@gmail.com");
		myCart.setProduct_name("The Hunger Games");
		myCart.setPrice(275.00);
		myCart.setQuantity(1);
		boolean flag=myCartDAO.save(myCart);
		assertEquals("createCartTestCase",true,flag);
	}
	
	@Test
	public void updateCartTestCase()
	{
		myCart.setId("CART001");
		myCart.setUser_id("div@gmail.com");
		myCart.setProduct_name("The Hunger Games");
		myCart.setPrice(275.00);
		myCart.setQuantity(2);
		boolean flag=myCartDAO.update(myCart);
		assertEquals("updateCartTestCase",true,flag);
	}
	
	@Test
	public void getAllCartTestCase()
	{
		int actualSize=myCartDAO.list().size();
		assertEquals(2,actualSize);
	}
}
