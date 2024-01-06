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

@WebServlet("/delete")
public class DeleteProduct extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		try {
			int pid=Integer.parseInt(req.getParameter("pid"));
			
			ProductDAOImp pdao=new ProductDAOImp(DBConnect.getConn());
			boolean f=pdao.deleteProduct(pid);
			
			HttpSession session=req.getSession();
			if(f) {
				
				session.setAttribute("succMsg","Product Delete");
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
