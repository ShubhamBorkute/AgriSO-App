package com.DAO;

import java.util.List;

import com.entity.Category;
import com.entity.Product;

public interface CategoryDAO {

	
	public boolean addCategory(Category C);
	
	
	public List<Category> getCategory();
}
