package com.niit.shoppingcart;

import static org.junit.Assert.*;

import org.junit.Before;
import org.junit.BeforeClass;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import com.niit.shoppingcart.dao.ProductDAO;
import com.niit.shoppingcart.domain.Product;

public class ProductDAOTestCase 
{
	
	@Autowired static AnnotationConfigApplicationContext context;
	@Autowired static ProductDAO productDAO;
	@Autowired static Product product;
	
	@BeforeClass
	public static void initialize()
	{
		context=new AnnotationConfigApplicationContext();
		context.scan("com.niit");
		context.refresh();
		productDAO=(ProductDAO) context.getBean("productDAO");
		product=(Product) context.getBean("product");
	}
	
	@Test
	public void createProductTestCase()
	{
		product.setId("BK004");
		product.setName("Catching Fire");
		product.setDescription("Author Name: Suzanne Collins Rating:4.0");
		product.setPrice(300.00);
		product.setCategoryID("CT001");
		product.setSupplierID("SUP003");
		boolean flag=productDAO.saveOrUpdate(product);
		assertEquals("createProductTestCase",true,flag);
	}
	
	@Test
	public void updateProductTestCase()
	{
		product.setId("BK002");
		product.setName("The Hunger Games");
		product.setDescription("Author Name: Suzanne Collins, Rating : 4.0");
		product.setPrice(275.00);
		product.setCategoryID("CT001");
		product.setSupplierID("SUP002");
		//boolean flag=productDAO.update(product);
		//assertEquals("updateProductTestCase",true,flag);
	}
	
	@Test
	public void getAllUsersTestCase()
	{
		int actualSize=productDAO.list().size();
		assertEquals(2,actualSize);
	}
}
