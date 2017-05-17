package com.niit.shoppingcart.daoimpl;

import javax.transaction.Transactional;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.niit.shoppingcart.dao.AddressDAO;
import com.niit.shoppingcart.domain.Address;


@Repository("addressDAO")
@Transactional
public class AddressDAOImpl implements AddressDAO
{
	@Autowired SessionFactory sessionFactory;
	
	public AddressDAOImpl(SessionFactory sessionFactory)
	{
		this.sessionFactory=sessionFactory;
	}

	public boolean save(Address address) 
	{
		try
		{
			sessionFactory.getCurrentSession().save(address);
		}
		catch (Exception e) 
		{
			e.printStackTrace();
			return false;
		}
		return true;
	}

}
