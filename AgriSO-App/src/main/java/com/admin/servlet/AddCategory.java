package com.admin.servlet;

import java.io.File;
import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.DAO.CategoryDAOImp;
import com.DB.DBConnect;
import com.entity.Category;

@WebServlet("/addcategory")
public class AddCategory extends HttpServlet {
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		try {

			String cTitle = req.getParameter("cTitle");
			String cDescription = req.getParameter("cDescription");
			

			// System.out.println(cTitle+" "+cDescription);

			Category c = new Category(cTitle, cDescription);

			CategoryDAOImp cdao = new CategoryDAOImp(DBConnect.getConn());
			boolean f = cdao.addCategory(c);

			HttpSession session = req.getSession();
			
			  if(f) {
			  
			  
			  session.setAttribute("succMsg","Category Add Successfully");
			  resp.sendRedirect("admin/addcategory.jsp");
			  
			  
			  }else{
			  
			  session.setAttribute("failMsg","Something Went Wrong...");
			  resp.sendRedirect("admin/addcategory.jsp");
			  
			  }
			  
			 
			// System.out.println(c);

		} catch (Exception e) {
			e.printStackTrace();
		}

	}// method end

}
