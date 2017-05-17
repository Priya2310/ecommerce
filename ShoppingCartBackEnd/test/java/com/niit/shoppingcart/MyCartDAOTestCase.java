package com.niit.shoppingcart;

import static org.junit.Assert.*;

import java.util.Date;

import org.junit.Before;
import org.junit.BeforeClass;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import com.niit.shoppingcart.dao.MyCartDAO;
import com.niit.shoppingcart.dao.ProductDAO;
import com.niit.shoppingcart.domain.MyCart;
import com.niit.shoppingcart.domain.Product;

public class MyCartDAOTestCase 
{
	@Autowired static AnnotationConfigApplicationContext context;
	@Autowired static MyCartDAO myCartDAO;
	@Autowired static MyCart myCart;
	@Autowired static ProductDAO productDAO;
	@Autowired static Product product;
	
	@BeforeClass
	public static void initialize()
	{
		context= new AnnotationConfigApplicationContext();
		context.scan("com.niit");
		context.refresh();
		myCartDAO=(MyCartDAO) context.getBean("myCartDAO");
		myCart=(MyCart) context.getBean("myCart");
		productDAO=(ProductDAO) context.getBean("productDAO");
		product=(Product) context.getBean("product");
	}
	
	@Test
	public void createCartTestCase()
	{
		//myCart.setId(1);
		myCart.setUser_id("div@gmail.com");
		myCart.setProduct_name("Catching Fire");
		myCart.setPrice(product.getPrice());
		myCart.setStatus('N');
		myCart.setQuantity(1);
		myCart.setDate_added(new Date(System.currentTimeMillis()));
		assertEquals("createCartTestCase","true",myCartDAO.save(myCart));
	}
}
