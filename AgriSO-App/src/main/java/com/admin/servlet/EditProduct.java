package com.admin.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.DAO.ProductDAOImp;
import com.DB.DBConnect;
import com.entity.Product;

@WebServlet("/edit_product")
public class EditProduct  extends HttpServlet{

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		
		try {
			
			
			int pid=Integer.parseInt(req.getParameter("pid"));
			String pName = req.getParameter("pName");
			String pType = req.getParameter("pType");
			String pDescription = req.getParameter("pDescription");
			double pPrice = Double.parseDouble(req.getParameter("pPrice"));
			int pQuantity = Integer.parseInt(req.getParameter("pQuantity"));
			int pDiscount = Integer.parseInt(req.getParameter("pDiscount"));
			
			
			Product p=new Product();
			p.setpID(pid);
			p.setpName(pName);
			p.setpType(pType);
			p.setpDescription(pDescription);			
			p.setpPrice(pPrice);
			p.setpQuantity(pQuantity);
			p.setpDiscount(pDiscount);
			
			
			ProductDAOImp pdao=new ProductDAOImp(DBConnect.getConn());
			boolean f=pdao.updateEditProduct(p);
			
			
			 HttpSession session=req.getSession();
			if(f) {
				
				session.setAttribute("succMsg","Product Update Successfully");
				 resp.sendRedirect("admin/product.jsp");
				
			}else {
				
				
				 session.setAttribute("failMsg","Something Went Wrong...");
				  resp.sendRedirect("admin/product.jsp");
			}
			
			
		}catch(Exception e) {
			
			e.printStackTrace();
		}
		
		
		
		
	}

	
	
	
	
}
