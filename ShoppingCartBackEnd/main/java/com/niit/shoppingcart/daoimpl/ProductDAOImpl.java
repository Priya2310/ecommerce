package com.niit.shoppingcart.daoimpl;

import java.util.List;

import javax.transaction.Transactional;

import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.springframework.stereotype.Repository;

import com.niit.shoppingcart.dao.ProductDAO;
import com.niit.shoppingcart.domain.Product;

@Repository("productDAO")
@Transactional
public class ProductDAOImpl implements ProductDAO 
{
	private SessionFactory sessionFactory;
	
	public ProductDAOImpl(SessionFactory sessionFactory)
	{
		this.sessionFactory=sessionFactory;
	}

	public boolean saveOrUpdate(Product product) 
	{
		try
		{
			sessionFactory.getCurrentSession().saveOrUpdate(product);
		}
		catch(Exception e)
		{
			return false;
		}
		return true;
	}

	public List<Product> list() 
	{
		return sessionFactory.getCurrentSession().createQuery("from Product").list();
	}

	public boolean delete(String id) 
	{	
		try
		{
			sessionFactory.getCurrentSession().delete(getProductById(id));
		}
		catch(Exception e)
		{
			e.printStackTrace();
			return false;
		}
		return true;
	}

	public Product getProductById(String id) 
	{
		return sessionFactory.getCurrentSession().get(Product.class, id);
	}

	public Product getProductByName(String name) 
	{
		Query query=sessionFactory.getCurrentSession().createQuery("from Product where name=?");
		query.setString(0, name);
		return (Product) query.uniqueResult();
	}

	public List<Product> getAllProductsByCategoryId(String categoryId) 
	{
		Query query=sessionFactory.getCurrentSession().createQuery("from Product where category_id=?");
		query.setString(0, categoryId);
		return query.list();
	}

	public List<Product> getAllProductsBySupplierId(String supplierId) 
	{
		Query query=sessionFactory.getCurrentSession().createQuery("from Product where supplier_id=?");
		query.setString(0, supplierId);
		return query.list();
	
		
	}

}
