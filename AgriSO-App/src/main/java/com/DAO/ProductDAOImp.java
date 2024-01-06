package com.DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.entity.Product;

public class ProductDAOImp implements ProductDAO {

	private Connection conn;

	public ProductDAOImp(Connection conn) {
		super();
		this.conn = conn;
	}

//addProduct start
	public boolean addProduct(Product p) {

		boolean f = false;
		try {

			String sql = "insert into product(pName,pType,pDescription,pPic,pPrice,pDiscount,pQuantity)values(?,?,?,?,?,?,?)";

			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setString(1, p.getpName());
			ps.setString(2, p.getpType());
			ps.setString(3, p.getpDescription());
			ps.setString(4, p.getpPic());
			ps.setDouble(5, p.getpPrice());
			ps.setInt(6, p.getpDiscount());
			ps.setInt(7, p.getpQuantity());

			int n = ps.executeUpdate();

			if (n == 1) {
				f = true;
			}

		} catch (Exception e) {
			e.printStackTrace();
		}

		return f;
	}// addProduct end

	// start getproduct method
	@Override
	public List<Product> getProduct() {

		List<Product> list = new ArrayList<Product>();
		Product p = null;
		try {

			String sql = "select * from product";
			PreparedStatement pstmt = conn.prepareStatement(sql);

			ResultSet rs = pstmt.executeQuery();
			while (rs.next()) {

				p = new Product();
				p.setpID(rs.getInt(1));
				p.setpName(rs.getString(2));
				p.setpType(rs.getString(3));
				p.setpPrice(rs.getDouble(4));
				p.setpDescription(rs.getString(5));
				p.setpDiscount(rs.getInt(6));
				p.setpQuantity(rs.getInt(7));
				p.setpPic(rs.getString(8));
				p.setcID(rs.getInt(9));

				list.add(p);

			}

		} catch (Exception e) {
			e.printStackTrace();
		}

		return list;
	}

	// end getproduct method

	// start getProductById
	@Override
	public Product getProductByID(int pid) {

		Product p = null;

		try {

			String sql = "select * from product where pid=?";
			PreparedStatement pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, pid);
			ResultSet rs = pstmt.executeQuery();
			while (rs.next()) {

				p = new Product();
				p.setpID(rs.getInt(1));
				p.setpName(rs.getString(2));
				p.setpType(rs.getString(3));
				p.setpPrice(rs.getDouble(4));
				p.setpDescription(rs.getString(5));
				p.setpDiscount(rs.getInt(6));
				p.setpQuantity(rs.getInt(7));
				p.setpPic(rs.getString(8));
			}

		} catch (Exception e) {
			e.printStackTrace();
		}

		return p;
	}
	// end getProductById

	// start updateEditProduct

	@Override
	public boolean updateEditProduct(Product p) {

		boolean f = false;

		try {

			String sql = "Update product set pName=?,pType=?,pDescription=?,pPrice=?,pQuantity=?,pDiscount=? where pid=?";

			PreparedStatement ps = conn.prepareStatement(sql);
			// ps.setInt(1, p.getpID());
			ps.setString(1, p.getpName());
			ps.setString(2, p.getpType());
			ps.setString(3, p.getpDescription());
			ps.setDouble(4, p.getpPrice());
			ps.setInt(5, p.getpDiscount());
			ps.setInt(6, p.getpQuantity());
			ps.setInt(7, p.getpID());

			int i = ps.executeUpdate();
			if (i == 1) {

				f = true;

			}

		} catch (Exception e) {

			e.printStackTrace();
		}

		return f;
	}

	// end updateEditProduct

	// start deleteProduct
	@Override
	public boolean deleteProduct(int pid) {
		boolean f = false;

		try {

			String sql = "delete from product where pid=? ";
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setInt(1, pid);
			int i = ps.executeUpdate();
			if (i == 1) {

				f = true;

			}

		} catch (Exception e) {
			e.printStackTrace();
		}

		return f;
	}

	

	// end deleteProduct

	//start getNewProduct
	@Override
	public List<Product> getNewProduct() {
		
		List<Product> list = new ArrayList<Product>();
		Product p = null;
		
		
		try {
			
			String sql = "select *from product";
			PreparedStatement pstmt = conn.prepareStatement(sql);
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		return list;
	}
	
	//end getNewProduct
	
}// class end
