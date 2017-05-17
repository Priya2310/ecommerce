package com.niit.shoppingcart.daoimpl;

import java.util.List;

import javax.transaction.Transactional;

import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.springframework.stereotype.Repository;

import com.niit.shoppingcart.dao.SupplierDAO;
import com.niit.shoppingcart.domain.Supplier;

@Repository("supplierDAO")
@Transactional
public class SupplierDAOImpl implements SupplierDAO 
{
	private SessionFactory sessionFactory;
	
	private SupplierDAOImpl(SessionFactory sessionFactory)
	{
		this.sessionFactory=sessionFactory;
	}

	public boolean save(Supplier supplier) 
	{
		try
		{
			sessionFactory.getCurrentSession().save(supplier);
		}
		catch(Exception e)
		{
			e.printStackTrace();
			return false;
		}
		return true;
	}

	public boolean update(Supplier supplier) 
	{
		try
		{
			sessionFactory.getCurrentSession().update(supplier);
		}
		catch(Exception e)
		{
			e.printStackTrace();
			return false;
		}
		return true;
	}

	public List<Supplier> list() 
	{
		return sessionFactory.getCurrentSession().createQuery("from Supplier").list();
	}

	public Supplier getSupplierById(String id) 
	{
		return sessionFactory.getCurrentSession().get(Supplier.class, id);
	}

	public boolean delete(String id) 
	{
		try
		{
			sessionFactory.getCurrentSession().delete(getSupplierById(id));
		}
		catch(Exception e)
		{
			e.printStackTrace();
			return false;
		}
		return true;
	
	}

	public Supplier getSupplierByName(String name) 
	{
		Query query=sessionFactory.getCurrentSession().createQuery("from Supplier where name=?");
		query.setString(0, name);
		return (Supplier) query.uniqueResult();
	}

}
