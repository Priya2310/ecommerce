package com.niit.shoppingcart.dao;

import java.util.List;

import com.niit.shoppingcart.domain.MyCart;

public interface MyCartDAO 
{
	public boolean save(MyCart myCart);

	public boolean update(MyCart myCart);
	
	public boolean delete(int id);
	
	public boolean deleteAllProductsInCart(String user_id);

	public List<MyCart> list(String userID);
	
	public double getTotalAmount(String userID);
	
	public MyCart getCartById(int id);	
		
}
