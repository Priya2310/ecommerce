package com.niit.shoppingcart;

import static org.junit.Assert.*;

import org.junit.Before;
import org.junit.BeforeClass;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import com.niit.shoppingcart.dao.CategoryDAO;
import com.niit.shoppingcart.domain.Category;


public class CategoryDAOTestCase 
{
	@Autowired static AnnotationConfigApplicationContext context;
	@Autowired static CategoryDAO categoryDAO;
	@Autowired static Category category;
	
	@BeforeClass
	public static void initialize()
	{
		context=new AnnotationConfigApplicationContext();
		context.scan("com.niit");
		context.refresh();
		categoryDAO= (CategoryDAO) context.getBean("categoryDAO");
		category=(Category) context.getBean("category");
	}
	
	@Test
	public void createCategoryTestCase()
	{
		category.setId("CT004");
		category.setName("Educational");
		category.setDescription("Books for academic purposes");
		boolean flag = categoryDAO.save(category);
		assertEquals("createCategoryTestCase", true,flag);
	}
	
	@Test
	public void updateCategoryTestCase()
	{
		category.setId("CT002");
		category.setName("Classics");
		category.setDescription("Popular Novels of Old Times");
		boolean flag = categoryDAO.update(category);
		assertEquals("updateCategoryTestCase", true,flag);
	}
	
	@Test
	public void getAllCategoriesTestCase()
	{
		int actualSize=categoryDAO.list().size();
		assertEquals(3, actualSize);
	}
}
