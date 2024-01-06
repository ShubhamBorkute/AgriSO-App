package com.DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.entity.Product;
import com.entity.User;

public class UserDAOImp implements UserDAO {

	private Connection conn;

	public UserDAOImp(Connection conn) {
		super();
		this.conn = conn;
	}

	@Override
	public boolean userRegister(User us) {

		boolean f = false;

		try {
			String sql = "insert into user(userName,userEmail,userPassword,userPhone,userAddress)values(?,?,?,?,?) ";
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setString(1, us.getUserName());
			ps.setString(2, us.getUserEmail());
			ps.setString(3, us.getUserPassword());
			ps.setLong(4, us.getUserPhone());
			ps.setString(5, us.getUserAddress());

			int i = ps.executeUpdate();
			if (i == 1) {

				f = true;
			}

		} catch (Exception e) {
			e.printStackTrace();
		}

		return f;
	}

	public User login(String userEmail, String userPassword){
     
		User us=null;
		
     try {
    	 
    	 String sql="select * from user where userEmail=? and userPassword=?";
    	 PreparedStatement ps=conn.prepareStatement(sql);
    	 ps.setString(1, userEmail);
    	 ps.setString(2, userPassword);
    	 
    	 ResultSet rs=ps.executeQuery();
    	 while(rs.next()) {
    		 
    		  us=new User();
    		  us.setUserID(rs.getInt(1));
    		  us.setUserName(rs.getString(2));
    		  us.setUserEmail(rs.getString(3));
    		  us.setUserPassword(rs.getString(4));
    		  us.setUserPhone(rs.getLong(5));
    		  us.setUserAddress(rs.getString(6));
    		  
    	 }
    	 
     }catch(Exception e) {
    	 e.printStackTrace();
     }
     
     return us;
	  
	}

	
	
	//getuser
	@Override
	public List<User> getUser() {
		
		
		List<User> list = new ArrayList<User>();
		User u = null;
		try {

			String sql = "select * from user";
			PreparedStatement pstmt = conn.prepareStatement(sql);

			ResultSet rs = pstmt.executeQuery();
			while (rs.next()) {

				u = new User();
				u.setUserID(rs.getInt(1));
				u.setUserName(rs.getString(2));
				u.setUserEmail(rs.getString(3));
				u.setUserPassword(rs.getString(4));
				u.setUserPhone(rs.getLong(5));
				u.setUserAddress(rs.getString(6));

				list.add(u);

			}

		} catch (Exception e) {
			e.printStackTrace();
		}

		return list;
	}
		
		
		
		
		
	}

	
	
	
	
	
	

