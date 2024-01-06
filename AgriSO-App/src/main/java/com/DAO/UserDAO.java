package com.DAO;

import java.util.List;

import com.entity.User;

public interface UserDAO {

	
	public boolean userRegister(User us);
	
	
	public User login(String userEmail, String userPassword);
	
	
	public List<User> getUser();
}
