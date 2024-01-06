package com.admin.servlet;

import java.io.File;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;

import com.DAO.ProductDAOImp;
import com.DB.DBConnect;
import com.entity.Product;

@WebServlet("/addproduct")
@MultipartConfig
public class AddProduct extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		try {

			String pName = req.getParameter("pName");
			String pType = req.getParameter("pType");
			String pDescription = req.getParameter("pDescription");
			double pPrice = Double.parseDouble(req.getParameter("pPrice"));
			int pQuantity = Integer.parseInt(req.getParameter("pQuantity"));
			int pDiscount = Integer.parseInt(req.getParameter("pDiscount"));

			/*
			 * String pPrice1=req.getParameter("pPrice"); 
			 * String pQuantity1=req.getParameter("pQuantity"); 
			 * String pDiscount1=req.getParameter("pDiscount"); 
			 * double double pPrice=Double.parseDouble(pPrice1); 
			 * int pQuantity=Integer.parseInt(pQuantity1); 
			 * int pDiscount=Integer.parseInt(pDiscount1);
			 */

			Part part = req.getPart("pPic");
			String filename = part.getSubmittedFileName();// to get filename

			Product p = new Product(pName, pType, pDescription, filename, pPrice, pQuantity, pDiscount);

			ProductDAOImp pdao = new ProductDAOImp(DBConnect.getConn());
			boolean f = pdao.addProduct(p);

			

			
			  HttpSession session=req.getSession();
			  
			  if(f) {
			  
				  String path = getServletContext().getRealPath("") + "product";

					File fo = new File(path);
					part.write(path + File.separator + filename);
			  
			  
			  session.setAttribute("succMsg","Product Add Successfully");
			 resp.sendRedirect("admin/addproduct.jsp");
			  
			 
			 }else{
			  
			  session.setAttribute("failMsg","Something Went Wrong...");
			  resp.sendRedirect("admin/addproduct.jsp");
			  
			  }
			 

			// System.out.println(p);

		} catch (Exception e) {
			e.printStackTrace();
		} // catch end

	}

}
