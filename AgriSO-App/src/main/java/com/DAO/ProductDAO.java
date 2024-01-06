 package com.DAO;

import java.util.List;

import com.entity.Product;

public interface ProductDAO  {

	public boolean addProduct(Product p);
	
	public List<Product> getProduct();
	
	public Product getProductByID(int pid);
	
	public boolean updateEditProduct(Product p);
	
	public boolean deleteProduct(int pid);
	
	public List<Product> getNewProduct();
}
