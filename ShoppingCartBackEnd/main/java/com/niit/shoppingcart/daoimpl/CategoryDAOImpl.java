package com.niit.shoppingcart.daoimpl;

import java.util.List;

import javax.transaction.Transactional;

import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.niit.shoppingcart.dao.CategoryDAO;
import com.niit.shoppingcart.domain.Category;


@Repository("categoryDAO")
@Transactional
public class CategoryDAOImpl implements CategoryDAO
{
	@Autowired
	private SessionFactory sessionFactory;
	
	private CategoryDAOImpl(SessionFactory sessionFactory)
	{
		this.sessionFactory=sessionFactory;
	}

	public boolean save(Category category) 
	{
		try
		{
			sessionFactory.getCurrentSession().save(category);
		}
		catch(Exception e)
		{
			e.printStackTrace();
			return false;
		}
		return true;
	}

	public boolean update(Category category) 
	{
		try
		{
			sessionFactory.getCurrentSession().update(category);
		}
		catch(Exception e)
		{
			e.printStackTrace();
			return false;
		}
		return true;
	}

	public List<Category> list() 
	{
		return sessionFactory.getCurrentSession().createQuery("from Category").list();
	}

	public boolean delete(String id) 
	{
		try
		{
			sessionFactory.getCurrentSession().delete(getById(id));
		}
		catch(Exception e)
		{
			e.printStackTrace();
			return false;
		}
		return true;
	}

	public Category getById(String id) 
	{
		return sessionFactory.getCurrentSession().get(Category.class, id);
	}

	public Category getByName(String name) 
	{
		Query query=sessionFactory.getCurrentSession().createQuery("from Category where name= ?");
		query.setString(0,name);
		return (Category) query.uniqueResult();
	}

}
