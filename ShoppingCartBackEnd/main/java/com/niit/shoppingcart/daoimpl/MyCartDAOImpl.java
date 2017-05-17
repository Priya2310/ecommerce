package com.niit.shoppingcart.daoimpl;

import java.util.List;

import javax.transaction.Transactional;

import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.niit.shoppingcart.dao.MyCartDAO;
import com.niit.shoppingcart.domain.MyCart;

@Repository("myCartDAO")
@Transactional
public class MyCartDAOImpl implements MyCartDAO
{
	@Autowired
	private SessionFactory sessionFactory;

	public MyCartDAOImpl(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}

	public boolean save(MyCart myCart) {
		try {
			sessionFactory.getCurrentSession().save(myCart);
		} catch (Exception e) {
			// if any excpetion comes during execute of try block, catch will
			// excute
			e.printStackTrace();
			return false;
		}
		return true;
	}

	public boolean update(MyCart myCart) {
		try {
			sessionFactory.getCurrentSession().update(myCart);
		} catch (Exception e) {
			// if any excpetion comes during execute of try block, catch will
			// excute
			e.printStackTrace();
			return false;
		}
		return true;
	}

	public List<MyCart> list(String userID) {
		return  sessionFactory.getCurrentSession().createQuery("from MyCart where user_id=?").setString(0, userID).list();
	}

	public double getTotalAmount(String userID) {
		return (Double) sessionFactory.getCurrentSession().createQuery("select sum(price) from MyCart where user_Id=?").setString(0, userID).uniqueResult();
	}

	public boolean delete(int id) {
		// TODO Auto-generated method stub
		try {
			sessionFactory.getCurrentSession().delete(getCartById(id));
		} catch (Exception e) {
			e.printStackTrace();
			return false;
		}
		
		return true;
	}

	public MyCart getCartById(int id) {
		
		return 	(MyCart)  sessionFactory.getCurrentSession().createQuery("from MyCart where id = ?").setInteger(0, id).uniqueResult();
	}

	public boolean deleteAllProductsInCart(String user_id) {
		try {
			sessionFactory.getCurrentSession().createQuery("delete from MyCart where user_id = ?").setString(0, user_id).executeUpdate();
			
		} catch (Exception e) {
			e.printStackTrace();
			return false;
		}
		return true;
		
	}
}
