package com.DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.entity.Category;
import com.entity.Product;

public class CategoryDAOImp implements CategoryDAO {

	private Connection conn;

	public CategoryDAOImp(Connection conn) {
		super();
		this.conn = conn;
	}
	
	//addCategory start
		public boolean addCategory(Category c) {

			boolean f = false;
			try {
                   
				String sql = "insert into category(cTitle,cDescription)values(?,?)";

				PreparedStatement ps = conn.prepareStatement(sql);
				
				ps.setString(1,c.getcTitle());
				ps.setString(2,c.getcDescription());
				
				
				int n=ps.executeUpdate();
				
				if(n==1) {
					f= true;
				}

				
				
				
			} catch (Exception e) {
				e.printStackTrace();
			}

			return f;
		}// addCategory end

		
	
	
	//getCategory
		
		@Override
		public List<Category>  getCategory() {
			
			
			List<Category> list=new ArrayList<Category>();
			Category c=null;
			try {
				
				String sql="select * from category";
				PreparedStatement pstmt=conn.prepareStatement(sql);
				
				ResultSet rs=pstmt.executeQuery();
				while(rs.next()) {
					
					c=new Category();
					c.setcID(rs.getInt(1));
					c.setcTitle(rs.getString(2));
					c.setcDescription(rs.getString(3));
					
					list.add(c);
					
				}
				
				
			}catch(Exception e) {
				e.printStackTrace();
			}
			
			
			
			return list;
		}
	
	
	
}
