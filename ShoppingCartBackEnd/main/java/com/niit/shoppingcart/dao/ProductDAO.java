package com.niit.shoppingcart.dao;

import java.util.List;

import com.niit.shoppingcart.domain.Product;

public interface ProductDAO 
{
	public boolean saveOrUpdate(Product product);
	public boolean delete(String id);
	public List<Product> list();
	public Product getProductById(String id);
	public Product getProductByName(String name);
	public List<Product> getAllProductsByCategoryId(String categoryId);
	public List<Product> getAllProductsBySupplierId(String supplierId);
}
