package com.niit.shoppingcart;

import static org.junit.Assert.*;

import org.junit.Before;
import org.junit.BeforeClass;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import com.niit.shoppingcart.dao.UserDAO;
import com.niit.shoppingcart.domain.User;

public class UserDAOTestCase {

	@Autowired	static AnnotationConfigApplicationContext context;
	@Autowired static UserDAO userDAO;
	@Autowired static User user;
	
	@BeforeClass
	public static void initialize()
	{
		context = new AnnotationConfigApplicationContext();
		context.scan("com.niit");
		context.refresh();
		userDAO=(UserDAO) context.getBean("userDAO");
		user=(User) context.getBean("user");
	}
	
	@Test
	public void createUserTestCase()
	{
		user.setId("madhan@gmail.com");
		user.setName("madhan");
		user.setPassword("madhan");
		user.setContact("9790346253");
		user.setRole("user");
		boolean flag=userDAO.save(user);
		assertEquals("createUserTestCase", true,flag);
	}
	
	@Test
	public void updateUserTestCase()
	{
		user.setId("priya@gmail.com");
		user.setName("priya");
		user.setPassword("priya");
		user.setContact("9789947893");
		user.setRole("admin");
		boolean flag=userDAO.update(user);
		assertEquals("updateUserTestCase",true,flag);
	}
	
	@Test
	public void validateUserTestCase()
	{
		boolean flag=userDAO.validate("div@gmail.com", "divyaaaa");
		assertEquals(true,flag);
	}
	
	@Test
	public void getAllUsersTestCase()
	{
		int actualSize=userDAO.list().size();
		assertEquals(4,actualSize);
	}

}
